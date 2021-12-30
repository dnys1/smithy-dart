FROM golang:1.17 AS builder
WORKDIR /app
COPY . .

RUN go env -w GOPROXY=direct
RUN go mod download

RUN go build -o handler .

FROM amazonlinux:2
WORKDIR /smithy
ADD ../../smithy/smithy-cli/build/image/smithy-cli-linux-x86_64 .
RUN ln -s /smithy/smithy /usr/local/bin/smithy

COPY --from=builder /app/handler /usr/local/bin

# Build application class data sharing archive using smithy validate as the baseline.
RUN SMITHY_OPTS="-XX:DumpLoadedClassList=/smithy/lib/smithy.lst" \
    /smithy/bin/smithy validate
RUN SMITHY_OPTS="-Xshare:dump -XX:SharedArchiveFile=/smithy/lib/smithy.jsa -XX:SharedClassListFile=/smithy/lib/smithy.lst" \
    /smithy/bin/smithy validate

CMD "handler"