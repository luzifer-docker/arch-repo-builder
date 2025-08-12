FROM luzifer/archlinux:latest@sha256:7e4e3bb37d10655253f61b7b0f9fcf29b83101574430df191645ef6743c5c664

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
