FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:294080d76d2bd007c92f42e8ace8d7569fd23ab463464e645d6a1c516eebe767

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
