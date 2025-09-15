FROM luzifer/archlinux:latest@sha256:2196d40686adcee5b7167a57f7da63303c3d19a2f86c056a705e18fa95cfd957

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
