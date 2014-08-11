# Dockerfile for Go 1.3
# http://golang.org/

FROM rclanan/docker-debian
MAINTAINER Ray Clanan <rclanan@utopianconcept.com>

# go 1.3 tarball
RUN curl -s https://storage.googleapis.com/golang/go1.3.linux-amd64.tar.gz | tar -v -C /usr/local -xz

RUN mkdir -p /go/src

# env vars
ENV GOPATH /go
ENV GOROOT /usr/local/go
ENV PATH $PATH:/usr/local/go/bin:/go/bin
