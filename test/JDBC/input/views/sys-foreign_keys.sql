CREATE DATABASE db1;
GO

USE db1;
GO

create table fk_1 (a int, primary key (a));
GO

create table fk_2 (a int, b int, primary key (a), foreign key (b) references fk_1(a));
GO

select count(*) from sys.key_constraints where parent_object_id = object_id('fk_1') and type = 'PK';
GO

select count(*) from sys.foreign_keys where parent_object_id = object_id('fk_2');
GO

select count(*) from sys.objects where type='F' and parent_object_id = object_id('fk_2');
GO

select count(*) from sys.all_objects where type='F' and parent_object_id = object_id('fk_2');
GO

USE master;
GO

select count(*) from sys.key_constraints where parent_object_id = object_id('fk_1') and type = 'PK';
GO

select count(*) from sys.foreign_keys where parent_object_id = object_id('fk_2');
GO

select count(*) from sys.objects where type='F' and parent_object_id = object_id('fk_2');
GO

select count(*) from sys.all_objects where type='F' and parent_object_id = object_id('fk_2');
GO

create table fk_3 (a int, primary key (a));
GO

create table fk_4 (a int, b int, primary key (a), foreign key (b) references fk_3(a));
GO

select count(*) from sys.key_constraints where parent_object_id = object_id('fk_3') and type = 'PK';
GO

select count(*) from sys.foreign_keys where parent_object_id = object_id('fk_4');
GO

select count(*) from sys.objects where type='F' and parent_object_id = object_id('fk_4');
GO

select count(*) from sys.all_objects where type='F' and parent_object_id = object_id('fk_4');
GO

USE db1;
GO

select count(*) from sys.key_constraints where parent_object_id = object_id('fk_3') and type = 'PK';
GO

select count(*) from sys.foreign_keys where parent_object_id = object_id('fk_4');
GO

select count(*) from sys.objects where type='F' and parent_object_id = object_id('fk_4');
GO

select count(*) from sys.all_objects where type='F' and parent_object_id = object_id('fk_4');
GO

drop table fk_2;
GO

drop table fk_1;
GO

CREATE TABLE PK1 (
 PK1_ID INT,
 PK1_UNIQUE_INT INT UNIQUE NOT NULL,
 PRIMARY KEY (PK1_ID)
)
GO

CREATE TABLE FK1 (
 FK1_ID INT NOT NULL,
 PK1_ID INT
 FOREIGN KEY (PK1_ID) REFERENCES PK1(PK1_ID)
)
GO

SELECT COUNT(*) from sys.foreign_keys where name = 'fk1_pk1_id_fkey';
GO


DROP TABLE FK1;
GO

DROP TABLE PK1;
GO

CREATE TABLE PK2 (
 PK2_ID INT,
 PK2_UNIQUE_INT_1 INT UNIQUE NOT NULL,
 PK2_UNIQUE_INT_2 INT UNIQUE NOT NULL,
)
GO

CREATE TABLE FK2 (
 FK2_INT INT NOT NULL,
 FK2_INT_2 INT
 FOREIGN KEY (FK2_INT_2) REFERENCES PK2(PK2_UNIQUE_INT_1)
)
GO

SELECT COUNT(*) from sys.foreign_keys where name = 'fk2_fk2_int_2_fkey';
GO

DROP TABLE FK2;
GO

DROP TABLE PK2;
GO

CREATE TABLE PK3 (
 PK3_INT_1 INT,
 PK3_INT_2 INT,
 PRIMARY KEY (PK3_INT_1, PK3_INT_2)
)
GO

CREATE TABLE FK3 (
 PK3_INT_1 INT,
 PK3_INT_2 INT,
 FOREIGN KEY (PK3_INT_1, PK3_INT_2) REFERENCES PK3(PK3_INT_1, PK3_INT_2)
)
GO

SELECT COUNT(*) from sys.foreign_keys where name = 'fk3_pk3_int_1_pk3_int_2_fkey';
GO


DROP TABLE FK3;
GO

DROP TABLE PK3;
GO

USE master;
GO

drop table fk_4;
GO

drop table fk_3;
GO

DROP DATABASE db1
GO

CREATE DATABASE db1 COLLATE BBF_Unicode_CP1_CI_AI;
GO

USE db1;
GO

create table fk_1 (a int, primary key (a));
GO

create table fk_2 (a int, b int, primary key (a), foreign key (b) references fk_1(a));
GO

select count(*) from sys.key_constraints where parent_object_id = object_id('fk_1') and type = 'PK';
GO

select count(*) from sys.foreign_keys where parent_object_id = object_id('fk_2');
GO

select count(*) from sys.objects where type='F' and parent_object_id = object_id('fk_2');
GO

select count(*) from sys.all_objects where type='F' and parent_object_id = object_id('fk_2');
GO

USE master;
GO

select count(*) from sys.key_constraints where parent_object_id = object_id('fk_1') and type = 'PK';
GO

select count(*) from sys.foreign_keys where parent_object_id = object_id('fk_2');
GO

select count(*) from sys.objects where type='F' and parent_object_id = object_id('fk_2');
GO

select count(*) from sys.all_objects where type='F' and parent_object_id = object_id('fk_2');
GO

create table fk_3 (a int, primary key (a));
GO

create table fk_4 (a int, b int, primary key (a), foreign key (b) references fk_3(a));
GO

select count(*) from sys.key_constraints where parent_object_id = object_id('fk_3') and type = 'PK';
GO

select count(*) from sys.foreign_keys where parent_object_id = object_id('fk_4');
GO

select count(*) from sys.objects where type='F' and parent_object_id = object_id('fk_4');
GO

select count(*) from sys.all_objects where type='F' and parent_object_id = object_id('fk_4');
GO

USE db1;
GO

select count(*) from sys.key_constraints where parent_object_id = object_id('fk_3') and type = 'PK';
GO

select count(*) from sys.foreign_keys where parent_object_id = object_id('fk_4');
GO

select count(*) from sys.objects where type='F' and parent_object_id = object_id('fk_4');
GO

select count(*) from sys.all_objects where type='F' and parent_object_id = object_id('fk_4');
GO

drop table fk_2;
GO

drop table fk_1;
GO

CREATE TABLE PK1 (
 PK1_ID INT,
 PK1_UNIQUE_INT INT UNIQUE NOT NULL,
 PRIMARY KEY (PK1_ID)
)
GO

CREATE TABLE FK1 (
 FK1_ID INT NOT NULL,
 PK1_ID INT
 FOREIGN KEY (PK1_ID) REFERENCES PK1(PK1_ID)
)
GO

SELECT COUNT(*) from sys.foreign_keys where name = 'fk1_pk1_id_fkey';
GO


DROP TABLE FK1;
GO

DROP TABLE PK1;
GO

CREATE TABLE PK2 (
 PK2_ID INT,
 PK2_UNIQUE_INT_1 INT UNIQUE NOT NULL,
 PK2_UNIQUE_INT_2 INT UNIQUE NOT NULL,
)
GO

CREATE TABLE FK2 (
 FK2_INT INT NOT NULL,
 FK2_INT_2 INT
 FOREIGN KEY (FK2_INT_2) REFERENCES PK2(PK2_UNIQUE_INT_1)
)
GO

SELECT COUNT(*) from sys.foreign_keys where name = 'fk2_fk2_int_2_fkey';
GO

DROP TABLE FK2;
GO

DROP TABLE PK2;
GO

CREATE TABLE PK3 (
 PK3_INT_1 INT,
 PK3_INT_2 INT,
 PRIMARY KEY (PK3_INT_1, PK3_INT_2)
)
GO

CREATE TABLE FK3 (
 PK3_INT_1 INT,
 PK3_INT_2 INT,
 FOREIGN KEY (PK3_INT_1, PK3_INT_2) REFERENCES PK3(PK3_INT_1, PK3_INT_2)
)
GO

SELECT COUNT(*) from sys.foreign_keys where name = 'fk3_pk3_int_1_pk3_int_2_fkey';
GO


DROP TABLE FK3;
GO

DROP TABLE PK3;
GO

USE master;
GO

drop table fk_4;
GO

drop table fk_3;
GO

DROP DATABASE db1
GO

