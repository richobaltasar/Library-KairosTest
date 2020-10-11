CREATE PROCEDURE [dbo].[SP_GetDiffDays]
	@Date1 nvarchar(20),
	@Date2 nvarchar(20)
AS
	SELECT DATEDIFF(DAY, 
	replace(CONVERT(VARCHAR(10), CONVERT(date, @Date1, 105), 23),'-',''), 
	replace(CONVERT(VARCHAR(10), CONVERT(date, @Date2, 105), 23),'-','')) Total
