FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:eafec8cf0b558dd4a83edadacd0731f9318040226c87d9915945548e88308c3e

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
