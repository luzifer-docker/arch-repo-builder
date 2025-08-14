FROM luzifer/archlinux:latest@sha256:d7c5d4c2596455714e9435fa62fe725c45b2853b3395de442180abe3d76d97bd

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
