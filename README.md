# Pewlett-Hackard-Analysis
## Overview of the analysis

## Results

### Deliverable 1: The Number of Retiring Employees by Title
- created retirement_titles table that holds all the titles of employees who were born between January 1,1952 and December 31,1955.As I want to retrieve all records with titles table I used employees table RIGHT JOIN with titles table.


     ![](images/retirement_titlesQ.PNG)
 
    retirements_title table:
    
     ![](images/retirement_titles_table.PNG)
   
- Then used DISTINCT ON statement to create a table that contains the most recent title of each employee and created new table named unique_titles.

- And then exclude those employees that have already left the company by filtering on to_date to keep only those dates that are equal to '9999-01-01'.

    ![](images/distinct%20titleQ.PNG)
 
 
   unique_titles table:
 
    ![](images/unique_titles_table.PNG)

- Finally wrote statement to retreive the number of employees by their most recent job titel who are about to retire.For that query used COUNT() on emp_no and GROUP BY title ,to retreive title wise count from unique_titles table.
 
   ![](images/counttitleQ.PNG)
    
   retiring_title table:
    
   
     ![](images/retirering_title%20table.PNG)


### Deliverable 2: The Employees Eligible for the Mentorship Program

Wrote statement and create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.

- Used INNER JOIN  on emp and dept_emp tables to etrieved the emp_no, first_name, last_name, and birth_date columns from employees table and from_date and to_date from dept_emp tabele.

- In same statement again used INNER JOIN on titles and employee table to retrive title from titles tabel.

- Used DISTINCT ON statement to retreive the first occurence of the employee number.
- Filtered the data on the to_date column to all the curent employees by using ,to_date = '9999-01-01'.And filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.

     ![](images/mentonship_eligibilityQ.PNG)
     
     mentoship_eligi table
     
     ![](
     
## Summery
