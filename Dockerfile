FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:5f6e489d1d164e0763436fddcee5949bc9b2f896edeeccaabab33b83495e98fb

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
