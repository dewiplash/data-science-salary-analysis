-- UPDATING REMOTE-RATIO COLUMN NAME TO WORK-MODALITY AND VALUES FROM 0, 50, 100 TO ON-SITE, HYBRID, REMOTE TO BE MORE READABLE

EXEC sp_rename 'salaries.remote_ratio', 'work_modality', 'COLUMN';


ALTER TABLE dbo.salaries
ALTER COLUMN work_modality VARCHAR(50);


UPDATE dbo.salaries
SET work_modality = CASE work_modality
    WHEN '0' THEN 'On site'
    WHEN '50' THEN 'Hybrid'
    WHEN '100' THEN 'Remote'
END;




-- UPDATING EXPERIENCE_LEVEL VALUES TO BE MORE READABLE

ALTER TABLE dbo.salaries
ALTER COLUMN experience_level VARCHAR(50);

UPDATE dbo.salaries
SET experience_level = CASE experience_level
    WHEN 'EN' THEN 'Junior'
    WHEN 'MI' THEN 'Intermediate'
    WHEN 'SE' THEN 'Senior'
    WHEN 'EX' THEN 'Executive'
END;


