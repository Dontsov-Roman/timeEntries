#!/bin/bash
redmineKey=$(jshon -e redmineKey -u < config.json)
host=$(jshon -e redmineHost -u < config.json)
entries=$(jshon -e redmineTimeEntries -u < config.json)
project_id=$(jshon -e redmineProjectId -u < config.json)
login=$(jshon -e redmineLogin -u < config.json)
password=$(jshon -e redminePassword -u < config.json)
contentLength=$(jshon -e contentLength -u < config.json)
addr=${host}${entries}
lastDay=$(cat lastDay.log | head -c $contentLength)
key='X-Redmine-API-Key: '${redmineKey}
data='{"time_entry":{"project_id":"'${project_id}'", "hours":8, "comments":"'${lastDay}'"}}'

echo $data>lastDay.json
echo $data
echo $addr

echo $(curl -v -H "Content-Type: application/json" -X POST --data-binary "@lastDay.json" -u $login:$password $addr)
