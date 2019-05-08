FROM ubuntu:16.04

MAINTAINER Thibault CHEVALLERAUD <tchevalleraud@interdata.fr>

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install adduser curl libfontconfig1 wget

RUN wget https://dl.grafana.com/oss/release/grafana_6.1.6_amd64.deb && \
    dpkg -i grafana_6.1.6_amd64.deb

WORKDIR /

EXPOSE 3000

ADD entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["/usr/bin/entrypoint.sh"]