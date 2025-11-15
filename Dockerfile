FROM luzifer/archlinux:latest@sha256:223b1efc471f8fba948ae3dcf87f438039e80281e2ad9b2021b3b22db7bc9b63

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
