FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:03d5679d7872b0b993d1a224ea4ef8786265a7d1c409c1f49f083402d2d2e1b0

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
