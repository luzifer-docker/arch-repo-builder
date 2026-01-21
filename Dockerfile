FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:cdafb8a8befcb379a59b3731b38872d803145aac64bfebc780666a3dadb5baca

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
