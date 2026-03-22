#!/bin/bash
set -e

# droits /var/backups
chown -R www-data:www-data /var/backups/

# flask
mkdir -p /var/www/app
cd /var/www/app
chmod +x app.py vulnapp.wsgi

# droits /var/www/html
cd /var/www/html
chown -R root:root /var/www/html/
chmod -R 755 /var/www/html/

# droits /var/www/app
chown -R root:root /var/www/app/
chmod -R 755 /var/www/app/

# vuln script
cd /opt
chmod +x script.sh
chown -R root:root /opt/
chmod -R 755 /opt/

if ! getent group webreadonly >/dev/null; then
    groupadd webreadonly
fi

usermod -aG webreadonly www-data
chown -R root:webreadonly /opt
chmod -R 750 /opt

exec "$@"
