FROM luzifer/archlinux:latest@sha256:b188e699996d5f08f3eac2edede0a919ab19bf486e1700740b486ee710b42627

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
