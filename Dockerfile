FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:3d31cdb52fce134f1acc2a0a7db1e805a33b5d353a9c7497564f1e17b58d955f

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
