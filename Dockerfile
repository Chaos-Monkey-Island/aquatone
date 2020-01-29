FROM golang:1.13-alpine3.10 as build
RUN apk --no-cache add git
RUN wget github.com/Chaos-Monkey-Island/aquatone/blob/master/aquatone; exit 0
RUN chmod 777 aquatone
RUN ls -l 
RUN pwd
ENV GO111MODULE on
ENTRYPOINT ["aquatone"]
