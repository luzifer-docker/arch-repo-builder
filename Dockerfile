FROM luzifer/archlinux:latest@sha256:3b145400145052c4f2e5c565d08ed38fd83b6fefa190d2db60c5415c58f4fa83

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
