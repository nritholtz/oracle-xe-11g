FROM wnameless/oracle-xe-11g

MAINTAINER Nathaniel Ritholtz <nritholtz@gmail.com>

ADD ./script.sql /tmp/script.sql

#Creates an oracle user with username oracle_user and password oracle_user
CMD sed -i -E "s/HOST = [^)]+/HOST = $HOSTNAME/g" /u01/app/oracle/product/11.2.0/xe/network/admin/listener.ora; \
  service oracle-xe start; \
  export ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe; \
  export PATH=$ORACLE_HOME/bin:$PATH; \
  export ORACLE_SID=XE; \
  cd /tmp; \
  echo exit | sqlplus system/oracle @script.sql; \
  /usr/sbin/sshd -D;