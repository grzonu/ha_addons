ARG BUILD_FROM
FROM $BUILD_FROM

# Setup base
RUN apk add --no-cache nginx nginx-mod-stream

COPY data/run.sh /
COPY data/nginx.conf /etc/

RUN chmod +x /run.sh

CMD [ "/run.sh" ]
