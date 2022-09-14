FROM ubuntu:20.04

ENV PG_APP_HOME="/etc/docker-postgresql"\
    PG_VERSION=14 \
    PG_USER=postgres \
    PG_HOME=/var/lib/postgresql \
    PG_RUNDIR=/run/postgresql \
    PG_LOGDIR=/var/log/postgresql

ENV PG_BINDIR=/usr/lib/postgresql/${PG_VERSION}/bin \
    PG_DATADIR=${PG_HOME}/${PG_VERSION}/main

RUN apt-get update && apt-get install -y sudo locales wget  \
        && localedef -i ru_RU -c -f UTF-8 -A /usr/share/locale/locale.alias ru_RU.UTF-8 \
        && update-locale LANG=ru_RU.UTF-8

ENV LANG ru_RU.UTF-8

RUN wget https://repo.postgrespro.ru/pg1c-14/keys/pgpro-repo-add.sh \
   && sh pgpro-repo-add.sh \
   && apt-get install --yes postgrespro-1c-14 \
   && rm -rf /var/lib/apt/lists/*

# COPY runtime/ ${PG_APP_HOME}/
COPY src/docker-entrypoint.sh docker-entrypoint.sh
COPY src/run/ ${PG_APP_HOME}/
RUN chmod 755 docker-entrypoint.sh

EXPOSE 5432/tcp
VOLUME ["${PG_HOME}", "${PG_RUNDIR}"]
WORKDIR ${PG_HOME}
ENTRYPOINT ["/docker-entrypoint.sh"]
