FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:fe39e51014a47f76958e26b3d6e48b3739e10963e1025d7c9a9999ecb797431d

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
