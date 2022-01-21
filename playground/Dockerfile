# Build Lambda handler
FROM golang:1.17 AS lambda
WORKDIR /app
COPY lambda .

RUN go env -w GOPROXY=direct
RUN go mod download

RUN go build -o handler .

# Build Smithy CLI using latest JDK
FROM gradle:7-jdk17 AS cli
WORKDIR /build
COPY smithy .

# Generate all traits
RUN ./gradlew :smithy-aws-apigateway-traits:jar --stacktrace
RUN ./gradlew :smithy-aws-cloudformation-traits:jar --stacktrace
RUN ./gradlew :smithy-aws-iam-traits:jar --stacktrace
RUN ./gradlew :smithy-aws-traits:jar --stacktrace
RUN ./gradlew :smithy-mqtt-traits:jar --stacktrace
RUN ./gradlew :smithy-protocol-test-traits:jar --stacktrace

# Build the CLI
RUN ./gradlew :smithy-cli:runtime --stacktrace

# Run Lambda handler with Smithy CLI in container
FROM public.ecr.aws/amazonlinux/amazonlinux:2

WORKDIR /smithy
COPY --from=cli /build/smithy-cli/build/image/smithy-cli-linux-x86_64 .
RUN ln -s /smithy/bin/smithy /usr/local/bin/smithy

# Copy in all AWS traits
COPY --from=cli /build/smithy-aws-apigateway-traits/build/libs/*.jar /smithy/lib/traits/
COPY --from=cli /build/smithy-aws-cloudformation-traits/build/libs/*.jar /smithy/lib/traits/
COPY --from=cli /build/smithy-aws-iam-traits/build/libs/*.jar /smithy/lib/traits/
COPY --from=cli /build/smithy-aws-traits/build/libs/*.jar /smithy/lib/traits/
COPY --from=cli /build/smithy-mqtt-traits/build/libs/*.jar /smithy/lib/traits/
COPY --from=cli /build/smithy-protocol-test-traits/build/libs/*.jar /smithy/lib/traits/

# Build application class data sharing archive using smithy validate as the baseline.
RUN SMITHY_OPTS="-XX:DumpLoadedClassList=/smithy/lib/smithy.lst" \
    smithy validate
RUN SMITHY_OPTS="-Xshare:dump -XX:SharedArchiveFile=/smithy/lib/smithy.jsa -XX:SharedClassListFile=/smithy/lib/smithy.lst" \
    smithy validate

COPY --from=lambda /app/handler /usr/local/bin

# Fixes UTF-8 issues in stdout
RUN echo "LC_ALL=en_US.UTF-8" >> /etc/environment
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
RUN echo "LANG=en_US.UTF-8" > /etc/locale.conf
ENV JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF8

CMD "handler"