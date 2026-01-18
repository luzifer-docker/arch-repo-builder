FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:90ee5ae9ce6ee0cb7013c11d3a2a7d36325ce4d94d30cedaeea0a05a20b53a95

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
