FROM alpine

RUN apk add --no-cache \
  bind-tools \
  curl \
  jq \
  openssh-client \
  --virtual .dev
