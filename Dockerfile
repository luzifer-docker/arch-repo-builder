FROM luzifer/archlinux:latest@sha256:20a14b09461e3f67215daf7922edf0594d67e29ad80f6cd7eebc0b6b37de481f

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
