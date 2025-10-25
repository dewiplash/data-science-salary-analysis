# Data formatting and processing

Original Dataset: [Data Science Salaries - Kaggle](https://www.kaggle.com/datasets/ruchi798/data-science-job-salaries/data/code?select=ds_salaries.csv)

This report presents the changes made to the original dataset, the SQL code used to make those changes can be consulted in [this file](../sql/data-cleaning-formatting.sql).


## Changes made

### a. Column names
| Original name | New name | Reason of change |
|-----------------|---------------|------------------|
| remote_ratio | work_modality | The possible values for this column were changed and this way it is clearer and more understandable |

### b. Column data type
| Column | Original type | New type | Reason of change |
|-----------------|---------------|------------------|------------------|
| work_modality | int | varchar (text) | The new possible values for this column are text type, not numbers |


### c. Possible values for some columns
| Column | Original values | New values | Reason of change |
|-----------------|---------------|------------------|------------------|
| work_modality | 0, 50, 100 | On site, Hybrid, Remote | More understandable and easier to cathegorize |
| experience_level | EN, MI, SE, EX | Junior, Intermediate, Senior, Executive | More readable and understandable |
