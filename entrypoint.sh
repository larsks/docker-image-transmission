#!/bin/sh

mkdir -p /transmission/downloads
mkdir -p /transmission/inbox
mkdir -p /transmission/spool

# make sure permissions are correct on tranmission directory
chown -R transmission:transmission /transmission

exec /usr/bin/transmission-daemoon \
	-f \
	-w /transmission/downloads \
	-c /transmission/inbox \
	--incomplete-dir /transmission/spool \
	"$@"
