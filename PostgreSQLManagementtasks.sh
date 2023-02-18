#Create a user
CREATE USER backup_operator;

#Create a role
CREATE ROLE backup;

#Grant the privileges to the backup role
GRANT CONNECT ON DATABASE tolldata TO backup;
GRANT SELECT ON ALL TABLES IN SCHEMA toll TO backup;

#Grant the role to user
GRANT backup TO backup_operator;
