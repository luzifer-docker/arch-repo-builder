FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:b96082f4b83adce746dd1f01bd2aa988b016412cfae60a8450b90037616a20c3

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
