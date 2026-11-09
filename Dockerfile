FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:dd9538fa2027d78cf374775fe140622766962d9eb245620c4e15e0856da223eb

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
