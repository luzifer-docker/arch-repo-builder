FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:e37d718bbcc9b9c9a829b7881e8ad93dbd223deb8aee03e6ac736614b036d72d

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
