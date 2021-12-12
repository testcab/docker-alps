ARG VERSION=latest

FROM alpine:$VERSION

WORKDIR /root

RUN mkdir .ssh && chmod 700 .ssh

RUN apk add --no-cache \
  bash \
  bind-tools \
  curl \
  httpie \
  jq \
  mariadb-client \
  mysql-client \
  openssh-client \
  tini \
  --virtual .dev

RUN curl -L -o /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl \
  && chmod +x /usr/local/bin/kubectl

CMD ["/bin/bash"]
