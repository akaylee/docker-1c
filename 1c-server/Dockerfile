FROM ubuntu:xenial

ENV GOSU_VERSION 1.7
RUN apt-get -qq update \
  && apt-get -qq install --yes --no-install-recommends ca-certificates wget locales \
  && `#----- Install the dependencies -----` \
  && apt-get -qq install --yes --no-install-recommends fontconfig imagemagick \
  && `#----- Deal with ttf-mscorefonts-installer -----` \
  && apt-get -qq install --yes --no-install-recommends xfonts-utils cabextract \
  && wget --quiet --output-document /tmp/ttf-mscorefonts-installer_3.6_all.deb http://ftp.us.debian.org/debian/pool/contrib/m/msttcorefonts/ttf-mscorefonts-installer_3.6_all.deb \
  && dpkg --install /tmp/ttf-mscorefonts-installer_3.6_all.deb 2> /dev/null \
  && rm /tmp/ttf-mscorefonts-installer_3.6_all.deb \
  && `#----- Install gosu -----` \
  && wget --quiet --output-document /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" \
  && chmod +x /usr/local/bin/gosu \
  && gosu nobody true

RUN localedef --inputfile ru_RU --force --charmap UTF-8 --alias-file /usr/share/locale/locale.alias ru_RU.UTF-8
ENV LANG ru_RU.utf8

ADD ./src/*.run /tmp/
COPY ./src/docker-entrypoint.sh ./
COPY ./src/ras-srv1cv83.service /etc/systemd/system/

ENV PLATFORM_VERSION 8.3.20.1996
RUN ./tmp/setup-full-$PLATFORM_VERSION-x86_64.run --mode unattended --enable-components server --disable-components client_thin,client_thin_fib,ws,server_admin,az,ar,hy,bg,hu,el,vi,ka,kk,zh,it,es,lv,lt,de,pl,ro,tr,tk,fr,uk,config_storage_server,additional_admin_functions,liberica_jre,integrity_monitoring,client_full \
  && mkdir -p /var/log/1C /home/usr1cv8/.1cv8/1C/1cv8/conf \
  && chown --recursive usr1cv8:grp1cv8 /var/log/1C /home/usr1cv8 \
  && chmod +x /docker-entrypoint.sh \
  && systemctl enable ras-srv1cv83

COPY ./src/logcfg.xml /home/usr1cv8/.1cv8/1C/1cv8/conf

ENTRYPOINT ["/docker-entrypoint.sh"]

VOLUME /home/usr1cv8
VOLUME /var/log/1C

EXPOSE 1540-1541 1560-1591

CMD ["ragent"]