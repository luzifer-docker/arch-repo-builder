FROM luzifer/archlinux:latest@sha256:715f7adb6906ebd4b8565fa35b4bcac1895f606d7ebb0120b77b3edc7d2c00f1

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
