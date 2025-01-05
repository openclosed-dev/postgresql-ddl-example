# Name of the password file
password_file=passwords.txt

function require_env() {
    env_name=$1
    if [ -z "${!env_name}" ]
    then
        echo "[ERROR] Please define required environment variable '${env_name}'."
        exit 1
    fi
}

# Generates a random password
function generate_password() {
   tr -dc 'A-Za-z0-9' < /dev/random | head -c 12
}

# Generates a password file if not exists
function generate_password_file() {

    if [ -e ${password_file} ]
    then
        echo "[INFO] Password file '${password_file}' already exists. Skipped generating new passwords."
    else
        for user in "$@"
        do
            echo "\set ${user}_password $(generate_password)" >> ${password_file}
        done
        echo "[INFO] Passwords are generated and stored in the file '${password_file}'."
    fi
}

# Reads generated password
function get_password() {
    cat ${password_file} | grep "$1_password" | cut -d ' ' -f 3
}
