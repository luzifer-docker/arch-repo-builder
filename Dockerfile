FROM luzifer/archlinux:latest@sha256:af9af605483225c9c5b2cb79b485acaffb40acca253dc476141ce793c1a361f8

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
