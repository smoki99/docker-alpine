FROM alpine:latest
MAINTAINER Christian Müller 

COPY createCoreAlpine.sh /

ENV repositoryurl "http://dl-cdn.alpinelinux.org/alpine/v3.7"
ENV packages=alpine-base


RUN apk add --no-cache bash tzdata xz

VOLUME [ "/target" ]

ENTRYPOINT ["/createCoreAlpine.sh"]
