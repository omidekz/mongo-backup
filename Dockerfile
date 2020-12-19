FROM alpine

COPY run.sh /run.sh
COPY /backup.sh /backup.sh
RUN chmod 755 /backup.sh /run.sh

ENV CRON_TIME_ENV="* 1 * * *"
ENV MONGODB_URI=""
ENV EXTRA_CMD=""

RUN apk add --no-cache mongodb-tools && \
    rm -rf /var/cache/apk/*

VOLUME [ "/backup" ]
CMD ["/run.sh"]
