FROM archlinux/base:latest

RUN set -ex \
 && pacman -Sy \
 && pacman -S --noconfirm --needed \
      base-devel \
      curl \
      git \
 && useradd -m -u 1000 builder \
 && echo "builder ALL=(ALL) NOPASSWD: ALL" >/etc/sudoers.d/builder \
 && curl -sSfLo /usr/local/bin/dumb-init  "https://github.com/Yelp/dumb-init/releases/download/v1.2.1/dumb-init_1.2.1_amd64" \
 && curl -sSfLo /usr/local/bin/gosu       "https://github.com/tianon/gosu/releases/download/1.11/gosu-amd64" \
 && chmod 0755 \
      /usr/local/bin/dumb-init \
      /usr/local/bin/gosu

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
