# Dockerfile for Go 1.3
# http://golang.org/

FROM debian:jessie
MAINTAINER Ray Clanan <rclanan@utopianconcept.com>

RUN apt-get update && apt-get install --no-install-recommends -y \
  ca-certificates \
  curl \
  mercurial \
  bzr \
  git-core 

# go 1.3 tarball
RUN curl -s https://storage.googleapis.com/golang/go1.3.linux-amd64.tar.gz | tar -v -C /usr/local -xz

# env vars
ENV GOPATH /go
ENV GOROOT /usr/local/go
ENV PATH $PATH:/usr/local/go/bin:/go/bin
