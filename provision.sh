#! /bin/bash
if [ ! -f /home/vagrant/already-installed-flag ]
then
  echo "GENERAL YUM UPDATE"
  yum -y update
  echo "ADD EXTRA ALIAS VIA .bashrc"
  yum install epel-release-latest-7.noarch.rpm
  echo "INSTALL GIT"
  yum -y install git
  echo "INSTALL VIM"
  yum -y install vim
  echo "INSTALL TREE"
  yum -y install tree
  echo "INSTALL UNZIP"
  yum  -y install unzip curl wget
  
  useradd -p edb enterprisedb
  cat /vagrant/bashrc.append.txt >> /home/vagrant/.bashrc
  cat /vagrant/bashrc.append.txt >> /root/.bashrc 
  cat /vagrant/bashrc.append.txt >> /home/enterprisedb/.bashrc 
  cat /vagrant/bash_profile.enterprisedb.append.txt >> /home/enterprisedb/.bash_profile
  cp  /vagrant/edb-as* /tmp
  cd  /tmp
  tar -zxvf edb-as*

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


