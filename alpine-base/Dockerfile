FROM smoki99/alpine-core:latest
MAINTAINER Christian Mueller (http://github.com/smoki99/docker-alpine)

ENV GO_DNSMASQ_VERSION=1.0.7

RUN apk add --update --no-cache curl bash libcap && \
    curl -sSL https://github.com/janeczku/go-dnsmasq/releases/download/${GO_DNSMASQ_VERSION}/go-dnsmasq-min_linux-amd64 -o /bin/go-dnsmasq && \
    chmod +x /bin/go-dnsmasq && \
    # apk del curl && \
    # Install dnsmasq
    addgroup go-dnsmasq && \
    adduser -D -g "" -s /bin/sh -G go-dnsmasq go-dnsmasq && \
    setcap CAP_NET_BIND_SERVICE=+eip /bin/go-dnsmasq


COPY root /

ENTRYPOINT [/init.sh]
CMD []