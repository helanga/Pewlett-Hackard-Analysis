# Pewlett-Hackard-Analysis
## Overview of the analysis

## Results

### Deliverable 1: The Number of Retiring Employees by Title
created retirement_titles table that holds all the titles of employees who were born between January 1,1952 and December 31,1955.As I want to retrieve all records with titles table I used employees table RIGHT JOIN with titles table.I used right join on titles table ,because one employee can have more than one title.

 ![](images/retirement_titlesQ.PNG)
     
  retirements_title table:
    
  ![](images/retirement_titles_table.PNG)
  
 -   this table has 133776 records.including duplicate values for same employee different titles. as a example emp_no 4 ,Chirstian is has 2 records with 2 titles Enginner and Senior Engineer.In 1986 he was a Engineer and then from 1995 He promoted to senior Engineer.So this table includes all employes each and every title from he/she joined to company till now.
     
     

Then used DISTINCT ON statement to create a table that contains the most recent title of each employee and created new table named unique_titles.And then exclude those employees that have already left the company by filtering on to_date to keep only those dates that are equal to '9999-01-01'.

![](images/distinct%20titleQ.PNG)
 
 
unique_titles table:
 
![](images/unique_titles_table.PNG)

 - this unique_titles table only has most recent titiele for current employees who's recently going to retire.
so this only has 72458 records.


Finally wrote statement to retreive the number of employees by their most recent job titel who are about to retire.For that query used COUNT() on emp_no and GROUP BY title ,to retreive title wise count from unique_titles table.
 
![](images/counttitleQ.PNG)
    
   retiring_title table:
    
![](images/retirering_title%20table.PNG)

- From looking at this output at glance we can say how many employees going to retire for each title.i.e 25916 Senior Engineers going to be retire.and only 2 Managers going to be retire.According to the table we can say 70% of employees in this retiring_table is senior stafe.

### Deliverable 2: The Employees Eligible for the Mentorship Program

Wrote statement and create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.
 Used DISTINCT ON statement to retreive the first occurence of the employee number.Filtered the data on the to_date column to all the curent employees by using ,to_date = '9999-01-01'.And filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.

![](images/mentonship_eligibilityQ.PNG)
     
mentoship_eligi table
     
![](images/mentoshi_eligi_table.PNG)

- this table shows detail of mentoship_eligibility employees.and it has count of 1549 records.Now then hierachy of company has to deside is there enough peole in mentoship_eleigibility programme to train new employees?

## Summery
