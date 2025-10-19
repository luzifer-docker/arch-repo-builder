FROM luzifer/archlinux:latest@sha256:4384fa3db612a4eb0e9b5c6cc82dfa381bdf37a51b9b4805ac235568982a5a1b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
