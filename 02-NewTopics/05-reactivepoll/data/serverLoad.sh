#!/bin/bash

MYDIR=/home/nathan/demo-shiny-day/02-NewTopics/05-reactivepoll/data
FILENAME=serverLoad.txt
TABLENAME=serverLoad

# Write load data to file
LOAD=`uptime | sed 's/.*load average: //' | awk -F\, '{print $1}'`
DATE=`date +%Y-%m-%d:%H:%M:%S`
echo "$DATE,$LOAD" >> $MYDIR/$FILENAME

# Write load data to database (requires linux packages: sqlite3 libsqlite3-dev)
#DBNAME=$MYDIR/$TABLENAME.db
#sqlite3 $DBNAME "create table if not exists $TABLENAME (id INTEGER PRIMARY KEY ASC, dte TEXT, Load REAL);"
#sqlite3 $DBNAME "insert into $TABLENAME (dte, Load) values ('$DATE','$LOAD');"
