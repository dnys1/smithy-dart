package main

import (
	"context"
	"errors"
	"fmt"
	"net/http"
	"os"
	"os/exec"
	"path/filepath"

	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
)

var (
	ErrInvalidIDL = errors.New("invalid IDL")
)

func HandleRequest(ctx context.Context, event *events.APIGatewayV2HTTPRequest) (*events.APIGatewayV2HTTPResponse, error) {
	idl := event.Body
	if idl == "" {
		return nil, fmt.Errorf("%w: empty", ErrInvalidIDL)
	}

	// Write IDL to local file
	tmp := os.TempDir()
	f, err := os.CreateTemp(tmp, "smithy")
	if err != nil {
		return nil, fmt.Errorf("error creating tmp file: %w", err)
	}
	_, err = f.WriteString(idl)
	if err != nil {
		return nil, fmt.Errorf("error writing tmp file: %w", err)
	}
	defer f.Close()

	// Validate the model
	cmd := exec.CommandContext(ctx, "smithy", "validate", filepath.Join(tmp, f.Name()))
	cmd.ExtraFiles = append(cmd.ExtraFiles, f)
	out, err := cmd.CombinedOutput()
	if err != nil {
		return &events.APIGatewayV2HTTPResponse{
			StatusCode: http.StatusInternalServerError,
			Body:       string(out),
		}, nil
	}
	if cmd.ProcessState.ExitCode() != 0 {
		return nil, fmt.Errorf("%w: %s", ErrInvalidIDL, out)
	}

	// AST-ify the model
	cmd = exec.CommandContext(ctx, "smithy", "ast", filepath.Join(tmp, f.Name()))
	cmd.ExtraFiles = append(cmd.ExtraFiles, f)
	out, err = cmd.CombinedOutput()
	if err != nil {
		return &events.APIGatewayV2HTTPResponse{
			StatusCode: http.StatusInternalServerError,
			Body:       string(out),
		}, nil
	}
	if cmd.ProcessState.ExitCode() != 0 {
		return nil, fmt.Errorf("%w: %s", ErrInvalidIDL, out)
	}

	return &events.APIGatewayV2HTTPResponse{
		StatusCode: http.StatusOK,
		Body:       string(out),
	}, nil
}

func main() {
	lambda.Start(HandleRequest)
}
