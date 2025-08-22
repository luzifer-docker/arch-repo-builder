FROM luzifer/archlinux:latest@sha256:fff15c7fafffa7c76518e70cb3d728c0ce36def315f6b5100e3503155ff7e50e

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
