-- Summary dashboard numbers
SELECT
    COUNT(*)                                                          AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)              AS total_left,
    ROUND(AVG(CASE WHEN Attrition = 'Yes' THEN 1.0 ELSE 0 END)*100,1) AS overall_attrition_pct,
    ROUND(AVG(YearsAtCompany), 1)                                    AS avg_tenure_years,
    ROUND(AVG(MonthlyIncome), 0)                                     AS avg_monthly_salary,
    ROUND(AVG(Age), 1)                                               AS avg_age
FROM employee;