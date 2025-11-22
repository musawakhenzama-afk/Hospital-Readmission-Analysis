SELECT 
    admission_type,
    COUNT(*) AS total_patients,
    COUNT(CASE WHEN readmission = 'Yes' THEN 1 END) AS readmissions,
    (COUNT(CASE WHEN readmission = 'Yes' THEN 1 END) * 100.0 / COUNT(*)) AS readmission_rate
FROM "HOSPITAL"."PUBLIC"."PATIENTSINFO"
GROUP BY admission_type
ORDER BY readmissions DESC;
