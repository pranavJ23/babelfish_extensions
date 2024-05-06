------------------- CI_AI ----------------------

CREATE TABLE test_like_for_AI_prepare_t1_ci (
    col NVARCHAR(50) COLLATE Latin1_General_CI_AI,
    col_v VARCHAR(50) COLLATE Latin1_General_CI_AI,
    col_t TEXT COLLATE Latin1_General_CI_AI,
    col_ntext NTEXT COLLATE Latin1_General_CI_AI,
    col_c CHAR(50) COLLATE Latin1_General_CI_AI,
    col_nchar NCHAR(50) COLLATE Latin1_General_CI_AI
);
GO

INSERT INTO test_like_for_AI_prepare_t1_ci (col, col_v, col_t, col_ntext, col_c, col_nchar) 
VALUES
  ('café', 'café', 'café', 'café', 'café', 'café'),
  ('jalapeño', 'jalapeño', 'jalapeño', 'jalapeño', 'jalapeño', 'jalapeño'),
  ('résumé', 'résumé', 'résumé', 'résumé', 'résumé', 'résumé'),
  ('naïve', 'naïve', 'naïve', 'naïve', 'naïve', 'naïve'),
  ('Piñata', 'Piñata', 'Piñata', 'Piñata', 'Piñata', 'Piñata'),
  ('Año Nuevo', 'Año Nuevo', 'Año Nuevo', 'Año Nuevo', 'Año Nuevo', 'Año Nuevo'),
  ('TELÉFONO', 'TELÉFONO', 'TELÉFONO', 'TELÉFONO', 'TELÉFONO', 'TELÉFONO'),
  ('película', 'película', 'película', 'película', 'película', 'película'),
  ('árbol', 'árbol', 'árbol', 'árbol', 'árbol', 'árbol'),
  ('canapé', 'canapé', 'canapé', 'canapé', 'canapé', 'canapé'),
  ('chaptéR', 'chaptéR', 'chaptéR', 'chaptéR', 'chaptéR', 'chaptéR'),
  ('TEññiȘ', 'TEññiȘ', 'TEññiȘ', 'TEññiȘ', 'TEññiȘ', 'TEññiȘ');
GO

CREATE TABLE test_like_for_AI_prepare_t6_ci(a nvarchar(11) collate Latin1_General_CI_AI, b nvarchar(11) collate Latin1_General_CI_AI);
GO

INSERT INTO test_like_for_AI_prepare_t6_ci VALUES ('THazmEEm', 'ThÅzeEm'),('Ŭwmed', 'uŴɱêÐ'),('Æmed','aeMéD'),('Șpain','SPÅǏn'), ('THazmEEm', '%z%'), ('Ŭwmed', 'Uw%'), ('Æmed','%éd');
GO

CREATE TABLE test_like_for_AI_prepare_t7_ci (
  col NVARCHAR(50)
);
GO

INSERT INTO test_like_for_AI_prepare_t7_ci (col) VALUES
  ('café'),
  ('jalapeño'),
  ('résumé'),
  ('naïve'),
  ('Piñata'),
  ('Año Nuevo'),
  ('TELÉFONO'),
  ('película'),
  ('árbol'),
  ('canapé'),
  ('chaptéR'),
  ('TEññiȘ'),
  (null);
GO

CREATE TABLE test_like_for_AI_prepare_t13_1_ci (
  col1 NVARCHAR(50) COLLATE Latin1_General_CI_AI, col2 NVARCHAR(50) COLLATE Latin1_General_CI_AI
);
GO

INSERT INTO test_like_for_AI_prepare_t13_1_ci VALUES
  ('café', 'prójimo'),
  ('jalapeño', 'aburrí'),
  ('résumé', 'críquet'),
  ('naïve', 'cuídate'),
  ('Piñata', 'gárgola'),
  ('Año Nuevo', 'gárgola'),
  ('TELÉFONO', 'núcleo'),
  ('película', 'réquiem'),
  ('árbol', 'difícil'),
  ('canapé', 'crédito'),
  ('chaptéR', 'enérgetico'),
  ('TEññiȘ', 'patín'),
  ('lúdico', 'lúdico'),
  (null, null);
GO

CREATE TABLE test_like_for_AI_prepare_t13_2_ci (
  col NVARCHAR(50) COLLATE Latin1_General_CI_AI
);
GO

INSERT INTO test_like_for_AI_prepare_t13_2_ci VALUES
  ('aburrí'),
  ('brújula'),
  ('résumen'),
  ('calabacín'),
  ('gárgola'),
  ('lúdico'),
  ('ácaro'),
  ('reísteis'),
  ('gígabyte'),
  ('crédito'),
  ('ídolo'),
  ('trocéis'),
  (null);
GO

-- TESTS FOR COLUMN LEVEL CONSTRAINTS
-- Create the employee table with the computed column and check constraint
CREATE TABLE test_like_for_AI_prepare_employee_CI_AI (
    id INT PRIMARY KEY,
    name NVARCHAR(MAX) COLLATE Latin1_General_CI_AI,
    CONSTRAINT check_name_starts_with_a 
        CHECK (name COLLATE Latin1_General_CI_AI LIKE 'A%')
);
GO

------------------- CS_AI ----------------------
CREATE TABLE test_like_for_AI_prepare_t1_cs (
    col NVARCHAR(50) COLLATE Latin1_General_CS_AI,
    col_v VARCHAR(50) COLLATE Latin1_General_CS_AI,
    col_t TEXT COLLATE Latin1_General_CS_AI,
    col_ntext NTEXT COLLATE Latin1_General_CS_AI,
    col_c CHAR(50) COLLATE Latin1_General_CS_AI,
    col_nchar NCHAR(50) COLLATE Latin1_General_CS_AI
);
GO

INSERT INTO test_like_for_AI_prepare_t1_cs (col, col_v, col_t, col_ntext, col_c, col_nchar) 
VALUES
  ('café', 'café', 'café', 'café', 'café', 'café'),
  ('jalapeño', 'jalapeño', 'jalapeño', 'jalapeño', 'jalapeño', 'jalapeño'),
  ('résumé', 'résumé', 'résumé', 'résumé', 'résumé', 'résumé'),
  ('naïve', 'naïve', 'naïve', 'naïve', 'naïve', 'naïve'),
  ('Piñata', 'Piñata', 'Piñata', 'Piñata', 'Piñata', 'Piñata'),
  ('Año Nuevo', 'Año Nuevo', 'Año Nuevo', 'Año Nuevo', 'Año Nuevo', 'Año Nuevo'),
  ('TELÉFONO', 'TELÉFONO', 'TELÉFONO', 'TELÉFONO', 'TELÉFONO', 'TELÉFONO'),
  ('película', 'película', 'película', 'película', 'película', 'película'),
  ('árbol', 'árbol', 'árbol', 'árbol', 'árbol', 'árbol'),
  ('canapé', 'canapé', 'canapé', 'canapé', 'canapé', 'canapé'),
  ('chaptéR', 'chaptéR', 'chaptéR', 'chaptéR', 'chaptéR', 'chaptéR'),
  ('TEññiȘ', 'TEññiȘ', 'TEññiȘ', 'TEññiȘ', 'TEññiȘ', 'TEññiȘ');
GO

CREATE TABLE test_like_for_AI_prepare_t6_cs(a nvarchar(11) collate Latin1_General_CS_AI, b nvarchar(11) collate Latin1_General_CS_AI);
GO

INSERT INTO test_like_for_AI_prepare_t6_cs VALUES ('THazmEEm', 'ThÅzeEm'),('Ŭwmed', 'uŴɱêÐ'),('Æmed','aeMéD'),('Șpain','SPÅǏn'), ('THazmEEm', '%z%'), ('Ŭwmed', 'Uw%'), ('Æmed','%éd');
GO

CREATE TABLE test_like_for_AI_prepare_t7_cs (
  col NVARCHAR(50)
);
GO

INSERT INTO test_like_for_AI_prepare_t7_cs (col) VALUES
  ('café'),
  ('jalapeño'),
  ('résumé'),
  ('naïve'),
  ('Piñata'),
  ('Año Nuevo'),
  ('TELÉFONO'),
  ('película'),
  ('árbol'),
  ('canapé'),
  ('chaptéR'),
  ('TEññiȘ'),
  (null);
GO

CREATE TABLE test_like_for_AI_prepare_t13_1_cs (
  col1 NVARCHAR(50) COLLATE Latin1_General_CS_AI, col2 NVARCHAR(50) COLLATE Latin1_General_CS_AI
);
GO

INSERT INTO test_like_for_AI_prepare_t13_1_cs VALUES
  ('café', 'prójimo'),
  ('jalapeño', 'aburrí'),
  ('résumé', 'críquet'),
  ('naïve', 'cuídate'),
  ('Piñata', 'gárgola'),
  ('Año Nuevo', 'gárgola'),
  ('TELÉFONO', 'núcleo'),
  ('película', 'réquiem'),
  ('árbol', 'difícil'),
  ('canapé', 'crédito'),
  ('chaptéR', 'enérgetico'),
  ('TEññiȘ', 'patín'),
  ('lúdico', 'lúdico'),
  (null, null);
GO

CREATE TABLE test_like_for_AI_prepare_t13_2_cs (
  col NVARCHAR(50) COLLATE Latin1_General_CS_AI
);
GO

INSERT INTO test_like_for_AI_prepare_t13_2_cs VALUES
  ('aburrí'),
  ('brújula'),
  ('résumen'),
  ('calabacín'),
  ('gárgola'),
  ('lúdico'),
  ('ácaro'),
  ('reísteis'),
  ('gígabyte'),
  ('crédito'),
  ('ídolo'),
  ('trocéis'),
  (null);
GO

-- GENERIC TABLE FOR ESCAPE CLAUSE --
CREATE TABLE test_like_for_AI_prepare_escape
(
 c1 int IDENTITY(1, 1)
,string nvarchar(50) 
);
GO

--Note: we rely on identity value being generated sequentially 
--from 1 in same order as the values in INSERT
INSERT INTO test_like_for_AI_prepare_escape (string) 
VALUES
 ('451201-7825')
,('451201x7825')
,('Andersson')
,('Bertilsson')
,('Carlson')
,('Davidsson')
,('Eriksson')
,('Fredriksson')
,('F')
,('F.')
,('Göransson')
,('Karlsson')
,('KarlsTon')
,('Karlson')
,('Persson')
,('Uarlson')
,('McDonalds')
,('MacDonalds')
,('15% off')
,('15 % off')
,('15 %off')
,('15 %')
,('15 % /off')
,('My[String')
,('My]String')
,('My[]String')
,('My][String')
,('My[valid]String')
,(null);

GO

-- TESTS FOR COLUMN LEVEL CONSTRAINTS
-- Create the employee table with the computed column and check constraint
CREATE TABLE test_like_for_AI_prepare_employee_CS_AI (
    id INT PRIMARY KEY,
    name NVARCHAR(MAX) COLLATE Latin1_General_CS_AI,
    CONSTRAINT check_name_starts_with_a 
        CHECK (name COLLATE Latin1_General_CS_AI LIKE 'A%')
);
GO

--- ADDITIONAL CORNER CASE TESTING ---

-- Insert the string into the table
CREATE TABLE test_like_for_AI_prepare_max_test(a nvarchar(4000));
GO

INSERT INTO test_like_for_AI_prepare_max_test VALUES (REPLICATE('Æ', 4000));
GO

-- create and insert data for chinese
CREATE TABLE test_like_for_AI_prepare_chinese(a nvarchar(MAX));
GO

INSERT INTO test_like_for_AI_prepare_chinese VALUES('中国人'), ('微笑'), ('谢谢你。');
GO

-- TESTS FOR INDEX SCAN
create table test_like_for_AI_prepare_index (c1 varchar(20) COLLATE Latin1_General_CI_AI, c2 nvarchar(20) COLLATE Latin1_General_CS_AI);
create index c1_idx on test_like_for_AI_prepare_index (c1);
create index c2_idx on test_like_for_AI_prepare_index (c2);
GO

insert into test_like_for_AI_prepare_index values ('JONES','JONES');
insert into test_like_for_AI_prepare_index values ('JoneS','JoneS');
insert into test_like_for_AI_prepare_index values ('jOnes','jOnes');
insert into test_like_for_AI_prepare_index values ('abcD','ABCd');
insert into test_like_for_AI_prepare_index values ('äbĆD','äƀCd');
GO

-- TESTS for remove_accents_internal
-- function
CREATE FUNCTION test_like_for_AI_prepare_function(@input_text TEXT) RETURNS sys.NVARCHAR(MAX)
AS BEGIN
    DECLARE @output_text NVARCHAR(MAX);
    SET @output_text = sys.remove_accents_internal(@input_text);
    RETURN @output_text;
END;
GO

-- view
CREATE VIEW test_like_for_AI_prepare_view AS
SELECT
    sys.remove_accents_internal(col) AS cleaned_col
FROM
    test_like_for_AI_prepare_t1_ci;
GO

-- procedure
CREATE PROCEDURE test_like_for_AI_prepare_procedure @input_text TEXT AS
SELECT sys.remove_accents_internal(@input_text);
GO