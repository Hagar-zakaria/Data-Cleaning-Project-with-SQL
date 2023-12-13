
STEP 5: Extract unnecessary characters from the salary_estimate column
For our next step, we will be extracting the ‘(Glassdoor est.)” values from the column keeping just the figures and also converting the datatype to VARCHAR.

-- examine salary_estimate column
SELECT salary_estimate
FROM jobs
LIMIT 5;

--- Add a cleaned salary_estimate column to the table
ALTER TABLE ds_jobs
ADD COLUMN cleaned_salary_estimate VARCHAR(11); 
-- Update the new column with values based on the SUBSTRING() function
UPDATE ds_jobs
SET cleaned_salary_estimate = SUBSTRING(salary_estimate, 1, 11);
-- Delete the salary_estimate column as it is no longer useful.
ALTER TABLE ds_jobs
DROP COLUMN salary_estimate;
