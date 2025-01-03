FROM golang:1.23-alpine AS builder

WORKDIR /workspace
RUN apk update && apk add --no-cache make
COPY ../go.mod ../go.sum ./
RUN go mod download
COPY .. .
RUN make nri-injector


FROM alpine:latest

# Install required packages
RUN apk update && apk add --no-cache \
    vim

WORKDIR /
COPY --from=builder /workspace/bin/nri-injector ./
ENTRYPOINT ["/nri-injector"]
