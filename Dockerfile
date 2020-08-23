FROM alpine:3.11.6

LABEL maintainer="Ztj <ztj1993@gmail.com>"

ENV HOST=127.0.0.1
ENV PORT=22
ENV USER=root
ENV PASS=123456

RUN apk add --no-cache sshpass openssh-client

ADD entrypoint.sh /usr/bin/entrypoint.sh

EXPOSE 1080

CMD ["entrypoint.sh"]
