#!/bin/bash

if [ -z "${POSTGRES_HOST}" ]; then
    echo 'Environment variable "POSTGRES_HOST" is not defined.'
    exit 1
fi

if [ -z "${POSTGRES_USER}" ]; then
    echo 'Environment variable "POSTGRES_USER" is not defined.'
    exit 1
fi

psql -h $POSTGRES_HOST -U $POSTGRES_USER -f create_db.sql
