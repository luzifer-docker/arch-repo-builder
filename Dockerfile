FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:11caa7bc6eff1274bf2e8a7f5282518a95b34f27eb1f4ba7680b200b90a8f42b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
