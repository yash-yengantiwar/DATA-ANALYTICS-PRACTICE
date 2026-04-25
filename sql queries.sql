-- Total Revenue
SELECT SUM(Revenue) AS Total_Revenue
FROM hospital_data;

-- Patients by Gender
SELECT Gender, COUNT(*) AS Total_Patients
FROM hospital_data
GROUP BY Gender;

-- Top 5 Cities by Patients
SELECT City, COUNT(*) AS Patient_Count
FROM hospital_data
GROUP BY City
ORDER BY Patient_Count DESC
LIMIT 5;

-- Mortality Count
SELECT COUNT(*) AS Deaths
FROM hospital_data
WHERE Status = 'Dead';
