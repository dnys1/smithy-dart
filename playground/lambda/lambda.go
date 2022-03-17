package smithy_playground

import (
	"bytes"
	"context"
	"errors"
	"fmt"
	"log"
	"net/http"
	"os"
	"os/exec"
	"strings"
)

var (
	ErrInvalidIDL = errors.New("invalid IDL")

	CorsHeaders = map[string]string{
		"Access-Control-Allow-Origin": "*",
	}
)

func badRequest(format string, a ...interface{}) (string, int, error) {
	err := fmt.Errorf(format, a...)
	log.Println(err)
	return "", http.StatusBadRequest, err
}

func internalServerError(format string, a ...interface{}) (string, int, error) {
	err := fmt.Errorf(format, a...)
	log.Println(err)
	return "", http.StatusInternalServerError, err
}

func HandleRequest(ctx context.Context, idl string) (string, int, error) {
	if idl == "" {
		return badRequest("%w: empty", ErrInvalidIDL)
	}
	log.Printf("Got IDL: %s\n", idl)

	// Write IDL to local file
	f, err := os.CreateTemp(os.TempDir(), "*.smithy")
	if err != nil {
		return internalServerError("error creating tmp file: %v", err)
	}
	_, err = f.WriteString(idl)
	if err != nil {
		return internalServerError("error writing tmp file: %v", err)
	}
	err = f.Close()
	if err != nil {
		return internalServerError("error closing file: %v", err)
	}
	log.Printf("Wrote IDL to file: %s", f.Name())

	// AST-ify the model
	stderr := new(bytes.Buffer)
	cmd := exec.CommandContext(
		ctx,
		"smithy",
		"ast",
		"-d",
		"/smithy/lib/traits",
		f.Name(),
	)
	cmd.Stderr = stderr
	ast, err := cmd.Output()
	processedStdErr := processStdErr(stderr.String())
	if err != nil {
		return internalServerError("error generating model: %v\n%s", err, processedStdErr)
	}
	if cmd.ProcessState.ExitCode() != 0 {
		return badRequest("%v: %s", ErrInvalidIDL, processedStdErr)
	}
	log.Printf("Successfully generated AST: %s\n", ast)

	return string(ast), http.StatusOK, nil
}

func processStdErr(stderr string) string {
	stderr = strings.TrimSpace(stderr)

	// Trim off "Picked up JAVA_TOOL_OPTIONS" line which gets printed to stderr for
	// some reason.
	if strings.HasPrefix(stderr, "Picked up") {
		split := strings.SplitAfterN(stderr, "\n", 2)
		if len(split) > 1 {
			stderr = split[1]
		} else {
			stderr = ""
		}
		stderr = strings.TrimSpace(stderr)
	}

	return stderr
}
