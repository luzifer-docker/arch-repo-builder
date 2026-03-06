FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:1062c58328400d8ff7a99f5aca6cf1eb7ad3a6801598f97fda3d1d9a5a236d8e

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
