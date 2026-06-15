-- High-risk employee profile
select department, jobrole, count(*) as total_emp,
round(avg(monthlyincome),0) as avg_salary,
round(avg(yearsatcompany),1) as avg_tenure_year,
round(sum(case when attrition ='yes' then 1 else 0 end)*100/ count(*),2) as attrition_rate_pct
from employee
group by department , jobrole
order by attrition_rate_pct desc;