FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:8e35913c05702f68fcfb0d30bfccce756b8b45b282b0ccb606d8c14cd34ce1ff

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
