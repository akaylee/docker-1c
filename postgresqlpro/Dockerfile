FROM ubuntu:20.04

RUN groupadd postgres --gid=999 \
  && useradd --gid postgres --uid=999 postgres

ENV GOSU_VERSION 1.7
RUN apt-get -qq update \
  && apt-get -qq install --yes --no-install-recommends ca-certificates wget locales \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && wget --quiet -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" \
  && chmod +x /usr/local/bin/gosu \
  && gosu nobody true

RUN localedef --inputfile ru_RU --force --charmap UTF-8 --alias-file /usr/share/locale/locale.alias ru_RU.UTF-8
ENV LANG ru_RU.utf8

ENV PATH /usr/lib/postgresql/$SERVER_VERSION/bin:$PATH
ENV PGDATA /data
RUN wget https://repo.postgrespro.ru/pg1c-14/keys/pgpro-repo-add.sh \
   && sh pgpro-repo-add.sh \
   && apt-get install --yes postgrespro-1c-14 \
   && rm -rf /var/lib/apt/lists/*

RUN mkdir --parent /var/run/postgresql "$PGDATA" /docker-entrypoint-initdb.d \
  && chown --recursive postgres:postgres /var/run/postgresql "$PGDATA" \
  && chmod g+s /var/run/postgresql

COPY container/docker-entrypoint.sh /
COPY container/postgresql.conf.sh /docker-entrypoint-initdb.d

ENTRYPOINT ["/docker-entrypoint.sh"]

VOLUME $PGDATA

EXPOSE 5432

CMD ["postgres"]
