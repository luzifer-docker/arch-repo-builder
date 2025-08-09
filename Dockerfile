FROM luzifer/archlinux:latest@sha256:d7170bc8a3050d7ab6f41371d733c14c49d362ed815da1e5fcd842a79c07c8ee

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
