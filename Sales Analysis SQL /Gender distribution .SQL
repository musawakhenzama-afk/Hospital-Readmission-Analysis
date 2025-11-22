---Gender distribution
SELECT 
    Gender,
    COUNT(*) AS total
FROM "HOSPITAL"."PUBLIC"."PATIENTSINFO"
GROUP BY Gender
ORDER BY total DESC;
