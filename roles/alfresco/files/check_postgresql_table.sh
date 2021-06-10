#!/bin/bash
while true
do
    table_lines=`sudo echo "select count(*) from pg_tables where tablename='alf_node_properties';" |psql -t -U alfresco -h 127.0.0.1 -d alfresco`
    sleep 2
    if [ $table_lines -ge 1 ];then
        sleep 5
        break
    fi
done
