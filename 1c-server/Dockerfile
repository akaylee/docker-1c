FROM ubuntu

RUN apt-get -qq update \
  && apt-get -qq install --yes --no-install-recommends ca-certificates wget locales \
  && `#----- Install the dependencies -----` \
  && apt-get -qq install --yes --no-install-recommends fontconfig imagemagick \
  && `#----- Deal with ttf-mscorefonts-installer -----` \
  && apt-get -qq install --yes --no-install-recommends xfonts-utils cabextract \
  && wget --quiet --output-document /tmp/ttf-mscorefonts-installer_3.6_all.deb http://ftp.us.debian.org/debian/pool/contrib/m/msttcorefonts/ttf-mscorefonts-installer_3.6_all.deb \
  && dpkg --install /tmp/ttf-mscorefonts-installer_3.6_all.deb 2> /dev/null \
  && rm /tmp/ttf-mscorefonts-installer_3.6_all.deb

RUN localedef --inputfile ru_RU --force --charmap UTF-8 --alias-file /usr/share/locale/locale.alias ru_RU.UTF-8
ENV LANG ru_RU.utf8

COPY ./src/docker-entrypoint.sh ./

ENV PACKAGE_VERSION=$PACKAGE_VERSION
ENV PLATFORM_VERSION=$PLATFORM_VERSION
ENV SERVER_VERSION=$SERVER_VERSION
RUN wget http://10.3.80.50/1C_distro/deb64_$PACKAGE_VERSION.tar.gz -P /tmp/ \
  && tar -zxvf /tmp/deb64_$PACKAGE_VERSION.tar.gz -C /tmp/ \
  && dpkg -i /tmp/1c-enterprise-$PLATFORM_VERSION-common_${SERVER_VERSION}_amd64.deb 2> /dev/null \
  && dpkg -i /tmp/1c-enterprise-$PLATFORM_VERSION-server_${SERVER_VERSION}_amd64.deb 2> /dev/null \
  && rm /tmp/*.deb \
  && mkdir -p /var/log/1C /home/usr1cv8/.1cv8/1C/1cv8/conf \
  && chown --recursive usr1cv8:grp1cv8 /var/log/1C /home/usr1cv8 \
  && chmod +x /docker-entrypoint.sh

COPY ./src/logcfg.xml /home/usr1cv8/.1cv8/1C/1cv8/conf

ENTRYPOINT ["/docker-entrypoint.sh"]

VOLUME /home/usr1cv8
VOLUME /var/log/1C

EXPOSE 1540-1541 1560-1591

CMD ["ragent"]
