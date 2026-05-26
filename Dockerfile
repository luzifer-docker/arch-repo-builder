FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:63a08e748496ec14f4b69e5f40040bcaad6c1326446fd3df6628c98dc7a7ef1d

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
