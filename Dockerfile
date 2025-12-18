FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:22cbe4a2d6478f9579c9b5f708ab1bd847c86f542db00a4216448b91a9e164e5

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
