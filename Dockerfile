FROM luzifer/archlinux:latest@sha256:a59f553115b75470b011ea84007a4827c284b7b1d950bd75e6a0195c3fdc7f8c

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
