FROM alpine:3.12.3

RUN apk add --update \
    curl \
    && rm -rf /var/cache/apk/*

ENV TKN_VERSION=0.15.0
RUN curl -LO https://github.com/tektoncd/cli/releases/download/v${TKN_VERSION}/tkn_${TKN_VERSION}_Linux_x86_64.tar.gz && \
  tar xvzf tkn_0.15.0_Linux_x86_64.tar.gz -C /usr/local/bin/ tkn
