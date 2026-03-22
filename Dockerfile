FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:3c3e65274526a537b60347923a2842f51a27b28c127b96b61ec8b50982792575

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
