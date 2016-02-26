#!/bin/sh

: ${TXN_DIR:=/transmission}
export TXN_DIR

mkdir -p $TXN_DIR
mkdir $TXN_DIR/downloads $TXN_DIR/inbox $TXN_DIR/spool
