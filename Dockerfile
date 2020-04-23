FROM alpine

RUN apk add --no-cache \
  bash \
  bind-tools \
  curl \
  httpie \
  jq \
  openssh-client \
  --virtual .dev

CMD ["/bin/bash"]
