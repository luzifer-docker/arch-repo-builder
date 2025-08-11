FROM luzifer/archlinux:latest@sha256:308e6b673492b84820bc6e7d781a9dd0c87254f5fc4a4295d2e33575880a0b6d

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
