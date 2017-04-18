#!/bin/bash

set -e

PG_VERSIONS="9.4 9.5 9.6"
POSTGIS_VERSION="2.2"

for VERSION in $PG_VERSIONS
do
	sed -e 's/%%PG_MAJOR%%/'"$VERSION"'/g' \
		-e 's/%%POSTGIS_VERSION%%/'"$POSTGIS_VERSION"'/g' Dockerfile.template > $VERSION/Dockerfile
done
