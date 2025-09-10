FROM luzifer/archlinux:latest@sha256:d81426f415acb11b18b2ea7af31830f10c1b1187bb9b72003ab46e0ed9810aad

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
