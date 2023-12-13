
Step 6: Clean the company_name column.

As can be seen above, this column contains some unnecessary characters that needs to be removed. We can do this using the following query


-- clean out unnecessary characters
SELECT 
    company_name, 
    SUBSTR(company_name, 1, LENGTH(company_name) - 4) AS cleaned_company_name
FROM jobs;

-- update our table
UPDATE jobs
SET company_name = SUBSTR(company_name, 1, LENGTH(company_name) - 4);
This query uses the SUBSTR() function to retrieve the characters from the company_name column starting from the first character (index 1) and excluding the last 3 characters (-3).
