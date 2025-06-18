FROM luzifer/archlinux:latest@sha256:55d1b8fe4d082ace6c9eabbd1ff4c71b0aee9c378d30daf1747048ead66fe81c

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
