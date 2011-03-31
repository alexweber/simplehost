#!/bin/bash

### CONFIGURATION ###

PROJECT_DIR='/home/alex/projects' # without trailing slash
HOST_SUFFIX='local' # without dot

### STOP EDITING HERE! ###

# Bootstrap
NAME=$1
FN="/etc/apache2/sites-available/$NAME"
DIR="$PROJECT_DIR/$NAME"

# Create project directory
# TODO check if directory exists
mkdir $DIR
chown alex:alex -R $DIR
chmod 777 -R $DIR

# Create VirtualHost
# TODO check if exists
touch $FN
echo "<VirtualHost *:80>
DocumentRoot $PROJECT_DIR/$NAME
ServerName $NAME.$HOST_SUFFIX
</VirtualHost>" > $FN

# Enable VirtualHost & reload Apache

a2ensite $NAME
service apache2 reload

# Add hosts entry

# TODO use separator for hosts
# TODO avoid duplication of existing hosts
echo "127.0.0.1 $NAME.local # automagically created by SimpleHost" >> /etc/hosts
echo "Host created!";
