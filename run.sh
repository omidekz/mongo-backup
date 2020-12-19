#!/bin/sh
touch /log
BACKUP_CRON_CMD="${CRON_TIME_ENV} /backup.sh >> /log 2>&1"
echo "$BACKUP_CRON_CMD" >> /crontab.conf
/usr/bin/crontab /crontab.conf
/usr/sbin/crond -f -l 1
