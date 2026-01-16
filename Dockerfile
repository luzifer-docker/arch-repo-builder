FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:0da019dcfd8b19c660ca5ab49f59dc159408f6aade7863239edea22998543b2f

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
