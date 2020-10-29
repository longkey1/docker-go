FROM golang:latest

# Fix frontend not set error
ARG DEBIAN_FRONTEND=noninteractive

# Install gosu
RUN apt-get -y update && apt-get -y install gosu

# Make working directory
ENV WORK_DIR=/work
RUN mkdir ${WORK_DIR}

# Set Entrypoint
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

# Confirm go version
RUN go version
