---Full Readmission Summary (Evidence Table)
SELECT 
    Age,
    Gender,
    NUMBER_OF_DIAGNOSES,
    LENGTH_OF_STAY,
    PREVIOUS_ADMISSIONS,
    Readmission
FROM "HOSPITAL"."PUBLIC"."PATIENTSINFO"
ORDER BY Readmission DESC, Age DESC;
