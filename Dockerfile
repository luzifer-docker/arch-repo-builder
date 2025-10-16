FROM luzifer/archlinux:latest@sha256:c2c3f54f42a28608086c78b1e86d9f1fb112195b39a307d2e45c7a7d829a9b63

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
