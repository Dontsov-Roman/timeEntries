#!/bin/bash
dt=$(date -I)
project=$(jshon -e project -u < config.json)
user=$(jshon -e user -u < config.json)
echo $dt
cd $project && git hist-nograph | grep $user | grep $dt | cut -d '|' -f 2 | cut -d '[' -f 1
