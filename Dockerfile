FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:f619205d49de1849cec44286d4e92e190c1eec3f5c982fbe84768a44447a7348

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
