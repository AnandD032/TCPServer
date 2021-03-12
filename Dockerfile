FROM golang:latest

LABEL maintainer="AnandD032"

WORKDIR /app

COPY go.mod .

RUN go mod download

COPY . .

ENV PORT 8080

RUN go build

CMD ["./goworkspace"]