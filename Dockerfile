FROM luzifer/archlinux:latest@sha256:ba5de5b843b10117d9348eb13863973605e101a6655d3fddb26470ec7a084eb8

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
