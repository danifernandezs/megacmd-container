FROM debian:buster-20201209-slim

# To work with a container

RUN echo path-include /usr/share/doc/megacmd/* > /etc/dpkg/dpkg.cfg.d/docker

COPY files/mega*.deb /tmp/megacmd.deb

RUN apt-get update && \
    apt install -y ./tmp/megacmd.deb && \
    rm -rf /var/lib/apt/lists/*