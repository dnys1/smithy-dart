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

RUN ./gradlew --no-daemon :smithy-cli:runtime --stacktrace

# Run Lambda handler with Smithy CLI in container
FROM public.ecr.aws/amazonlinux/amazonlinux:2

WORKDIR /smithy
COPY --from=cli /build/smithy-cli/build/image/smithy-cli-linux-x86_64 .
RUN ln -s /smithy/bin/smithy /usr/local/bin/smithy

# Build application class data sharing archive using smithy validate as the baseline.
RUN SMITHY_OPTS="-XX:DumpLoadedClassList=/smithy/lib/smithy.lst" \
    smithy validate
RUN SMITHY_OPTS="-Xshare:dump -XX:SharedArchiveFile=/smithy/lib/smithy.jsa -XX:SharedClassListFile=/smithy/lib/smithy.lst" \
    smithy validate

COPY --from=lambda /app/handler /usr/local/bin

CMD "handler"