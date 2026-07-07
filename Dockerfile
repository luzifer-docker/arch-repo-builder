FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:51bf452bcacd0dfc4f9a60a76df5b53c03e83a62bee370642ebb6cb40cc42ca4

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
