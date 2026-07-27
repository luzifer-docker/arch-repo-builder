FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:abc03ee288cf7a2690d0677585097944b55eb4a33cbe866a83a5191be889c072

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
