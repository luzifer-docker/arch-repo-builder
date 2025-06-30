FROM luzifer/archlinux:latest@sha256:7e8097ad4309d857ca8e88b75861cc673b829e2fd0a8333e0f1d306b7948d4d3

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
