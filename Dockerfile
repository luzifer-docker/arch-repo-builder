FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:fea56216d0354c4018bb3a8378c0550f94fe10fad3e35e9c98607cf490bf001f

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
