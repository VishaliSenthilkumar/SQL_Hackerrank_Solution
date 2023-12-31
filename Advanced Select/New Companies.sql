# Author: Thomas George Thomas
SELECT c.company_code,c.founder,
count(distinct lm.lead_manager_code),
count(distinct sm.senior_manager_code),
count(distinct m.manager_code), 
count(distinct e.employee_code)
FROM Company c, Lead_Manager lm, Senior_Manager sm, Manager m, Employee e
WHERE
c.company_code=lm.company_code AND
lm.lead_manager_code=sm.lead_manager_code AND
sm.senior_manager_code=m.senior_manager_code AND
m.manager_code=e.manager_code
GROUP BY c.company_code,c.founder
ORDER BY c.company_code ASC

#Another way
SELECT company.company_code, 
       founder, 
       Count(DISTINCT lead_manager_code), 
       Count(DISTINCT senior_manager_code), 
       Count(DISTINCT manager_code), 
       Count(DISTINCT employee_code) 
FROM company 
       JOIN (employee) 
         ON ( company.company_code = employee.company_code ) 
GROUP BY company_code,founder
ORDER BY company_code
