FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:b61de0d8743b3da90f26d510f56aa1b0e9e55bf135cf20f9ac8df219592a421b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
