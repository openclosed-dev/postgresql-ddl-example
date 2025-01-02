#!/bin/bash

source functions.sh

require_env 'POSTGRES_HOST'

password=$(get_password db1owner)

PGPASSWORD=${password} psql -h $POSTGRES_HOST -U db1owner -f create_schema.sql db1
