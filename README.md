# Pewlett-Hackard-Analysis
## Overview of the analysis

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


- 
## Results
## Summery
