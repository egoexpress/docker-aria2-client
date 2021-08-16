FROM alpine

LABEL maintainer="Bjoern Stierand <bjoern-github@innovention.de>"

ARG ARIA2_VERSION=1.35.0-r2

RUN apk upgrade \
  && apk add aria2=$ARIA2_VERSION \
  && adduser --uid 1000 --ingroup users --disabled-password aria2
USER aria2
RUN mkdir -p /home/aria2/.cache/aria2
ENTRYPOINT ["/usr/bin/aria2c","-d","/downloads"]
