#!/bin/bash
while true; do
docker exec mysql_master sh -c "export MYSQL_PWD=111; mysql -u root mydb -e 'insert into code values ($RANDOM,$RANDOM,$RANDOM), ($RANDOM,$RANDOM,$RANDOM)'"
docker exec mysql_master sh -c "export MYSQL_PWD=111; mysql -u root mydb -e 'insert into code (first, middle, last) values ($(date +%s+$RANDOM),$(date +%s+$RANDOM),$(date +%s+$RANDOM))'"
sleep 2
echo "$(date +%s)"
done
