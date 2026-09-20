FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:4953295cbb0d0a1acf12395fecf6166ec1841f4d1ed40d68afbb2de735d36827

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
