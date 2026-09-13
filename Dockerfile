FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:bec77aa593b6f51aef7e1197cb6f3d2dd983fac6d3464c7e33b9c62416a5a9df

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
