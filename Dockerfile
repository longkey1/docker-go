FROM golang:latest

# Fix frontend not set error
ARG DEBIAN_FRONTEND=noninteractive

# Install deploy tools
RUN apt-get -y update && apt-get -y install zip

# Confirm go version
RUN go version

# Install dep
RUN go get -u github.com/golang/dep/cmd/dep

# Install glide
RUN go get -u github.com/Masterminds/glide

# Install gox
RUN go get -u github.com/mitchellh/gox

# Install ghr
RUN go get -u github.com/tcnksm/ghr

# Install glr
RUN go get -u gitlab.com/longkey1/glr

# Make working directory
RUN mkdir /work
