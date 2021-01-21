#!/bin/sh

set -e

# Perform all actions as $POSTGRES_USER
export PGUSER="$POSTGRES_USER"

# Load PostGIS into both template_database and $POSTGRES_DB
for DB in "$POSTGRES_DB"; do
	echo "Running SQL Scripts in $DB"
	"${psql[@]}" --dbname="$DB" <<-'EOSQL'
    CREATE SCHEMA IF NOT EXISTS ppdm AUTHORIZATION "$POSTGRES_USER";
    SET search_path to ppdm;
EOSQL
done