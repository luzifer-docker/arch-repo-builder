FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:8beec0572fd5e6c60c4ac1ca603f16826a75c97b487c8cf954b6619cbd0caa54

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
