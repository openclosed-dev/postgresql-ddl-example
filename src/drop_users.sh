#!/bin/bash

source lib/functions.sh

require_env 'POSTGRES_HOST'
require_env 'POSTGRES_USER'

psql -h $POSTGRES_HOST -U $POSTGRES_USER -f drop_users.sql
