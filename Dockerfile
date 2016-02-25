FROM alpine

RUN apk update
RUN apk add transmission-daemon

ENV TRANSMISSION_HOME=/transmission
VOLUME /transmission

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/bin/transmission-daemon", "-f", "-a", "*", \
	"-w", "/transmission/downloads", \
	"-c", "/transmission/inbox", \
	"--incomplete-dir", "/transmission/spool"]

