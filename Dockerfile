FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:77d2ab21b15ff706bc96c72608d82ee46e256040f9c02af209f6357c959d2171

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
