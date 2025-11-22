SELECT 
    CASE 
        WHEN Age BETWEEN 51 AND 70 THEN '51–70'
        ELSE 'Other'
    END AS Age_Group,
    COUNT(*) AS total_patients,
    COUNT(CASE WHEN Readmission = 'Yes' THEN 1 END) AS readmitted,
    (COUNT(CASE WHEN Readmission = 'Yes' THEN 1 END) * 100.0 / COUNT(*)) AS readmission_rate
FROM "HOSPITAL"."PUBLIC"."PATIENTSINFO"
GROUP BY Age_Group
ORDER BY readmission_rate DESC;
