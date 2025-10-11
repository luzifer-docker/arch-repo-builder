FROM luzifer/archlinux:latest@sha256:3850a1e7201c2217154a3b4db1640963b1b030a2fa80c7a098bfd18607062aff

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
