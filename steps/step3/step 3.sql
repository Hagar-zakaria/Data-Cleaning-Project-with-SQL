Step 3: Standardize column names
As can be seen from the column names, it could use some cleaning. I prefer my column names in snake case. Snake case is a naming convention in which each space is replaced with an underscore (_) character, and words are written in lowercase.

In SQL, we can achieve this with the following queries.


ALTER TABLE jobs
    RENAME 'Job Title' TO 'job_title';
    
ALTER TABLE jobs
    RENAME 'Salary Estimate' TO 'salary_estimate';

ALTER TABLE jobs
    RENAME COLUMN 'Job Description' TO 'job_description';

ALTER TABLE jobs
    RENAME COLUMN 'Rating' TO 'rating';

ALTER TABLE jobs
    RENAME COLUMN 'Company Name' TO 'company_name';

ALTER TABLE jobs
    RENAME COLUMN 'Location' TO 'location';

ALTER TABLE jobs
    RENAME COLUMN 'Headquarters' TO 'headquarters';

ALTER TABLE jobs
    RENAME COLUMN 'Size' TO 'size';

ALTER TABLE jobs
    RENAME COLUMN 'Founded' TO 'founded';

ALTER TABLE jobs
    RENAME COLUMN 'Type of ownership' TO 'type_of_ownership';

ALTER TABLE jobs
    RENAME COLUMN 'Industry' TO 'industry';

ALTER TABLE jobs
    RENAME COLUMN 'Sector' TO 'sector';

ALTER TABLE jobs
    RENAME COLUMN 'Revenue' TO 'revenue';

ALTER TABLE jobs
    RENAME COLUMN 'Competitors' TO 'competitors';

