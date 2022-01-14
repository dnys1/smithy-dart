// Code generated by smithy-kotlin-codegen. DO NOT EDIT!

package com.test.transform

import aws.sdk.kotlin.runtime.UnknownServiceErrorException
import aws.sdk.kotlin.runtime.http.setAseErrorMetadata
import aws.sdk.kotlin.runtime.http.withPayload
import aws.sdk.kotlin.runtime.protocol.json.RestJsonErrorDeserializer
import aws.smithy.kotlin.runtime.client.ExecutionContext
import aws.smithy.kotlin.runtime.http.isSuccess
import aws.smithy.kotlin.runtime.http.operation.HttpDeserialize
import aws.smithy.kotlin.runtime.http.readAll
import aws.smithy.kotlin.runtime.http.response.HttpResponse
import com.test.model.ConstantQueryStringResponse
import com.test.model.ExampleException


internal class ConstantQueryStringOperationDeserializer: HttpDeserialize<ConstantQueryStringResponse> {

    override suspend fun deserialize(context: ExecutionContext, response: HttpResponse): ConstantQueryStringResponse {
        if (!response.status.isSuccess()) {
            throwConstantQueryStringError(context, response)
        }
        val builder = ConstantQueryStringResponse.Builder()

        return builder.build()
    }
}

private suspend fun throwConstantQueryStringError(context: ExecutionContext, response: HttpResponse): kotlin.Nothing {
    val payload = response.body.readAll()
    val wrappedResponse = response.withPayload(payload)

    val errorDetails = try {
        RestJsonErrorDeserializer.deserialize(response.headers, payload)
    } catch (ex: Exception) {
        throw UnknownServiceErrorException("failed to parse response as restJson1 error", ex).also {
            setAseErrorMetadata(it, wrappedResponse, null)
        }
    }

    throw ExampleException(errorDetails.message)
}
