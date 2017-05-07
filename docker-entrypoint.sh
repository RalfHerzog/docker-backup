#!/bin/bash

set -e

if [ ! -d "/root/Backup" ]
then
  echo "Backup directory not mounted. Please mount /root/Backup"
  exit 1
fi

if [ ! -d "/root/data" ]
then
  echo "Data directory not mounted. Please mount /root/data"
  exit 1
fi

if [ -z $BACKUP_TRIGGER ]
then
  echo "No backup trigger defined. Please set BACKUP_TRIGGER environment \
variable and mount /root/Backup"
  exit 1
else
  backup perform --trigger "${BACKUP_TRIGGER}"
fi
