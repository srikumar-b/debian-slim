FROM debian:9.5-slim

RUN apt-get update && \
    apt-get install -y curl jq procps git tar && \
    rm -rf /var/lib/apt/lists/* && \
    curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /bin/

ENV DOCKER_VERSION=18.06.0
RUN curl -O https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}-ce.tgz && \
  tar -xzf docker-${DOCKER_VERSION}-ce.tgz && \
  mv docker/docker /usr/local/bin/docker && \
  rm -rf ./docker
