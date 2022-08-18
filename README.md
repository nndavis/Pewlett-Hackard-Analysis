# Pewlett-Hackard-Analysis
 
## Overview of the Analysis
This project required me to create tables of the number of retiring employees by title as well as a table of the employees eligible for the mentorship program. This is done using SQL to combine data tables and set filters to output the data wanted into new tables. Once the tables are created in PGAdmin, I was able to export them as csv files. The reason I did this was for the "Silver Tsunami." This is a wave of employees reaching retirement age, so these new csv files will make it easy for management to find which positions will need replacements.

## Results
There are four milestone points that I hit while coding this project. The first three points are my tables from the first deliverable, and the last is from my second deliverable. The pictures include what each data table includes. The functions used for these tables includes: select, into, from, join, where, order, distinct, and group by.
- Retirement Titles ; this used data from the employees table and titles table. I also filtered birth date from 1952-1955.
<img width="531" alt="retirement_titles" src="https://user-images.githubusercontent.com/104074135/185465669-6e8a7311-6004-4377-a3b8-a742271f2ccc.png">

- Unique Titles ; this used data from the retirement titles table previously created. I used Distinct On to remove duplicate rows because there were some employees appearing twice as positions may have changed.
<img width="536" alt="unique_titles" src="https://user-images.githubusercontent.com/104074135/185466289-0ca891c0-84b8-459f-a5d7-bb25805031e3.png">

- Retiring Titles ; this used data from unique titles to count and output how the number of retiring employees per job title.
<img width="535" alt="retiring_titles" src="https://user-images.githubusercontent.com/104074135/185466524-3a7ba168-7a06-4c6c-a44e-ad80d0f8da40.png">

- Mentorship Eligibility ; this used data from the employees, department employee, and titles tables. I used distinct on to retrieve the first occurence of the employee number for each set of rows. I also joined the tables primary keys.
<img width="558" alt="mentorship_eligibility" src="https://user-images.githubusercontent.com/104074135/185466713-d475b8b9-efe9-427c-b582-da54a8e2296a.png">


## Summary
How many roles will need to be filled as the "silver tsunami" begins to make an impact? To answer this it's best to let the data do the talking. Below you'll see a query written that returns the count of employees born between 1952 and 1955 that were also hired between 1985 and 1988. The count is 41,380 retiring employees.
<img width="598" alt="number_retiring" src="https://user-images.githubusercontent.com/104074135/185472282-512207f0-07c2-443c-a330-c3dce318df46.png">

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees? No, there are not enough mentors for the next generation of employees. With over half the work force set to retire in the next few years the number of available employees able to mentor is not high enough: that number being 1,549. The image shows the end of the table that holds the employees eligbile for mentoring. These employees were chosen from being born in 1965. If we were to broaden the eligibility of employees to mentor then I believe that would help the situation.
<img width="599" alt="mentors" src="https://user-images.githubusercontent.com/104074135/185476624-00172996-cf93-4ef9-a5b4-acacc13fcf43.png">

