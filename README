Scripts
=======

A collection of scripts I've built to solve daily problems. 

Installation
------------

```
git clone https://github.com/jonmorehouse/scripts ~/scripts
export PATH:=~/scripts

```

Brew Backup
-----------

* backup your brew installation in one command

```
  brew_backup.sh > ~/Dotfiles/Brewfile
  
  cd ~/Dotfiles && brew bundle
```

Brew Backup
-----------

Backup your local brew installation. Creates a brewable file with all your formulae, taps and even config settings

Load Env File
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
\. load_env_file $file
```

Create alias for load_env_file:

```
echo "alias load_env_file='\. load_env_file\'" >> .bashrc 

```

Login / Startup
---------------

* applescript doesn't work well with launchagent - I recommend saving any applescripts as applications and manually adding them under preferences->user login items
* login.sh is a script that does all the grunt work for setting up your machine. Be sure to symlink a plist file to ~/Library/LaunchAgents so that this is setup properly 
* still doesn't work nice - the dock is not loaded until later -- which becomes an issue

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

