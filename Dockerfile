FROM luzifer/archlinux:latest@sha256:3b4f2137149ad41b96402732f2a7ef94d706dda4753e850862cfa653f08b3dac

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
