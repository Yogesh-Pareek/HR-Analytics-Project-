use hr_analytic;
select * from hr_compile;

#KPI -1 
select sum(attritonnumerical) from hr_compile;
select department, round(avg(attritonnumerical)*100,2) as Attrition_Rate from hr_compile  group by department ;

#KPI -2
select jobrole from hr_compile;
select gender from hr_compile;
select avg(HourlyRate) as "Avg hourly rate of male research scientist" from hr_compile where jobrole = "Research Scientist" and gender = "Male";

#KPI -3
select MonthlyIncome, round(avg(attritonnumerical*100),2) as Attrition_Rate from hr_compile  group by MonthlyIncome order by monthlyincome;



#KPI -4
select department, round(avg(TotalWorkingYears),2) as "Avg working Years" from hr_compile  group by department ;

#KPI -5
select jobrole, round(avg(worklifebalance),2) as "Avg work_Life_Balance" from hr_compile  group by Jobrole ;

#KPi -6
select Yearssincelastpromotion as Years_Since_last_Promotion, round(avg(attritonnumerical)*100,2) as Attrition_Rate 
from hr_compile  group by Yearssincelastpromotion order by Yearssincelastpromotion;






