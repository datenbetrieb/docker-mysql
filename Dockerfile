# DOCKER-VERSION 1.0.0
FROM datenbetrieb/debian:jessie
MAINTAINER Peter Niederlag "peter.niederlag@datenbetrieb.de"

RUN apt-get update && \
    apt-get install -y mysql-server && \
    rm -rf /var/lib/apt/lists/*
RUN echo "@todo, innodb_per_file, redirect logs and stderr, utf8 per default"

VOLUME /var/lib/mysql

EXPOSE 3306

ENTRYPOINT echo "see @todo in dockerfile"
#CMD ["-g", "daemon off;"]
