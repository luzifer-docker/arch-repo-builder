FROM luzifer/archlinux:latest@sha256:dbe1051bf068754e3487dd016885e6955517422f3931a1d1c6566afaf8bbb906

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
