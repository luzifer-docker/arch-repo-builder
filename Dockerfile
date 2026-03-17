FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:1fac3fa2c49ed11b71cf74fcbd29f734267531e1d85669c1557d3ff0e6be79a1

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
