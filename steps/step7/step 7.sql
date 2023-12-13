Step 7: Fix the size column.

The size column can be cleaned a bit to look more appealing.

SELECT size, 
    CASE
        WHEN size = '-1' THEN '1'
        ELSE REPLACE(size, ' to ', '-')
    END AS cleaned_size
FROM jobs;
