FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:3cc8fa045f724369e55c90ffb74ca1d8c7c6e9e1031a564875f6bc7dfed1668e

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
