#!/bin/bash
# vuln.sh

NUM="$1"
if [[ "$NUM" -eq 1 ]]; then
  echo "Backup site"
  zip /var/backups/log1.zip /var/www/html/index.html

elif [[ "$NUM" -eq 2 ]]; then
  echo "Backup auditd"
  zip /var/backups/log2.zip /var/log/auditd.log
else
  echo "Number not bind, please use a good number, 1 or 2"
fi
