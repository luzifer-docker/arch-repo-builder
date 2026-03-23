FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:f110454de7ddf1fa96cfcfbf3ee8165ee570dad3756c902705ba42572e22b770

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
