FROM ubuntu:artful
RUN mkdir /opt/entry
WORKDIR /opt/entry

RUN apt update -y
RUN apt install mariadb-server mariadb-client -y
RUN mysql -e "source ./shinobi-framework.sql" || true
#create entrypoint file
COPY docker-entrypoint.sh .
RUN chmod -f +x ./*.sh

EXPOSE 3306
ENTRYPOINT ["/opt/entry/docker-entrypoint.sh" ]