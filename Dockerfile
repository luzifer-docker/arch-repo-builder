FROM luzifer/archlinux:latest@sha256:4987452438cef0b6d0b50867e4919b2b45bd05c6668a7f511b406355f0d866b9

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
