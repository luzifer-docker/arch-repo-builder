FROM luzifer/archlinux:latest@sha256:393bcad121b3cf899172c9ac1e058fa55a5982203aaac3e89d31db9c46ce9f93

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
