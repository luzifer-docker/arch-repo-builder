FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:5debc636d03dd18be348a4958add9c23f905bffbf8b1237e7b02482751e09b30

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
