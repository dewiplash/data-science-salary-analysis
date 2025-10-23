-- AVERAGE SALARY BY EXPERIENCE LEVEL
SELECT 
    experience_level,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary_usd
FROM Salaries
GROUP BY experience_level
ORDER BY avg_salary_usd DESC;



-- TOP COUNTRIES BY AVERAGE SALARY
SELECT 
	company_location,
	ROUND(AVG(salary_in_usd), 2) AS avg_salary,
	COUNT(*) AS num_jobs
FROM dbo.salaries
GROUP BY company_location
HAVING COUNT(*) > 10			-- IN THE DATASET SOME COUNTRIES HAVE ONLY A COUPLE OF JOBS (<10) WHICH MAY NOT BE AS REPRESENTATIVE, THAT'S WHY ONLY THOSE THAT HAVE MORE THAN 10 REGISTERS ARE BEING CONSIDERED
ORDER BY avg_salary DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;



-- HIGHEST PAID ROLES
SELECT TOP 15
	job_title,
	ROUND(AVG(salary_in_usd), 2) AS role_avg_salary,
	COUNT(*) AS job_count
FROM dbo.salaries
GROUP BY job_title
HAVING COUNT(*) >= 5
ORDER BY role_avg_salary DESC


		

-- IMPACT OF REMOTE WORKING
SELECT 
    work_modality,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary_usd,
    COUNT(*) AS num_roles
FROM Salaries
GROUP BY work_modality
ORDER BY avg_salary_usd DESC;



--AVERAGE DATA ANALYST SALARY
SELECT 
	job_title,
	ROUND(AVG(salary_in_usd), 2) AS avg_salary
FROM dbo.salaries
WHERE job_title = 'Data Analyst'
GROUP BY job_title

--AVG DATA ANALYST SALARY EVOLUTION IN TIME
SELECT 
	work_year,
	ROUND(AVG(salary_in_usd), 2) AS avg_salary
FROM dbo.salaries
WHERE job_title = 'Data Analyst'
GROUP BY work_year