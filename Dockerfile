FROM luzifer/archlinux:latest@sha256:9ab59aae460ad278734f91760f638aba29b9162202afbb02d2d58a480acf36ba

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
