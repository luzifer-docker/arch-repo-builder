FROM luzifer/archlinux:latest@sha256:1297b3d6d5c757246b51b5999581c621faff72d8b01d2d5c762cbd00bbddb1d6

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
