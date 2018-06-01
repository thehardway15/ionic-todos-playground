#!/bin/sh
set -e

npm install --quiet

exec /tini -- "$@"
