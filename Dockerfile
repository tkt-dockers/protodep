FROM golang:1.14 as builder

RUN go get github.com/stormcat24/protodep

FROM alpine:3.11 as protodep

COPY --from=builder /go/bin/protodep /usr/bin/protodep

ENTRYPOINT ["/usr/bin/protodep"]