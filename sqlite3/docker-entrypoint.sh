#!/bin/sh
set -e

if [ ! -e "/opt/sql/shinobi.sqlite" ]; then
    echo "Creating shinobi.sqlite for SQLite3..."
    cp sql/shinobi.sample.sqlite shinobi.sqlite
fi

exec "$@"
