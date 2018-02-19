FROM ubuntu:artful

RUN apt update
RUN apt install mariadb-server mariadb-client
RUN mysql -e "source ./shinobi-framework.sql" || true

EXPOSE 3306