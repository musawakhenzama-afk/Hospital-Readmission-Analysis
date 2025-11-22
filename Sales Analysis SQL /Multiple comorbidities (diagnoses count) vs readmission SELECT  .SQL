---Multiple comorbidities (diagnoses count) vs readmission
SELECT 
    NUMBER_OF_DIAGNOSES AS diagnoses,
    COUNT(*) AS total_patients,
    COUNT(CASE WHEN Readmission = 'Yes' THEN 1 END) AS readmissions,
    (COUNT(CASE WHEN Readmission = 'Yes' THEN 1 END) * 100.0 / COUNT(*)) AS readmission_rate
FROM "HOSPITAL"."PUBLIC"."PATIENTSINFO"
GROUP BY diagnoses
ORDER BY diagnoses DESC;
