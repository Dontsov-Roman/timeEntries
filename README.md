# timeEntries

### Before start
run the next command:
```
sh ./init.sh
```
This command will add a git alias hist-nograph and install for ubuntu json-parser "jshon"

### After init.sh
You need to update config.json, enter required params:
```json
{
	"user":"Dontsov",
	"project":"/home/dilberd/iot/dashboard",
	"redmineLogin":"",
	"redminePassword":"",
	"redmineKey":"",
	"redmineHost":"https://pm.ossystem.ua",
	"redmineTimeEntries":"/time_entries.xml",
	"redmineProjectId":""
}
```
### Then
You can run a scripts:
```
sh ./getGit.sh
sh ./pushGit.sh
sh ./start.sh
```

### CRON
run `crontab -e` and enter next:
```
55 17 * * * cd ~/getGit && sh ./start.sh
```
This script will run all commands and create new "time entries in redmine"
