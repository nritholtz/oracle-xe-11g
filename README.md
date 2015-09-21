On [Docker Hub](https://hub.docker.com/r/nritholtz/oracle-xe-11g)

Installation

`docker pull nritholtz/oracle-xe-11g`

Run with 1521 port opened: `docker run -d -p 49161:1521 nritholtz/oracle-xe-11g`

Connect database with following setting:

`hostname: localhost 
 port: 49161 
 sid: xe 
 username: oracle_user 
 password: oracle_user`

Password for SYS & SYSTEM: `oracle`