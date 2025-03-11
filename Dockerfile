FROM golang:1.20-alpine

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN go build -o annas-archive-bot

CMD ["./annas-archive-bot"]
