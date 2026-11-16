FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:f96c8f7fd9be8977cb9063f4f607133fa676fca6ac1f93cd95ff8614c7dd463a

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
