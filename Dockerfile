FROM luzifer/archlinux:latest@sha256:c6354a484d147be1a9b8b12fb4c8127ebc0a8144adaa3b38baf846e93aa9ea60

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
