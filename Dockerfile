FROM alpine:3.24.1

ARG TARGETPLATFORM

RUN set -xe \
    && apk add --no-cache git

COPY $TARGETPLATFORM/spacectl /usr/local/bin/spacectl
ENTRYPOINT ["/usr/local/bin/spacectl"]
