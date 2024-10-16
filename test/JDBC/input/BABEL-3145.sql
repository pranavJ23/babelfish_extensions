CREATE DATABASE CamelCaseDB
go

SELECT case when DB_ID(N'CamelCaseDB') is not null then 'not null' else 'null' end as result
go

SELECT case when DB_ID(N'') is not null then 'not null' else 'null' end as result
go

SELECT case when DB_ID('CamelCaseDB') is not null then 'not null' else 'null' end as result
go

SELECT case when DB_ID('') is not null then 'not null' else 'null' end as result
go

DROP DATABASE CamelCaseDB
go

-- Tests for db level collation
CREATE DATABASE CamelCaseDB COLLATE BBF_Unicode_CP1_CI_AI
go

SELECT case when DB_ID(N'CamelCaseDB') is not null then 'not null' else 'null' end as result
go

SELECT case when DB_ID(N'') is not null then 'not null' else 'null' end as result
go

SELECT case when DB_ID('CamelCaseDB') is not null then 'not null' else 'null' end as result
go

SELECT case when DB_ID('') is not null then 'not null' else 'null' end as result
go

DROP DATABASE CamelCaseDB
go

