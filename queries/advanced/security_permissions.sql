-- Security and Permissions Example

-- Description:
-- Manage user permissions for database access.

-- Create User and Grant Permissions
CREATE USER db_user FOR LOGIN db_user_login;
GRANT SELECT, INSERT, UPDATE ON employees TO db_user;

-- Revoke Permissions
REVOKE INSERT ON employees FROM db_user;
