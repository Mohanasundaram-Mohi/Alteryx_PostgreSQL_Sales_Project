CREATE TABLE public.store_sales2 (
    Record_ID int primary key,
    Store int,
    Department int,
    Weekly_Sales numeric,
    IsHoliday boolean,
    Date date,
    Year int,
    Month int,
    MonthName varchar
);

select * from public.store_sales2 

INSERT INTO public.store_sales2 (
    record_id, store, department, weekly_sales, isholiday, date, year, month, monthname
)
VALUES
(7, 2, 1, 530, FALSE, '2021-01-07', 2021, 1, 'January'),
(8, 2, 1, 320, FALSE, '2021-01-08', 2021, 1, 'January'),
(9, 2, 1, 500, FALSE, '2021-02-01', 2021, 2, 'February'),
(10, 2, 1, 220, FALSE, '2021-02-02', 2021, 2, 'February'),
(11, 2, 1, 150, FALSE, '2021-02-03', 2021, 2, 'February'),
(12, 2, 1, 210, FALSE, '2021-02-04', 2021, 2, 'February'),
(13, 2, 1, 600, FALSE, '2021-03-01', 2021, 1, 'March'),
(14, 2, 1, 740, FALSE, '2021-03-02', 2021, 1, 'March'),
(15, 2, 1, 230, FALSE, '2021-03-03', 2021, 1, 'March'),
(16, 2, 1, 120, FALSE, '2021-03-04', 2021, 1, 'March'),
(17, 2, 1, 600, FALSE, '2021-03-05', 2021, 1, 'March'),
(18, 2, 1, 430, FALSE, '2021-03-06', 2021, 1, 'March'),
(19, 2, 1, 340, FALSE, '2021-04-07', 2021, 1, 'April'),
(20, 2, 1, 230, FALSE, '2021-04-08', 2021, 1, 'April'),
(21, 2, 1, 210, FALSE, '2021-04-01', 2021, 2, 'April'),
(22, 2, 1, 250, FALSE, '2021-04-02', 2021, 2, 'April'),
(23, 2, 1, 180, FALSE, '2021-04-03', 2021, 2, 'April'),
(24, 2, 1, 660, FALSE, '2021-04-04', 2021, 2, 'April');



CREATE TABLE public.store_info (
    Record_ID int primary key,
    Store int,
    number_of_employees int,
    city varchar(50),
    opening_date date
);

INSERT INTO public.store_info (
    Record_ID, Store, number_of_employees, city, opening_date
)
VALUES
(1, 1, '2', 'Chicago', '2019-01-01'),
(2, 2, '5', 'New York', '2020-03-01');