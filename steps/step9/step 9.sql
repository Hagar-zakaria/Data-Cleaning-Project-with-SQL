
Step 9: Clean the competitors column.
Lastly, we can clean the competitor’s column as most of the values display as -1. Yet again, we would be displaying them as ‘unknown’


SELECT competitors, COUNT(competitors)
FROM ds_jobs
GROUP BY competitors;

--- most of the values show -1, replace with unknown
SELECT competitors,
      CASE WHEN competitors = -1 THEN 'Unknown'
      ELSE competitors
      END AS cleaned_competition
FROM jobs;

--- update TABLE
UPDATE jobs
SET competitors = 
    CASE 
        WHEN competitors = -1 THEN 'Unknown'
        ELSE competitors
    END;