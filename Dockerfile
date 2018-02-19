FROM ubuntu:artful

RUN apt update -y
RUN apt install mariadb-server mariadb-client -y
RUN mysql -e "source ./shinobi-framework.sql" || true

EXPOSE 3306
ENTRYPOINT ["./docker-entrypoint.sh" ]