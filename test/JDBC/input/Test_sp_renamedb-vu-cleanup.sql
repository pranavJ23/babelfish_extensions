Use sp_renamedb_database1
go
Drop User sp_renamedb_login2;
go
Drop login sp_renamedb_login2;
go
Drop role sp_renamedb_role1;
go
Drop schema sp_renamedb_schema1;
go
use master
go
Drop database sp_renamedb_database1;
go
Drop login sp_renamedb_login1;
go
Drop database [sp_renamedb_ThisNewDatabaseNameIsCaseSensitiveAndIsLongerThan64DigitsToTestRenameDb];
go