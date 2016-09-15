FROM debian:jessie

MAINTAINER Víctor González <victor.gonzalez@geomati.co>

ENV DEBIAN_FRONTEND noninteractive
ENV VERSION 5.19.0

RUN echo "deb http://httpredir.debian.org/debian jessie contrib" >> /etc/apt/sources.list
RUN set -x \
	&& apt-get update \
	&& apt-get install -yq wget \
  && rm -rf /var/lib/apt/lists/*

RUN cd /usr/local/lib \
    && wget https://mmonit.com/monit/dist/binary/${VERSION}/monit-${VERSION}-linux-x64.tar.gz \
    && tar xzf monit-${VERSION}-linux-x64.tar.gz \
    && ln -s "/usr/local/lib/monit-${VERSION}/conf/monitrc" /etc/monitrc \
    && ln -s "/usr/local/lib/monit-${VERSION}/bin/monit" /usr/local/bin/monit

COPY monitrc /etc/monitrc

ENTRYPOINT [ "monit", "-Ic", "/etc/monitrc" ]

EXPOSE 2812

