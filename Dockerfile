FROM luzifer/archlinux:latest@sha256:f46e8d43c2b66be9dca26d512dfb49ad19149297a970361e596dc4dd9ba7260a

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
