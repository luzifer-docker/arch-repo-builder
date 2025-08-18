FROM luzifer/archlinux:latest@sha256:a2f2f4cd93ccfa697caaf73710016243721af7b3ada5894493bd35dac102f997

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
