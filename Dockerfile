FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:f5cbd0587862895b978f103a84c4acc2a57e762ab520dd5f729ad9525b9efda3

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
