\encoding utf8
\set ON_ERROR_STOP on

\i passwords.txt

CREATE ROLE db1owner LOGIN PASSWORD :'db1owner_password';
CREATE ROLE db1user1 LOGIN PASSWORD :'db1user1_password';
CREATE ROLE db1user2 LOGIN PASSWORD :'db1user2_password';

GRANT db1owner to current_user;

\du
