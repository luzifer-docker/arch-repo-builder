FROM luzifer/archlinux:latest@sha256:3538f1a2d8396dae6be2613d524bd4297737e7f8303ecf11183d55fd4ab92184

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
