FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:7bf5181469a111ad3a682373705b690bd77765bdc4a7d63097ee64560c60ca92

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
