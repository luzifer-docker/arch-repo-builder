FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:f0c76cd0452adf393933b7ca69ff992596a0131ca201fd010bbcc92442204091

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
