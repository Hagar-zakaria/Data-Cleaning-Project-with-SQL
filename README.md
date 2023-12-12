# Data Cleaning Project with SQL

This project involves the cleaning of a dataset containing web-scrapped job posts from Glassdoor for data science jobs using SQL. The primary tool used is SQL (SQLite).

## Project Description

In this project, we will perform essential data cleaning tasks on a dataset of web-scrapped job posts from Glassdoor for data science jobs. The major tool used would be SQL (SQLite).

## Overview of the Project

- [Create a new table to work with](#step-1-create-a-new-table-to-work-with)
- [Examine the table structure](#step-2-examine-the-table-structure)
- [Standardize column names](#step-3-standardize-column-names)
- [Clean `job_title` column](#step-4-clean-job_title-column)
- [Extract unnecessary characters from the `salary_estimate` column](#step-5-extract-unnecessary-characters-from-the-salary_estimate-column)
- [Clean the `company_name` column](#step-6-clean-company_name-column)
- [Fix the `size` column](#step-7-fix-size-column)
- [Clean the `type_of_ownership` column](#step-8-clean-type_of_ownership-column)
- [Clean the `competitors` column](#step-9-clean-competitors-column)

## Step 1: Create a new table to work with

Our first step would be to create a new copy of our table/dataset we are working with as we don’t want to mess with the original data.

```sql
CREATE TABLE jobs AS
SELECT *
FROM Uncleaned_DS_jobs;
![Untitled](https://github.com/Hagar-zakaria/Data-Cleaning-Project-with-SQL/assets/93611934/063f8420-2725-456e-bf1c-0a2a91a1c98c)
