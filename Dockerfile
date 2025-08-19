FROM luzifer/archlinux:latest@sha256:a55f54958291cbc7b73fc3df5abd13d0892486821040ce61517d030fd5bb5944

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
