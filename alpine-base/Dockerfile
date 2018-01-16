FROM alpine:3.5
MAINTAINER Christian Mueller (http://github.com/smoki99/docker-alpine)

RUN apk add --update --no-cache curl 

COPY root /

ENTRYPOINT [ "/init" ]
CMD []