FROM golang:latest

WORKDIR /goworkspace

COPY go.mod .

RUN go mod download

COPY . .

RUN go build -o ./goworkspace .

EXPOSE 8080

CMD ["./goworkspace"]