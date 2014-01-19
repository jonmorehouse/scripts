Scripts
=====================

* scripts to be included in local path
* general scripts for utilities around machine and automation of tasks 

Load Exports Script
-------------------

Sample Exports File

```
# include another exports file
include .exports

BASE_URL=localhost
REDIS_PORT=6379
HOST=$(ec2-host)

```

Load your exports file into the current shell:

```
\. load_export_file $file
```

Create alias for load_export_file:

```
echo "alias load_export_file='\. load_export_file\'" >> .bashrc 

```

Login / Startup
---------------

* applescript doesn't work well with launchagent - I recommend saving any applescripts as applications and manually adding them under preferences->user login items
* login.sh is a script that does all the grunt work for setting up your machine. Be sure to symlink a plist file to ~/Library/LaunchAgents so that this is setup properly 

Compile Applescript to application:
```
osacompile -o ~/Desktop/dock-login.app dock.scpt
```

Example Plist File:
```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
   <key>Label</key>
   <string>com.user.loginscript</string>
   <key>Program</key>
   <string>$HOME/dotfiles/scripts/login.sh</string>
   <key>RunAtLoad</key>
   <true/>
</dict>
</plist>
```


Installation
------------

* export PATH:=`pwd` 




