FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:b942454da34c35ef178931165feee6f4c95fcf432637524ceaa57eb5432a692a

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
