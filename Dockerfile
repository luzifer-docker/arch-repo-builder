FROM luzifer/archlinux:latest@sha256:742824215894606b44184f867f4bf0ec40ce7f4f5b55bce3b44729064f0ca1bb

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
