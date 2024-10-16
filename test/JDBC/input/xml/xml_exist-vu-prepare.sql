CREATE TABLE babel_5222_xml_exist_t1 (XmlColumn XML)
GO

INSERT INTO babel_5222_xml_exist_t1
VALUES ('<artists> <artist name="John Doe"/> <artist name="Edward Poe"/> <artist name="Mark The Great"/> </artists>')
GO

CREATE TABLE babel_5222_xml_exist_t2 (Id INT PRIMARY KEY, XmlColumn XML);
GO

INSERT INTO babel_5222_xml_exist_t2 (Id, XmlColumn)
VALUES (1, '<Root><Child1>Value1</Child1></Root>'),
       (2, '<Root><Child2>Value2</Child2></Root>'),
       (3, '<Root><Child1>Value1</Child1><Child2>Value2</Child2></Root>');
GO

CREATE TABLE babel_5222_xml_exist_text (XmlColumn TEXT)
GO

INSERT INTO babel_5222_xml_exist_text
VALUES ('<artists> <artist name="John Doe"/> <artist name="Edward Poe"/> <artist name="Mark The Great"/> </artists>')
GO

CREATE TYPE dbo.babel_5222_xml_exist_varcharUDT FROM VARCHAR(100);
GO

CREATE TYPE dbo.babel_5222_xml_exist_imageUDT FROM IMAGE;
GO

CREATE TYPE dbo.babel_5222_xml_exist_xmlUDT FROM XML;
GO

CREATE TABLE babel_5222_xml_exist_udt (VarUDTColumn dbo.babel_5222_xml_exist_varcharUDT, ImageUDTColumn dbo.babel_5222_xml_exist_imageUDT, XmlUDTColumn dbo.babel_5222_xml_exist_xmlUDT)
GO

INSERT INTO babel_5222_xml_exist_udt
VALUES ('<Root><Child1>Value1</Child1></Root>', CAST('<Root><Child1>Value1</Child1></Root>' AS IMAGE), '<Root><Child1>Value1</Child1></Root>')
GO

CREATE VIEW babel_5222_xml_exist_dep_view AS
    SELECT XmlColumn.exist('/artists/artist/@name') as nameExists FROM babel_5222_xml_exist_t1
GO

CREATE PROCEDURE babel_5222_xml_exist_dep_proc AS
    SELECT XmlColumn.exist('/artists/artist/@name') FROM babel_5222_xml_exist_t1
GO

CREATE FUNCTION babel_5222_xml_exist_dep_func()
RETURNS BIT
AS
BEGIN
RETURN (SELECT TOP 1 XmlColumn.exist('/artists/artist/@name') FROM babel_5222_xml_exist_t1)
END
GO

CREATE FUNCTION babel_5222_xml_exist_itvf_func()
RETURNS TABLE
AS
RETURN (SELECT XmlColumn.exist('/artists/artist/@name') as nameExists FROM babel_5222_xml_exist_t1)
GO

CREATE FUNCTION dbo.babel_5222_xml_exist_func1()
RETURNS XML
AS
BEGIN
RETURN CAST('<artists> <artist name="John Doe"/> <artist name="Edward Poe"/> <artist name="Mark The Great"/> </artists>' as XML)
END
GO

-- computed columns
CREATE TABLE babel_5222_xml_exist_compcol(id INT, col_xml XML, comp_col as col_xml.exist('/artist/@name'))
GO

-- check constraints
CREATE TABLE babel_5222_xml_exist_constraint(col_xml XML, constraint chkNameExist check(col_xml.exist('/artist/@name') = 1))
GO

-- UDF wrapper function on exist
CREATE FUNCTION dbo.wrapper_xmlexist1(@xml XML)
RETURNS sys.BIT
AS
BEGIN
RETURN @xml.exist('/artist/@name');
END
GO

-- change the volatility of wrapper_xmlexist1 to immutable
EXEC sys.sp_babelfish_volatility 'wrapper_xmlexist1', 'immutable'
GO
EXEC sys.sp_babelfish_volatility 'wrapper_xmlexist1'
GO

-- computed columns on wrapper function
CREATE TABLE babel_5222_xml_exist_compcol1(id INT, col_xml XML, comp_col as dbo.wrapper_xmlexist1(col_xml))
GO

-- check constraints on wrapper function
CREATE TABLE babel_5222_xml_exist_constraint1(col_xml XML, constraint chkNameExist1 check(wrapper_xmlexist1(col_xml) = 1))
GO


SET QUOTED_IDENTIFIER OFF
GO

SELECT SESSIONPROPERTY('QUOTED_IDENTIFIER')
GO

-- creating dependent view on xml exist when quoted_identifier is OFF
CREATE VIEW babel_5222_xml_exist_dep_view2 AS
    SELECT XmlColumn.exist('/artists/artist/@name') as nameExists FROM babel_5222_xml_exist_t1
GO

-- creating wrapper function on xml exist when quoted_identifier is OFF
CREATE FUNCTION dbo.wrapper_xmlexist2(@xml XML)
RETURNS sys.BIT
AS
BEGIN
RETURN @xml.exist('/artist/@name');
END
GO

-- change the volatility of wrapper_xmlexist2 to immutable
EXEC sys.sp_babelfish_volatility 'wrapper_xmlexist2', 'immutable'
GO
EXEC sys.sp_babelfish_volatility 'wrapper_xmlexist2'
GO

-- creating computed columns on wrapper function when quoted_identifier is OFF
CREATE TABLE babel_5222_xml_exist_compcol2(id INT, col_xml XML, comp_col as dbo.wrapper_xmlexist2(col_xml))
GO

-- creating check constraints on wrapper function when quoted_identifier is OFF
CREATE TABLE babel_5222_xml_exist_constraint2(col_xml XML, constraint chkNameExist2 check(wrapper_xmlexist2(col_xml) = 1))
GO


SET QUOTED_IDENTIFIER ON
GO

SELECT SESSIONPROPERTY('QUOTED_IDENTIFIER')
GO


-- Create a table to test the trigger and constraints
CREATE TABLE babel_5222_xml_exist_school_details (
    id INT,
    student XML
);
GO

INSERT INTO babel_5222_xml_exist_school_details (id, student)
VALUES
    (1, '<student classid="1" rollid="1" studentname="StudentA" />'),
    (2, '<student classid="1" rollid="2" studentname="StudentB" />'),
    (3, '<student classid="1" rollid="3" studentname="StudentC" />'),
    (4, '<student classid="2" rollid="1" studentname="StudentD" />'),
    (5, '<student classid="2" rollid="2" studentname="StudentE" />')
GO

-- Create a trigger to display invalid student entries
CREATE TRIGGER  babel_5222_xml_exist_tr_parital_student_entry
ON babel_5222_xml_exist_school_details
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SELECT id, student AS invalid_entries FROM babel_5222_xml_exist_school_details
    WHERE student.exist('/student/@classid') = 0
            OR student.exist('/student/@rollid') = 0
            OR student.exist('/student/@studentname') = 0
    ORDER BY id;
END;
GO
