FROM ubuntu:artful

#make working directory
RUN mkdir /opt/sql
WORKDIR /opt/sql

#get apt list
RUN apt update -y

#MariaDB Install
COPY shinobi.sample.sqlite .
RUN apt install sqlite3 libsqlite3-dev -y

#create entrypoint file
COPY docker-entrypoint.sh .
RUN chmod -f +x ./*.sh

#default SQL port
EXPOSE 3306

#run docker
ENTRYPOINT ["/opt/sql/docker-entrypoint.sh" ]