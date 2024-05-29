CREATE VIEW test_conv_string_to_time_v1 as (SELECT CONVERT(time, '13:01:59'));
GO
CREATE PROCEDURE test_conv_string_to_time_p1 as (SELECT CONVERT(time, '13:01:59'));
GO
CREATE FUNCTION test_conv_string_to_time_f1()
RETURNS time AS
BEGIN
RETURN (SELECT CONVERT(time, '13:01:59'));
END
GO

CREATE VIEW test_conv_string_to_time_v2 as (SELECT CONVERT(time, '00:00:00'));
GO
CREATE PROCEDURE test_conv_string_to_time_p2 as (SELECT CONVERT(time, '00:00:00'));
GO
CREATE FUNCTION test_conv_string_to_time_f2()
RETURNS time AS
BEGIN
RETURN (SELECT CONVERT(time, '00:00:00'));
END
GO

CREATE VIEW test_conv_string_to_time_v3 as (SELECT CONVERT(time, '1:1:1'));
GO
CREATE PROCEDURE test_conv_string_to_time_p3 as (SELECT CONVERT(time, '1:1:1'));
GO
CREATE FUNCTION test_conv_string_to_time_f3()
RETURNS time AS
BEGIN
RETURN (SELECT CONVERT(time, '1:1:1'));
END
GO

CREATE VIEW test_conv_string_to_time_v4 as (SELECT CONVERT(time, CAST('13:01:59' AS TEXT)));
GO
CREATE PROCEDURE test_conv_string_to_time_p4 as (SELECT CONVERT(time, CAST('13:01:59' AS TEXT)));
GO
CREATE FUNCTION test_conv_string_to_time_f4()
RETURNS time AS
BEGIN
RETURN (SELECT CONVERT(time, CAST('13:01:59' AS TEXT)));
END
GO

CREATE VIEW test_conv_string_to_time_v5 as (SELECT CONVERT(time, CAST('13:01:59' AS CHAR(10))));
GO
CREATE PROCEDURE test_conv_string_to_time_p5 as (SELECT CONVERT(time, CAST('13:01:59' AS CHAR(10))));
GO
CREATE FUNCTION test_conv_string_to_time_f5()
RETURNS time AS
BEGIN
RETURN (SELECT CONVERT(time, CAST('13:01:59' AS CHAR(10))));
END
GO

CREATE VIEW test_conv_string_to_time_v6 as (SELECT CONVERT(time, CAST('13:01:59' AS NCHAR(10))));
GO
CREATE PROCEDURE test_conv_string_to_time_p6 as (SELECT CONVERT(time, CAST('13:01:59' AS NCHAR(10))));
GO
CREATE FUNCTION test_conv_string_to_time_f6()
RETURNS time AS
BEGIN
RETURN (SELECT CONVERT(time, CAST('13:01:59' AS NCHAR(10))));
END
GO

CREATE VIEW test_conv_string_to_time_v7 as (SELECT CONVERT(time, CAST('13:01:59' AS NVARCHAR(10))));
GO
CREATE PROCEDURE test_conv_string_to_time_p7 as (SELECT CONVERT(time, CAST('13:01:59' AS NVARCHAR(10))));
GO
CREATE FUNCTION test_conv_string_to_time_f7()
RETURNS time AS
BEGIN
RETURN (SELECT CONVERT(time, CAST('13:01:59' AS NVARCHAR(10))));
END
GO

CREATE VIEW test_conv_string_to_time_v8 as (SELECT CONVERT(time, CAST('13' AS INTEGER)));
GO
CREATE PROCEDURE test_conv_string_to_time_p8 as (SELECT CONVERT(time, CAST('13' AS INTEGER)));
GO
CREATE FUNCTION test_conv_string_to_time_f8()
RETURNS time AS
BEGIN
RETURN (SELECT CONVERT(time, CAST('13' AS INTEGER)));
END
GO

CREATE VIEW test_conv_string_to_time_v9 as (SELECT CONVERT(time, CAST('13:01:59' AS VARCHAR(10))));
GO
CREATE PROCEDURE test_conv_string_to_time_p9 as (SELECT CONVERT(time, CAST('13:01:59' AS VARCHAR(10))));
GO
CREATE FUNCTION test_conv_string_to_time_f9()
RETURNS time AS
BEGIN
RETURN (SELECT CONVERT(time, CAST('13:01:59' AS VARCHAR(10))));
END
GO

CREATE VIEW test_conv_string_to_time_v10 as (SELECT CONVERT(time, '02-03-2003 11:11:11 +11:11'));
GO

CREATE VIEW test_conv_string_to_time_v11 as (SELECT CONVERT(time, cast('02-03-2003 11:11:11 +11:11' as sys.varchar(100))));
GO

CREATE VIEW test_conv_string_to_time_v12 as (SELECT CONVERT(time, CAST('20' as INTEGER)));
GO