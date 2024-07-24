-- create a new table PROB
create table PROB(ID int);
go
select ID from PROB;
go
-- Create a new table REPRO with column ID 
select ID into REPRO from PROB;
go
-- Indexing over column ID
create index IDX_REPRODUCTION on REPRO(ID);
go
-- dropping the table PROB
drop table PROB;
go
-- dropping the table REPRO
drop table REPRO;
go
