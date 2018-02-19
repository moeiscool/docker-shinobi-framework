FROM ubuntu:artful

#make working directory
RUN mkdir /opt/sql
WORKDIR /opt/sql

#get apt list
RUN apt update -y

#MariaDB Install
COPY shinobi.sample.sqlite /opt/sql/shinobi.sample.sqlite
RUN apt install sqlite3 libsqlite3-dev -y

#create entrypoint file
COPY docker-entrypoint.sh /opt/sql/docker-entrypoint.sh
RUN chmod -f +x ./*.sh

#run docker
ENTRYPOINT ["/opt/sql/docker-entrypoint.sh" ]