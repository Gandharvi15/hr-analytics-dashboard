-- Attrition rate per department
SELECT Department, count(*) AS Total_emp, 
sum(case when Attrition='Yes' then 1 else 0 end) as emp_left, 
round(sum(case when Attrition='Yes' then 1 else 0 end)*100/count(*),1) as attrition_rate_pct
From employee
group by Department
order by Attrition_rate_pct desc;
