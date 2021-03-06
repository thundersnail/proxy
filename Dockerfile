FROM golang:1.8
RUN go get -v github.com/elazarl/goproxy

ENV IPTRACKER=0
ENV PORT=8080

WORKDIR /go/src/app
COPY . .

CMD go run main.go
