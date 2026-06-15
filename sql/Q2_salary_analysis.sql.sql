-- Average salary by department AND attrition status
select Department , Attrition, 
count(*) as total_emp, 
round(avg(MonthlyIncome),0) as avg_monthly_income,
min(MonthlyIncome),
max(MonthlyIncome)
from employee
group by Department , Attrition 
order by Department, Attrition desc;