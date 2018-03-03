
This is a simple repository for automating the setup of edb under vagrant.

Please note the actual edb software (e.g. edb-as96-meta-9.6.2.7-2-linux-x64.tar.gz) needs to be downloaded separately from https://www.enterprisedb.com/software-downloads-postgres. You will need an edb account to download the software (and also again during the installer process), you need to the tarball in the project root direct i.e. with the Vagrantfile (this directory is cross-mounted as /vagrant):


```dave@ijsselstein:~/projects/vagrant-centos-edb$ ls
bash_profile.enterprisedb.append.txt  bashrc.append.txt  edb-as96-meta-9.6.2.7-2-linux-x64.tar.gz  provision.sh  README.md  Vagrantfile```


After this, running 'vagrant up' on my local machine (ijsselstein):

```
dave@ijsselstein:~/projects/vagrant-centos-edb$ vagrant up
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Checking if box 'pbarriscale/centos7-gui' is up to date...
...
real	13m17.709s
user	0m4.976s
sys	0m2.312s

```



Finally run 'vagrant ssh' and follow the edb installer in text-mode


```dave@ijsselstein:~/projects/vagrant-centos-edb$ vagrant ssh
Last login: Wed Oct 28 09:41:10 2015
[edb01:vagrant:~] # sudo -i
[edb01:root:~] # cd /tmp/edb-as*
[edb01:root:/tmp/edb-as96-meta-9.6.2.7-2-linux-x64] # ./edb-as96-meta-9.6.2.7-2-linux-x64.run --mode text
Language Selection

Please select the installation language
[1] English - English
[2] Japanese - 日本語
[3] Simplified Chinese - 简体中文
[4] Traditional Chinese - 繁体中文
[5] Korean - 한국어
Please choose an option [1] : 1
----------------------------------------------------------------------------
Welcome to the EDB Postgres Advanced Server Setup Wizard.

----------------------------------------------------------------------------
Please read the following License Agreement. You must accept the terms of this 
agreement before continuing with the installation.

Press [Enter] to continue:	 
Limited Use Software License Agreement
Version 2.9

IMPORTANT - READ CAREFULLY

This Limited Use Software License Agreement ("Agreement") is a legal document 
between you ("Customer") and EnterpriseDB Corporation ("EnterpriseDB"). 

...

Information which is legally required. 

Press [Enter] to continue:

Do you accept this license? [y/n]: 

Do you accept this license? [y/n]: 

Do you accept this license? [y/n]: 

Do you accept this license? [y/n]: y

----------------------------------------------------------------------------
User Authentication

This installation requires a registration with EnterpriseDB.com. Please enter 
your credentials below. If you do not have an account, Please create one now on 
https://www.enterprisedb.com/user-login-registration



Email []: <your edb account email>

Password : 

----------------------------------------------------------------------------
Please specify the directory where EDB Postgres Advanced Server will be 
installed.

Installation Directory [/opt/edb]: 

----------------------------------------------------------------------------
Select the components you want to install.

EDB Postgres Advanced Server [Y/n] :

EDB Postgres Connectors [Y/n] :

EDB Postgres Advanced Server Infinite Cache [Y/n] :

EDB Postgres Migration Toolkit [Y/n] :

EDB Postgres pgAdmin 4 [Y/n] :

EDB Postgres pgPool-II [Y/n] :

EDB Postgres pgPool-II Extensions [Y/n] :

EDB Postgres Advanced Server EDB*Plus [Y/n] :

EDB Postgres Advanced Server Slony Replication [Y/n] :

EDB Postgres pgBouncer [Y/n] :

Is the selection above correct? [Y/n]: 

----------------------------------------------------------------------------
Additional Directories

Please select a directory under which to store your data.

Data Directory [/opt/edb/as9.6/data]: 

Please select a directory under which to store your Write-Ahead Logs.

Write-Ahead Log (WAL) Directory [/opt/edb/as9.6/data/pg_xlog]: 

----------------------------------------------------------------------------
Configuration Mode

EDB Postgres Advanced Server always installs with database compatibility features for Oracle(R) and maintains full PostgreSQL compliance. Select your style preference for installation defaults and samples.

The Oracle configuration will cause the use of certain objects  (e.g. DATE data types, string operations, etc.) to produce results compatible with Oracle, create the same Oracle sample tables, and have the database match Oracle examples used in the documentation.

Configuration Mode

[1] Compatible with Oracle
[2] Compatible with PostgreSQL
Please choose an option [1] : 1

----------------------------------------------------------------------------
Please provide a password for the database superuser (enterprisedb). A locked 
Unix user account (enterprisedb) will be created if not present.

Password :
Retype Password :
----------------------------------------------------------------------------
Additional Configuration

Please select the port number the server should listen on.

Port [5444]: 

Select the locale to be used by the new database cluster.

Locale

[1] [Default locale]
[2] aa_DJ
[3] aa_DJ.iso88591
[4] aa_DJ.utf8
[5] aa_ER
[6] aa_ER@saaho
...
[767] zh_SG.gb2312
[768] zh_SG.utf8
[769] zh_TW.euctw
[770] zh_TW.utf8
[771] zu_ZA
[772] zu_ZA.iso88591
[773] zu_ZA.utf8
Please choose an option [1] : 



Install sample tables and procedures. [Y/n]: 


----------------------------------------------------------------------------
Dynatune Dynamic Tuning:
Server Utilization

Please select the type of server to determine the amount of system resources 
that may be utilized:



[1] Development (e.g. a developer's laptop)
[2] General Purpose (e.g. a web or application server)
[3] Dedicated (a server running only EDB Postgres)
Please choose an option [2] : 1

----------------------------------------------------------------------------
Dynatune Dynamic Tuning:
Workload Profile

Please select the type of workload this server will be used for:



[1] Transaction Processing (OLTP systems)
[2] General Purpose (OLTP and reporting workloads)
[3] Reporting (Complex queries or OLAP workloads)
Please choose an option [1] : 2

----------------------------------------------------------------------------
Advanced Configuration

----------------------------------------------------------------------------
PgBouncer Listening Port [6432]: 

----------------------------------------------------------------------------
Service Configuration



Autostart PgBouncer Service [Y/n]: n




Autostart pgAgent Service [Y/n]: n




Update Notification Service [Y/n]: n


The Update Notification Service informs, downloads and installs whenever 
security patches and other updates are available for your EDB Postgres Advanced 
Server installation.



----------------------------------------------------------------------------
Pre Installation Summary

Following settings will be used for installation:

Installation Directory: /opt/edb
Data Directory: /opt/edb/as9.6/data
WAL Directory: /opt/edb/as9.6/data/pg_xlog
Database Port: 5444
Database Superuser: enterprisedb
Operating System Account: enterprisedb
Database Service: edb-as-9.6
PgBouncer Listening Port: 6432

Press [Enter] to continue:

----------------------------------------------------------------------------
Setup is now ready to begin installing EDB Postgres Advanced Server on your 
computer.

Do you want to continue? [Y/n]: Y

----------------------------------------------------------------------------
Please wait while Setup installs EDB Postgres Advanced Server on your computer.

 Installing EDB Postgres Advanced Server
 0% ______________ 50% ______________ 100%
 ########################################
 Installing EDB Postgres Advanced Server ...
 Installing EDB Postgres Advanced Server pgAgent ...
 Installing EDB Postgres Connectors ...
 Installing EDB Postgres Migration Toolkit ...
 Installing EDB Postgres Advanced Server EDB*Plus ...
 Installing EDB Postgres Advanced Server Infinite Cache ...
 Installing EDB Postgres pgAdmin 4 ...
 Installing EDB Postgres Advanced Server Slony Replication ...
 Installing EDB Postgres pgPool-II ...
 Installing EDB Postgres pgPool-II Extensions ...
 Installing EDB Postgres pgBouncer ...
 Installing EDB Postgres StackBuilder Plus ...
 #
```

the vagrant installer has already added the require Postgres environment variables:

```
dave@ijsselstein:~/projects/vagrant-centos-edb$ cat bash_profile.enterprisedb.append.txt 
PATH=/opt/edb/as9.6/bin:$PATH:$HOME/.local/bin:$HOME/bin
PGDATA=/opt/edb/as9.6/data
PGPORT=5444
PGUSER=enterprisedb
export PATH PGDATA PGPORT PGUSER
```

so you should be able to check your access:

```
dave@ijsselstein:~/projects/vagrant-centos-edb$ vagrant ssh
Last login: Sat Mar  3 12:13:15 2018 from 10.0.2.2
[edb01:vagrant:~] # sudo su - postgres
su: user postgres does not exist
[edb01:vagrant:~] # sudo su - enterprisedb 
Last login: za mrt  3 12:56:23 GMT 2018 on pts/0
[edb01:enterprisedb:~] # which edb-psql 
/opt/edb/as9.6/bin/edb-psql
[edb01:enterprisedb:~] # edb-psql -U enterprisedb -d edb
psql.bin (9.6.2.7)
Type "help" for help.

edb=# \l
                                           List of databases
   Name    |    Owner     | Encoding |   Collate   |    Ctype    | ICU |       Access privileges       
-----------+--------------+----------+-------------+-------------+-----+-------------------------------
 edb       | enterprisedb | UTF8     | en_IE.UTF-8 | en_IE.UTF-8 |     | 
 postgres  | enterprisedb | UTF8     | en_IE.UTF-8 | en_IE.UTF-8 |     | 
 template0 | enterprisedb | UTF8     | en_IE.UTF-8 | en_IE.UTF-8 |     | =c/enterprisedb              +
           |              |          |             |             |     | enterprisedb=CTc/enterprisedb
 template1 | enterprisedb | UTF8     | en_IE.UTF-8 | en_IE.UTF-8 |     | =c/enterprisedb              +
           |              |          |             |             |     | enterprisedb=CTc/enterprisedb
(4 rows)

```










