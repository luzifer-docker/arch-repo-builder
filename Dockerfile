FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:7f61c3932391db149328f087f5015d2604c3a3e7261508977498963b3bcaeced

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
