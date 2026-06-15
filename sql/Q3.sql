-- Tenure cohort analysis
select case when yearsatcompany<2 then '0-1 years (Early)'
            when yearsatcompany<5 then '2-4 years (Mid)'
            when yearsatcompany<10 then '5-9 years (Senior)'
            else '10+ years (Veterany)'
            End as tenure_cohort,
sum(case when attrition ='yes' then 1 else 0 end) as emp_left,
count(*) as total_emp,
round(sum(case when attrition ='yes' then 1 else 0 end)*100/count(*),2) AS attrition_rate_pct,
round(avg(monthlyincome),2) as avg_salary
from employee
group by tenure_cohort
order by attrition_rate_pct desc;