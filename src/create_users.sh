#!/bin/bash

if [ -z "${POSTGRES_HOST}" ]; then
    echo 'Environment variable "POSTGRES_HOST" is not defined.'
    exit 1
fi

if [ -z "${POSTGRES_USER}" ]; then
    echo 'Environment variable "POSTGRES_USER" is not defined.'
    exit 1
fi

password_file=passwords.txt

function generate_password() {
   tr -dc 'A-Za-z0-9' < /dev/random | head -c 12
}

if [ -e ${password_file} ]; then
    echo "Password file \"${password_file}\" already exists. Skipped generating new passwords."
else
    cat > ${password_file} <<EOF
\set db1owner_password $(generate_password)
\set db1user1_password $(generate_password)
\set db1user2_password $(generate_password)
EOF

    echo "Passwords are generated and stored in the file \"${password_file}\""
fi

psql -h $POSTGRES_HOST -U $POSTGRES_USER -f create_users.sql
