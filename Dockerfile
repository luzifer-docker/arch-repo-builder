FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:fa61d2ec7033ae9c9a73ca4db8c46ce7c085dc91f8665edea602b51cdd03143e

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
