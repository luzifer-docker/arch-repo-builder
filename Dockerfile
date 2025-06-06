FROM luzifer/archlinux:latest@sha256:36e48013c3be854d1932deef56e5452de0bfb4b202015ed20ebf775d9b6708c6

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
