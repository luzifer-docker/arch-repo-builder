FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:417496a4d6cd53df148bb0097615fa413c188a52f1df86a5d8e237e13b674421

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
