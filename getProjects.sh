#!/bin/bash
host=$(jshon -e redmineHost -u < config.json)
login=$(jshon -e redmineLogin -u < config.json)
password=$(jshon -e redminePassword -u < config.json)
addrProject=${host}'/projects.xml'
echo $(curl -v -X GET -u $login:$password $addrProject)

