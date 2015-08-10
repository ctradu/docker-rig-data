FROM	ubuntu:14.04

MAINTAINER	Tiberiu Radu


# Users & groups
RUN groupadd -r -g 1200 influxdb && useradd -r -g influxdb -u 1200 influxdb
RUN groupadd -r -g 1300 riemann && useradd -r -g riemann -u 1300 riemann
RUN groupadd -r -g 1400 grafana && useradd -r -g grafana -u 1400 grafana




# Directories
RUN     mkdir -p /mnt/apcmetrics/influxdb
RUN     mkdir -p /mnt/apcmetrics/riemann
RUN     mkdir -p /mnt/apcmetrics/grafana

RUN     chown influxdb:influxdb /mnt/apcmetrics/influxdb
RUN     chown riemann:riemann /mnt/apcmetrics/riemann
RUN     chown grafana:grafana /mnt/apcmetrics/grafana



# Shared Volume
VOLUME      /mnt/apcmetrics


USER    influxdb


CMD     ["echo", "Data container for influxdb, riemann and grafana data"]

