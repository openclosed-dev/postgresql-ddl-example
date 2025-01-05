#!/bin/bash

source lib/functions.sh

require_env 'POSTGRES_HOST'

psql -h $POSTGRES_HOST -U db1owner -f drop_schema.sql db1

