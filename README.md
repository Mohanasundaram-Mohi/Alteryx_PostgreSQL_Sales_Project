# 🚀 Alteryx + PostgreSQL Sales Analytics Project

## 📌 Project Overview

This project demonstrates an end-to-end data pipeline using PostgreSQL and Alteryx.

The workflow integrates relational tables, performs transformations, and enriches data using joins.

---

## 🛠 Tools Used

* PostgreSQL
* Alteryx Designer
* ODBC Connectivity
* Excel (Hybrid ingestion)

---

## 🗄 Dataset

Tables:

* store_sales
* store_sales2
* store_info

---

## ⚙ Workflow Steps

1. PostgreSQL table ingestion using ODBC
2. In-DB filtering (record_id > 5)
3. Derived metric calculation (weekly_sales * 2)
4. Join store_sales2 with store_info
5. Full Outer Join for enrichment
6. Temporary table creation
7. Output results back to PostgreSQL

---

## 🧾 SQL Implementation

### 🔹 Create Tables

```sql
DROP TABLE IF EXISTS public.store_sales;
DROP TABLE IF EXISTS public.store_sales2;
DROP TABLE IF EXISTS public.store_info;

CREATE TABLE public.store_sales (
  Record_ID int primary key,
  Store int,
  Department int,
  Weekly_Sales numeric,
  IsHoliday boolean,
  Date date,
  Year int,
  Month int,
  MonthName varchar(20)
);

CREATE TABLE public.store_sales2 (
  Record_ID int primary key,
  Store int,
  Department int,
  Weekly_Sales numeric,
  IsHoliday boolean,
  Date date,
  Year int,
  Month int,
  MonthName varchar(20)
);

CREATE TABLE public.store_info (
  Record_ID int primary key,
  Store int,
  number_of_employees int,
  city varchar(50),
  opening_date date
);
```

---

### 🔹 Insert Data

```sql
INSERT INTO public.store_sales VALUES
(1,1,1,100,FALSE,'2021-01-01',2021,1,'January'),
(2,1,1,240,FALSE,'2021-01-02',2021,1,'January'),
(3,1,1,130,FALSE,'2021-01-03',2021,1,'January');

INSERT INTO public.store_sales2 VALUES
(7,2,1,530,FALSE,'2021-01-07',2021,1,'January'),
(8,2,1,320,FALSE,'2021-01-08',2021,1,'January');

INSERT INTO public.store_info VALUES
(1,1,2,'Chicago','2019-01-01'),
(2,5,5,'New York','2020-03-01');
```

---

## 🔄 Alteryx Workflow Implementation

### 🔹 Standard Workflow

* Input Data tool → store_sales2
* Summarize weekly sales
* Output Data tool → PostgreSQL

### 🔹 In-Database Workflow

* Connect In-DB → PostgreSQL ANSI connection
* Filter In-DB → record_id > 5
* Formula In-DB → weekly_sales * 2
* Join In-DB → store_sales2 with store_info
* Full Outer Join → enriched dataset
* Write Data In-DB → temporary table
* Browse In-DB → preview results

---

## 📊 Key Learning

* PostgreSQL ODBC connectivity
* In-DB vs Standard workflow
* Metadata handling in Alteryx
* Data enrichment via joins
* Hybrid data integration

---

## 📷 Workflow

<img width="2954" height="1304" alt="workflow_hd" src="https://github.com/user-attachments/assets/e963451c-6438-4ca2-b133-a38ca6c212bb" />


---

## 👨‍💻 Author

Mohan
