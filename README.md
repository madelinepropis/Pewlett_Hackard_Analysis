# Pewlett Hackard Challange

## Overview of Project

The purpose of this analysis was to perform employee research for Pewlett Hackard. As baby boomers are retiring, the company needs an analysis performed to determine who will be retiring in the near future and how many positions would need to be filled. After this analysis was completed, I was tasked with finding the numbers of retiring employees per title and identifying employees who are eligible to participate in a mentorship program. This analysis was done using SQL to create an employee database and for data modeling, engineering and analysis skills to find results.

## Results

### Titles

Using the employee database, I created three additional tables to determine information pertaining to retiring employees per title. Results are below:

![image](https://user-images.githubusercontent.com/109561408/190302550-6dcfb2ff-3f28-49ee-a0f2-299cb44befb8.png)

Analysis:

* The "manager" title has the lowest number of potential retirees.
* "Senior engineer" and "senior staff" titles are more than half of the potential retirees. 
* There are a total of 72,458 employees retiring based on the table.
* There are many more "senior engineers" retiring than "engineers" and "assistant engineers".

### Mentorship Eligibility

Using the employee database, I created an additional table to determine information for employees eligible to participate in a mentorship program. 

Analysis:

* There are 1,549 employees elibile to participate in the mentorship program.
* There are no employees with the "manager" title eligible to participate in the mentorship program.
* All employees eligible were born in 1965.
* The last eligible employee to join the company joined in 2002. 

## Summary

### More Insight

There are 72,458 employees retiring. As these employees begin retiring, these positions will become open. It appears that there are 1,549 employees eligible to participate in the mentorship program. I do not believe that this number of mentors is feasible to sustain the program. There would be 46 or 47 new hires to each mentor, which is too many to provide individual support. The employees, however, seem to be qualified based on titles. There are no managers eligible, but there are mostly senior employees eligible to participate. 

### Additional Queries/Tables

One additional table that could be beneficial contains information displaying the number of employees participating in the mentorship program by title. The query and table are below:

![image](https://user-images.githubusercontent.com/109561408/190302811-31db3871-567f-42f7-836d-45055a488b8c.png)

![image](https://user-images.githubusercontent.com/109561408/190301187-b2163b2b-b6d5-48e3-9941-1bc67aa775d8.png)

Additionally, a table displaying the number of retiring employees per department would be helpful to see which departments will be impacted the most. The query and table are below:

![image](https://user-images.githubusercontent.com/109561408/190302861-c3348559-b6e0-45a5-8e77-106515878d23.png)
  
![image](https://user-images.githubusercontent.com/109561408/190302348-c4ebceaf-4607-4a15-8029-3978d2eb0525.png)

