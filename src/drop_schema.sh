#!/bin/bash

psql -h $POSTGRES_HOST -U db1owner -f drop_schema.sql db1

