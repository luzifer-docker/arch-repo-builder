FROM luzifer/archlinux:latest@sha256:7aaadddbb4d351dc9879f83778e3aef45659498df0136d3ca0ad9f205c516edc

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
