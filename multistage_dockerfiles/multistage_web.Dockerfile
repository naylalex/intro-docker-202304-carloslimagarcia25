FROM golang

COPY . .

RUN go build dispatcher.go

EXPOSE 80

CMD ["./dispatcher"]