FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:ea8897f69f1ccf88ea89b39bae584f86e0b77270f2b15665ce1f3369b3df620f

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
