#! /bin/bash
if [ ! -f /home/vagrant/already-installed-flag ]
then
  echo "ADD EXTRA ALIAS VIA .bashrc"
  cat /vagrant/bashrc.append.txt >> /home/vagrant/.bashrc
  yum install epel-release-latest-7.noarch.rpm
  #echo "GENERAL YUM UPDATE"
  #yum -y update
  #echo "INSTALL GIT"
  #yum -y install git
  #echo "INSTALL VIM"
  #yum -y install vim
  #echo "INSTALL TREE"
  #yum -y install tree
  #echo "INSTALL UNZIP"
  #yum  -y install unzip curl wget

  
  useradd -p edb enterprisedb
  cp edb-as96-meta-9.6.2.7-2-linux-x64.tar.gz /tmp
  cd /tmp
  tar -zxvf edb-as96-meta-9.6.2.7-2-linux-x64.tar.gz 

  #yum -y update
  #echo "install X11 server"
  #yum -y groupinstall "X Window System"
  #yum -y install xorg-x11-apps   #useful for testing x11 setup is OK
  #yum -y install libXScrnSaver   #work around for : wish8.5: error while loading shared libraries: libXss.so.1
  #echo "install postgresql-server"
  #yum -y localinstall http://yum.postgresql.org/9.4/redhat/rhel-6-x86_64/pgdg-centos94-9.4-1.noarch.rpm
  #yum -y install postgresql94-server postgresql94-contrib
  #service postgresql-9.4 initdb
  #service postgresql-9.4 start
  #echo "set postgres to start on boot"
  #chkconfig postgresql-9.4 on
  #echo "install postgresql-contrib"
  #yum -y install postgresql-contrib
  #yum install xorg-x11-apps.x86_64



else
  echo "already installed flag set : /home/vagrant/already-installed-flag"
fi


