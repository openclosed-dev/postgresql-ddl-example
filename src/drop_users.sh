#!/bin/bash

psql -h $POSTGRES_HOST -U $POSTGRES_USER -f drop_users.sql
