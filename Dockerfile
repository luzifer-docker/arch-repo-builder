FROM luzifer/archlinux:latest@sha256:bfbf8a8468188e1c9cd4406e9760b7e13e900162667604516195349ba1e60bb0

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
