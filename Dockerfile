FROM luzifer/archlinux:latest@sha256:49cd41510a602621d4f5fd981f1f561edeacaf863d3f537b8be68af1918bc1da

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
