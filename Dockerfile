FROM alpine:latest
MAINTAINER vicky.ronnen@denkzelf.nl
#This is a simple sftp server only intended for testing
#Don't use this for production

RUN echo "@community http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    apk add --no-cache bash shadow@community openssh-server openssh-sftp-server openssh-client
EXPOSE 22

COPY files/entrypoint /
#COPY files/users /tmp
ENTRYPOINT ["/entrypoint"]

