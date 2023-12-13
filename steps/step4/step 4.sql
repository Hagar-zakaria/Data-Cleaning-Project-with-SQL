STEP 4: Clean job_title column
On close examination of the job_title column, it contains several variations of the word ‘senior’ and ‘junior’, we would have to harmonize them to keep them all in one form.

We can examine the different job titles using this query.

SELECT DISTINCT(job_title), COUNT(*) AS job_count
FROM jobs
GROUP BY job_title
ORDER BY job_count DESC;

We can use a sequence of UPDATE statements to standardize and modify specific job titles within the jobs table. The purpose of these updates is to homogenize job titles, ensuring consistency and readability across the job_title column.

Each UPDATE statement would utilize the REPLACE() function to find specific instances of job titles within the job_title column and replace them with our standardized versions or amended titles.

-- standardize the data
UPDATE jobs
SET job_title = REPLACE(job_title, 'Sr Data Scientist', 'Senior Data Scientist');

UPDATE jobs
SET job_title = REPLACE(job_title,  'Sr Data Engineer (Sr BI Developer)', 'Senior Data Engineer (Senior BI Developer');

UPDATE jobs
SET job_title = REPLACE(job_title, 'Jr. Business Data Analyst (position added 6/12/2020)', 'Junior Business Data Analyst');

UPDATE jobs
SET job_title = REPLACE(job_title,  'Jr. Data Engineer', 'Junior Data Engineer');

UPDATE jobs
SET job_title = REPLACE(job_title, 'Data Scientist 3 (718)', 'Data Scientist 3');

UPDATE jobs
SET job_title = REPLACE(job_title, '(Sr.) Data Scientist -', 'Senior Data Scientist');

UPDATE jobs
SET job_title = REPLACE(job_title, 'Sr. ML/Data Scientist - AI/NLP/Chatbot', 'Senior ML/Data Scientist - AI/NLP/Chatbot');

UPDATE jobs
SET job_title = REPLACE(job_title, 'Sr Scientist - Extractables & Leachables', 'Senior Scientist - Extractables & Leachables');

UPDATE jobs
SET job_title = REPLACE(job_title,  'Sr Data Analyst', 'Senior Data Analyst');

UPDATE jobs
SET job_title = REPLACE(job_title, 'Machine Learning Scientist - Bay Area, CA', 'Machine Learning Scientist');

UPDATE jobs
SET job_title = REPLACE(job_title,  'Sr. Data Scientist II', 'Senior Data Scientist II');

UPDATE jobs
SET job_title = REPLACE(job_title, 'Data Scientist - TS/SCI FSP or CI Required', 'Data Scientist');

UPDATE jobs
SET job_title = REPLACE(job_title, 'ENGINEER - COMPUTER SCIENTIST - RESEARCH COMPUTER SCIENTIST - SIGNAL PROCESSING - SAN ANTONIO OR', 'Research Computing Scientist');

UPDATE jobs
SET job_title = REPLACE(job_title, 'Sr. Research Associate/ Scientist, NGS prep & Molecular Genomics', 'Senior Research Associate / Scientist, NGS prep & Molecular Genomics');

UPDATE jobs
SET job_title = REPLACE(job_title, 'Sr. Data Analyst', 'Senior Data Analyst');

UPDATE jobs
SET job_title = REPLACE(job_title, 'COMPUTER SCIENTIST - ENGINEER - RESEARCH COMPUTER SCIENTIST - TRANSPORTATION TECHNOLOGY', 'Research Computer Scientist');

UPDATE jobs
SET job_title = REPLACE(job_title, 'ELISA RESEARCH SCIENTIST (CV-15)', 'ELISA Research Scientist (CV-15');

UPDATE jobs 
SET job_title = REPLACE(job_title, 'Health Plan Data Analyst, Sr', 'Health Plan Data Analyst, Senior');

UPDATE jobs
SET job_title = REPLACE(job_title, 'Machine Learning Engineer, Sr.', 'Machine Learning Engineer, Senior');
Now, we have a cleaner version.

