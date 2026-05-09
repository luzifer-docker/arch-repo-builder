FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:07b40315e438ae63a4c277e8288271483d0586ec99a24a16d52398336a3091d0

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
