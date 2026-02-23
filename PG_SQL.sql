DROP TABLE IF EXISTS public.store_sales;
CREATE TABLE public.store_sales (
  Record_ID int primary key,
	Store int,
	Department int,
	Weekly_Sales numeric,
	IsHoliday boolean,
	Date date,
	Year int,
	Month int,
	Month_Name varchar);
	

INSERT INTO public.store_sales(
	record_id, store, department, weekly_sales, isholiday, date, year, month,month_Name)
VALUES 
(1, 1, 1, 100, FALSE, '2021-01-01', 2021, 1, 'January'),
(2, 1, 1, 240, FALSE, '2021-01-02', 2021, 1,'January'),
(3, 1, 1, 130, FALSE, '2021-01-03', 2021, 1, 'January'),
(4, 1, 1, 220, FALSE, '2021-01-04', 2021, 1,'January'),
(5, 1, 1, 500, FALSE, '2021-01-05', 2021, 1, 'January'),
(6, 1, 1, 240, FALSE, '2021-01-06', 2021, 1,'January'),
(7, 1, 1, 130, FALSE, '2021-01-07', 2021, 1, 'January'),
(8, 1, 1, 220, FALSE, '2021-01-08', 2021, 1,'January'),		 
(9, 1, 1, 100, FALSE, '2021-02-01', 2021, 2, 'February'),
(10, 1, 1, 240, FALSE, '2021-02-02', 2021, 2,'February'),
(11, 1, 1, 130, FALSE, '2021-02-03', 2021, 2, 'February'),
(12, 1, 1, 220, FALSE, '2021-02-04', 2021, 2,'February'),
(13, 1, 1, 100, FALSE, '2021-03-01', 2021, 3, 'March'),
(14, 1, 1, 240, FALSE, '2021-03-02', 2021, 3,'March'),
(15, 1, 1, 130, FALSE, '2021-03-03', 2021, 3, 'March'),
(16, 1, 1, 220, FALSE, '2021-03-04', 2021, 3,'March'),
(17, 1, 1, 500, FALSE, '2021-03-05', 2021, 3, 'March'),
(18, 1, 1, 240, FALSE, '2021-03-06', 2021, 3,'March'),
(19, 1, 1, 130, FALSE, '2021-04-07', 2021, 4, 'April'),
(20, 1, 1, 220, FALSE, '2021-04-08', 2021, 4,'April'),		 
(21, 1, 1, 100, FALSE, '2021-04-01', 2021, 4, 'April'),
(22, 1, 1, 240, FALSE, '2021-04-02', 2021, 4,'April'),
(23, 1, 1, 130, FALSE, '2021-04-03', 2021, 4, 'April'),
(24, 1, 1, 220, FALSE, '2021-04-04', 2021, 4,'April');

SELECT * FROM public.store_sales;

SELECT * FROM store2


SELECT
record_id,
store,
department,
weekly_sales,
isholiday,
date,
year,
month,
month_name
FROM public.store_sales
WHERE 1=1

SELECT *
FROM (
SELECT
record_id,
store,
department,
weekly_sales,
isholiday,
date,
year,
month,
month_name
FROM public.store_sales
) t
