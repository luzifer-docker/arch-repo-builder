FROM luzifer/archlinux:latest@sha256:1a60748e8e1371e8b2d632394ed84a90bf24b75b2fe0023600b63aa00a732933

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
