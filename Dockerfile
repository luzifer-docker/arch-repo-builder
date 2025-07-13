FROM luzifer/archlinux:latest@sha256:ea6c4473096dcc217cecfc33c67cf6a8a0b87a367b9aeb44224e20d8f89507e7

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
