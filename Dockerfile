FROM golang:1.13-alpine3.10 as build
RUN apk --no-cache add git
RUN go get github.com/Chaos-Monkey-Island/aquatone/blob/master/aquatone; exit 0
ENV GO111MODULE on
ENTRYPOINT ["aquatone"]
