FROM luzifer/archlinux:latest@sha256:b9718395ef520ffd2f64be54170f0ea4e97f2bb4a3791c80ee0e678b1bfdb7c5

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
