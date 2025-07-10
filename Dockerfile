FROM luzifer/archlinux:latest@sha256:02ce6d751f556505e618b3e2967f29718171f3aecdbda7ca9daea1e122ad0044

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
