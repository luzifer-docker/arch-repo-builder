FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:0d7bae50ee3a73bf52b96382022e28db3f7d3f7fcead5ea663a95cdaf23e12e2

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
