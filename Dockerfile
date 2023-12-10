FROM debian:buster-20231120-slim

# To work with a container

RUN echo path-include /usr/share/doc/megacmd/* > /etc/dpkg/dpkg.cfg.d/docker

COPY files/megacmd_1.6.3.4_amd64 /tmp/megacmd.deb

RUN apt-get update && \
    apt install -y ./tmp/megacmd.deb && \
    rm -rf /var/lib/apt/lists/*
