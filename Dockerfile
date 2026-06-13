FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:02fc5d840ee87292817f91565e2875d96a7d7f95c2f54d2c2a36248fcefbb184

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
