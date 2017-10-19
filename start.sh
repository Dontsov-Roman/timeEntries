#!/bin/bash
sh ./getGit.sh > lastDay.log
sh ./getGit.sh >> pm.log
sh ./pushGit.sh
