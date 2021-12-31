package main

import (
	"bytes"
	"context"
	"encoding/json"
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
)

func badRequest(format string, a ...interface{}) (*events.APIGatewayProxyResponse, error) {
	return &events.APIGatewayProxyResponse{
		StatusCode: http.StatusBadRequest,
		Body:       fmt.Sprintf(format, a...),
	}, nil
}

func internalServerError(format string, a ...interface{}) (*events.APIGatewayProxyResponse, error) {
	return &events.APIGatewayProxyResponse{
		StatusCode: http.StatusInternalServerError,
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
	log.Printf("Successfully generated AST: %s\n", ast)

	response := struct {
		AST    string `json:"ast"`
		Errors string `json:"errors"`
	}{
		AST:    strings.TrimSpace(string(ast)),
		Errors: strings.TrimSpace(stderr.String()),
	}
	b, err := json.Marshal(response)
	if err != nil {
		return internalServerError("error marshalling response: %v", err)
	}

	return &events.APIGatewayProxyResponse{
		StatusCode: http.StatusOK,
		Body:       string(b),
	}, nil
}

func main() {
	lambda.Start(HandleRequest)
}
