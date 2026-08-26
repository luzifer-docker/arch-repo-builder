FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:b0e07f07645547d2cd5cbc907aaf737555efa8e5e73c14a4626a4919be65126d

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
