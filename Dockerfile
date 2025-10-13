FROM luzifer/archlinux:latest@sha256:63f9f7715db405df4219dd62cf67f8908bc172b733b6920173fc29c1013cdc57

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
