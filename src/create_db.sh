#!/bin/bash

source functions.sh

require_env 'POSTGRES_HOST'
require_env 'POSTGRES_USER'

psql -h $POSTGRES_HOST -U $POSTGRES_USER -f create_db.sql
