FROM luzifer/archlinux:latest@sha256:da5426b0a38d30e6f131acce9b0cf0aea1eb83eceb8425d7e995f065642f16b6

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
