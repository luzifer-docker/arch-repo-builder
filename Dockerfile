FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:e583ab44f77341657bf7de7699d54a7985b5f20dc50b72056678206550e0fbd6

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
