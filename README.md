# Scripts

> A collection of scripts I've built to solve daily problems. 

### Usage

~~~ sh
$ git clone https://github.com/jonmorehouse/scripts ~/scripts

# add scripts to your path
echo "export PATH=~/scripts:$PATH" >> ~/.bashrc
~~~

Brew Backup
-----------

* backup your brew installation in one command

~~~ sh
$ brew_backup.sh > ~/Dotfiles/Brewfile
  
$ cd ~/Dotfiles && brew bundle
~~~

## Load Env File

Automatically set environment variables

~~~ sh
# .env
# include another exports file
include .exports

BASE_URL=localhost
REDIS_PORT=6379
HOST=$(ec2-host)
~~~

load environment into current shell environment
~~~ sh
$ \. load_env_file some_env_file
~~~

## Login 

remove trash/finder icons at bootup


## gpg-bootstrap

set passphrases for an ssh/gpg key safely

~~~ sh
# set your gpg keyring in the environment
$ GPG_KEYGRIP=$(gpg --fingerprint --fingerprint morehousej09@gmail.com | grep fingerprint | tail -1 | cut -d= -f2 | sed -e 's/ //g')

# you can grab keyrings for ssh keys that have been authenticated with gpg-agent with gpg-connect-agent
$ gpg-connect-agent
$ KEYINFO --ssh-list # prints out key ring

# running gpg-bootstrap will let you set the passphrases for these keys for the current gpg-agent daemon
bootstrap-gpg
~~~

## alias generator

create namespaced aliases programmatically

~~~ sh

$ ls ~/dotfiles
    README.md
    bin/
    git-template/
    scripts/
    src/
    symlinks/

$ alias_generator.sh ~/dotfiles "d"

# you now have namespaced aliases available
$ d-bin
$ d-git-template
$ d-src

~~~


