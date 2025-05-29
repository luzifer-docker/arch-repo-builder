FROM luzifer/archlinux:latest@sha256:c222bdab5110cc7b819c2e49712f2d96b2b83218cb26145fe06b026ffecc9705

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
