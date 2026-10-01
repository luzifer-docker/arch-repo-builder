FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:1f4d7179e917ccbded323f30c2a86b473c32fb51aaa34f53b85755b8a23f8cf6

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
