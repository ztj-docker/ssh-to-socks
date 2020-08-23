FROM alpine:3.11.6

LABEL maintainer="Ztj <ztj1993@gmail.com>"

ENV HOST=127.0.0.1
ENV PORT=22
ENV USER=root
ENV PASS=123456

ADD ./entrypoint.sh /bin/entrypoint.sh

RUN apk add --no-cache sshpass openssh-client
RUN chmod +x /bin/entrypoint.sh

EXPOSE 1080

CMD ["/bin/entrypoint.sh"]
