FROM luzifer/archlinux:latest@sha256:51eeaf9c8aff3772ef9f73018351f8dbe017da9122d255f36be9121695ea2448

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
