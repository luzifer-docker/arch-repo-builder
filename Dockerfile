FROM luzifer/archlinux:latest@sha256:2358c146bac4c7abb48d3205753711bb4d6b3ae86e8fe33b4af12c0e6c4bffe7

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
