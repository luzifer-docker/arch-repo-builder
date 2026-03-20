FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:f91bad616f568b034351b2290c377275e3874b12385209bcecfb3f163df499b1

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
