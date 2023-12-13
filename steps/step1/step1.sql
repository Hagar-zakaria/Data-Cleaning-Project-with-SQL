Step 1. Create a new table to work with.
Our first step would be to create a new copy of our table/dataset we are working with as we don’t want to mess with the original data.

CREATE TABLE jobs AS
SELECT *
FROM Uncleaned_DS_jobs;
The query above creates a new table ‘jobs’, which is essentially a copy of our original data.
