Step 8. Clean the type_of_ownership column.

-- clean type of ownership column
SELECT type_of_ownership
FROM jobs
GROUP BY type_of_ownership;

As can be seen above, this column contains data we need to standardize, i.e replacing the “-1” values to “unknown” and changing the “Company — Private” and “Company — Public” values for easier reading.

We can achieve this using CASE WHEN statements.

UPDATE jobs
SET type_of_ownership = 
    CASE 
        WHEN type_of_ownership = 'Company - Private' THEN 'Private Company'
        WHEN type_of_ownership = 'Company - Public' THEN 'Public Company'
        WHEN type_of_ownership = -1 THEN 'Unknown'
        ELSE type_of_ownership -- Keeps other values unchanged
    END;

