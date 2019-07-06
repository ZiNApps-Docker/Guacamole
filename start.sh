#!/bin/bash
#For Heroku
if [ -n "$PORT" ]
then
      sed -i "s|8080|$PORT|g" /usr/local/tomcat/conf/server.xml
fi

if [ -n "$MYSQL_HOSTNAME" ] || [ -n "$MYSQL_DATABASE" ] || [ -n "$MYSQL_USER" ] || [ -n "$MYSQL_PASSWORD" ]
then
      #cat /tmp/guacamole-auth-jdbc-$GUAC_VER/mysql/schema/*.sql | mysql -u $MYSQL_USER -h $MYSQL_HOSTNAME -p$MYSQL_PASSWORD $MYSQL_DATABASE      
      guacd -b 0.0.0.0
      /opt/guacamole/bin/start.sh
else
      echo "Set MySQL database info in this env varibles MYSQL_HOSTNAME, MYSQL_DATABASE, MYSQL_USER and MYSQL_PASSWORD"
fi