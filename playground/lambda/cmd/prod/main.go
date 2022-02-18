package main

import (
	"context"
	"net/http"

	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
	"github.com/dnys1/smithy_playground"
)

var (
	corsHeaders = map[string]string{
		"Access-Control-Allow-Origin": "*",
	}
)

func badRequest(err error) (*events.APIGatewayProxyResponse, error) {
	return &events.APIGatewayProxyResponse{
		StatusCode: http.StatusBadRequest,
		Headers:    corsHeaders,
		Body:       err.Error(),
	}, nil
}

func internalServerError(err error) (*events.APIGatewayProxyResponse, error) {
	return &events.APIGatewayProxyResponse{
		StatusCode: http.StatusInternalServerError,
		Headers:    corsHeaders,
		Body:       err.Error(),
	}, nil
}

func HandleRequest(ctx context.Context, event *events.APIGatewayProxyRequest) (*events.APIGatewayProxyResponse, error) {
	idl := event.Body

	ast, status, err := smithy_playground.HandleRequest(ctx, idl)
	if err != nil {
		switch status {
		case http.StatusBadRequest:
			return badRequest(err)
		case http.StatusInternalServerError:
			return internalServerError(err)
		default:
			return internalServerError(err)
		}
	}

	return &events.APIGatewayProxyResponse{
		StatusCode: http.StatusOK,
		Headers:    corsHeaders,
		Body:       ast,
	}, nil
}

func main() {
	lambda.Start(HandleRequest)
}
