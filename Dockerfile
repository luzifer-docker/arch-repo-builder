FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:6a8438054a0b2bb1f61978a183f0321c5c3d645d113dc73dd233e5bb9e1ab64e

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
