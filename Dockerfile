FROM luzifer/archlinux:latest@sha256:ef11b8f926f67594b73a908c3609f3c3a8d9832e5614747938a1ce17d16936f7

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
