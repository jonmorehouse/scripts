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



Installation
------------

* export PATH:=`pwd` 




