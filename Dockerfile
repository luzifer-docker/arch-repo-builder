FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:a4e466a3414bf1e77ad58a1795e1773779f93e31cb4be65c73d2de3d826be9bb

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
