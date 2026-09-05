FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:1d6432e2f80a3d989735e2a4bfff8cd625a74d472fc270cf9c3d778a179f5e48

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
