FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:22585631f270ea54424d608cddf6bb6375d4d0c65651cb05dec3d99c295c3aac

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
