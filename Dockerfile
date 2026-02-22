FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:6297d23debd95ecfe5419011dd6f14f1ed79f16341bd4ff6bf070ee0940911fe

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
