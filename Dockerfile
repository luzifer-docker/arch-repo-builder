FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:a1b545e2a88f31096e52245fdacd778d494b19741f860b7647d1ad312643a6d9

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
