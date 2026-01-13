FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:7a7cfbb19a80cc8062dad1d8cab832cfcbb3c06a27ffdf8045a0d58ce7821b48

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
