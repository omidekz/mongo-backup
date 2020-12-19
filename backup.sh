#!/bin/sh

BACKUP_NAME=$(date +\%Y.\%m.\%d.\%H\%M\%S)
echo "$(date) -> BACK NAME : ${BACKUP_NAME}"
mongodump --out /backup/${BACKUP_NAME} --uri="${MONGODB_URI}" ${EXTRA_CMD}
echo "==========================="