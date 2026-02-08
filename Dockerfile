FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:6e0cdbbf9010d8c5fc9698bbbb2522a234dc5b1161a087638196004e272a56a6

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
