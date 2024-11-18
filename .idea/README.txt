README

1. Create the database using the script found in 'Create Database.sql'
2. Perform insertions using the scripts found in each of the insertion sql files in this order:
   Locations and Teams Insertions.sql
   Players Insertions.sql
   Coach Insertions.sql
   Transaction Insertions.sql
   Assets Insertions.sql
3. Finalize the database by running the scripts found in Post-Insertion Table Updates.sql. This file exists to fix the implementation of some things that were changed in the development of the database and so had to be changed outside of the creation script.
4. To add the views from project deliverable 2, run the scripts found in Views.sql
5. 'Salary Front End.zip' contains the python program that serves as the front end. Ensure you are using mysql and that you have adjusted the host, user, and password in the python file based on your mysql settings. Once you have established a connection to mysql successfully, the program should work as intended.