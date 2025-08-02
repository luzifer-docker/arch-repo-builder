FROM luzifer/archlinux:latest@sha256:eeff32bd5dcbec0d359aa154085d0444c8dc83076435d71797f581c7c4fc68c1

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
