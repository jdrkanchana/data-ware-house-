CREATE TABLE DimDate
	(	DateKey INT, 
		Datte DATETIME,
		/* dd-mm-yyyy*/
		FullDateUK CHAR(10), 
		/* */
		DaysOfMonth VARCHAR(2), 
		/* suffix 1st or 2nd or 3rd*/
		DaySuffix VARCHAR(4), 
		/* Sunday or Monday or Tuesday etc*/
		DaysName VARCHAR(9), 
		/* first day monday=1 and so forth till sunday =7 */
		DayOfWeekUK CHAR(1),
		/*For the respective month the 1st Monday, 2nd Month or 3rd Monday or 4th Monday*/
		DayOfWeekInMonth VARCHAR(2), 
		DayOfWeekInYear VARCHAR(2),
		DayOfQuarter VARCHAR(3),
		DaysOfYear VARCHAR(3),
		WeekOfMonth VARCHAR(1),
		WeekOfQuarter VARCHAR(2), 
		WeeksOfYear VARCHAR(2),
		aMonth VARCHAR(2), 
		aMonthName VARCHAR(9),
		MonthOfQuarter VARCHAR(2),
		aQuarter CHAR(1),
		QuarterName VARCHAR(9),
		aYear CHAR(4),
		YearName CHAR(7), 
		MonthYear CHAR(10), 
		MMYYYY CHAR(6),
		FirstDayOfMonth DATE,
		LastDayOfMonth DATE,
		FirstDayOfQuarter DATE,
		LastDayOfQuarter DATE,
		FirstDayOfYear DATE,
		LastDayOfYear DATE,
		/* if weekend then 0, else if weekday then1*/
		IsWeekday BIT,
		/* Can name a holiday in UK*/
		HolidayUK VARCHAR(50) Null,
		/* if nationalholiday then 1 if not national holiday then 0*/
		IsHolidayUK BIT Null,
		PRIMARY KEY (DateKey)
	);
