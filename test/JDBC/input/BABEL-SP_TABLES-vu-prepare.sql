create table babel_sp_tables_vu_prepare_t_sptables(a int)
go
create database babel_sp_tables_vu_prepare_db1
go
use babel_sp_tables_vu_prepare_db1
go
create table babel_sp_tables_vu_prepare_t_sptables(a int)
go
create table babel_sp_tables_vu_prepare_t_sptables2(b int)
go
create table babel_sp_tables_vu_prepare_t_sotables2(c int)
go
create table babel_sp_tables_vu_prepare_t_s_tables2(c int)
go
create table babel_sp_tables_vu_prepare_t__tables2(c int)
go
create table babel_sp_tables_vu_prepare_test_escape_chars_sp_tables(c int)
go
create table babel_sp_tables_vu_prepare_MyTable1 (a int, b int, c int)
go
create table [babel_sp_tables_vu_prepare_MyTable2] ([a] int, [b] int, [c] int)
go
create view babel_sp_tables_vu_prepare_t_sptables5
as
select a from babel_sp_tables_vu_prepare_MyTable1
go