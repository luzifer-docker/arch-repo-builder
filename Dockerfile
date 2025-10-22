FROM luzifer/archlinux:latest@sha256:a5f03556528af9952b76a2741d0e99b8cb345719ed3fb18180521edd882a41c1

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
