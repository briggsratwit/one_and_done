-- different commands that were used in the console to securely transfer data

-- returned the variable name have_ssl with value yes
show variables like 'have_ssl'

-- creating the ssl user account
CREATE USER 'HYYU'@'127.0.0.1' IDENTIFED BY 'Hello123' REQUIRE SSL;

-- all user accounts will only be able to connect to the database over SSL 