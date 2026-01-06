FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:1f769806dd96ad2efeb219f0b33490d0113e908a5468c1d3ddd96e13e51b281e

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
