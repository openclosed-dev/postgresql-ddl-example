#!/bin/bash

if [ -z "${POSTGRES_HOST}" ]; then
    echo 'Environment variable "POSTGRES_HOST" is not defined.'
    exit 1
fi

# Reads generated password
password=$(cat passwords.txt | grep 'db1owner_password' | cut -d ' ' -f 3)

PGPASSWORD=${password} psql -h $POSTGRES_HOST -U db1owner -f create_schema.sql db1
