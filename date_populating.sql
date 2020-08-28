DELIMITER //
CREATE PROCEDURE Datesplit ()
BEGIN

	DECLARE StartDate DATETIME;
	DECLARE EndDate DATETIME;

	SET @StartDate = '2018/01/01';
	SET @EndDate = '2019/01/01';

	DECLARE DayOfWeekInMonth INT;
	DECLARE DayOfWeekInYear INT;
	DECLARE DayOfQuarter INT;
	DECLARE WeekOfMonth INT;
	DECLARE CurrentYear INT;
	DECLARE CurrentMonth INT;
	DECLARE CurrentQuarter INT;

	CREATE TABLE DayOfWeek(
	DOW INT,
	MonthCount INT,
	QuarterCount INT,
	YearCount INT
	);

	Insert into DayOfWeek
	(DOW,MonthCount,QuarterCount,YearCount values)
	(1,0,0,0),
	(2,0,0,0),
	(3,0,0,0),
	(4,0,0,0),
	(5,0,0,0),
	(6,0,0,0),
	(7,0,0,0);

	DECLARE CurrentDate DATETIME;
	SET @CurrentDate = @StartDate; 
	SET @CurrentMonth = DAYOFMONTH(@CurrentDate);
	SET @CurrentYear = DAYOFYEAR(@CurrentDate);

	WHILE @CurrentDate < @EndDate DO
		IF @CurrentMonth != DAYOFMONTH(@CurrentDate) 
		THEN
			UPDATE DayOfWeek;
			SET MonthCount = 0;
			SET @CurrentMonth = DAYOFMONTH(@CurrentDate);
		END IF;

		IF @CurrentYear != DAYOFYEAR(@CurrentDate)
			UPDATE DayOfWeek;
			SET YearCount = 0;
			SET @CurrentYear = DAYOFYEAR(YY, @CurrentDate)
		END IF;
	
