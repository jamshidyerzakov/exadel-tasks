FROM golang:1.16-alpine as builder

WORKDIR /app

COPY . .
RUN go build -o /go-app

FROM alpine
COPY --from=builder go-app .
CMD ["/go-app"]
