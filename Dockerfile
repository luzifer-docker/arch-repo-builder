FROM luzifer/archlinux:latest@sha256:c2638d517e0a431a4e7b85bfba4610ae96da371918b1af4590b046f6d2d388f2

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
