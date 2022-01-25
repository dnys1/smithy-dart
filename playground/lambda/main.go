package main

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

	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
)

var (
	ErrInvalidIDL = errors.New("invalid IDL")

	corsHeaders = map[string]string{
		"Access-Control-Allow-Origin": "*",
	}
)

func badRequest(format string, a ...interface{}) (*events.APIGatewayProxyResponse, error) {
	return &events.APIGatewayProxyResponse{
		StatusCode: http.StatusBadRequest,
		Headers:    corsHeaders,
		Body:       fmt.Sprintf(format, a...),
	}, nil
}

func internalServerError(format string, a ...interface{}) (*events.APIGatewayProxyResponse, error) {
	return &events.APIGatewayProxyResponse{
		StatusCode: http.StatusInternalServerError,
		Headers:    corsHeaders,
		Body:       fmt.Sprintf(format, a...),
	}, nil
}

func HandleRequest(ctx context.Context, event *events.APIGatewayProxyRequest) (*events.APIGatewayProxyResponse, error) {
	idl := event.Body
	if idl == "" {
		return badRequest("%v: empty", ErrInvalidIDL)
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
	cmd := exec.CommandContext(ctx, "smithy", "ast", f.Name())
	cmd.Stderr = stderr
	ast, err := cmd.Output()
	if err != nil {
		return internalServerError("error generating model: %v\n%s", err, ast)
	}
	if cmd.ProcessState.ExitCode() != 0 {
		return badRequest("%v: %s", ErrInvalidIDL, ast)
	}
	if err := strings.TrimSpace(stderr.String()); err != "" {
		// Trim off "Picked up JAVA_TOOL_OPTIONS" line which gets printed to stderr for
		// some reason.
		if strings.HasPrefix(err, "Picked up") {
			split := strings.SplitAfterN(err, "\n", 2)
			if len(split) > 1 {
				err = split[1]
			} else {
				err = ""
			}
			err = strings.TrimSpace(err)
		}

		if err != "" {
			return badRequest("%v: %s", ErrInvalidIDL, err)
		}
	}
	log.Printf("Successfully generated AST: %s\n", ast)

	return &events.APIGatewayProxyResponse{
		StatusCode: http.StatusOK,
		Headers:    corsHeaders,
		Body:       string(ast),
	}, nil
}

func main() {
	lambda.Start(HandleRequest)
}
