FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:126663936e4d7286576b7693afa99d5c3c29e3a4464291243040ed5c0eed0e7a

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
