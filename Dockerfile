FROM golang:1.17-alpine

ARG PORT

WORKDIR /app

COPY main.go .
COPY go.mod .
COPY go.sum .

RUN go mod download
RUN go build -o app-server

ENV PORT=$PORT

EXPOSE $PORT