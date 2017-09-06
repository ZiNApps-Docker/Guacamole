#!/bin/bash
#This line is for heroku
#sed -i "s|8080|$PORT|g" /usr/local/tomcat/conf/server.xml

guacd -b 0.0.0.0
service mysql restart
/opt/guacamole/bin/start.sh
