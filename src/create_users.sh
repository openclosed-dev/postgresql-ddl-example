#!/bin/bash

source lib/functions.sh

require_env 'POSTGRES_HOST'
require_env 'POSTGRES_USER'

generate_password_file 'db1owner' 'db1user1' 'db1user2'

psql -h $POSTGRES_HOST -U $POSTGRES_USER -f create_users.sql
