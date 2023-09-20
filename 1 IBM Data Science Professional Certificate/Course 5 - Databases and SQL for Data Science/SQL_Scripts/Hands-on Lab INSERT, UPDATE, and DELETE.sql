# The following is done using MySql oppose to IBM Db2...
CREATE TABLE coursera.Instructor(ins_id integer, lastname varchar(255), firstname varchar(255), city varchar(255), country varchar(255));
INSERT INTO coursera.Instructor(ins_id, lastname, firstname, city, country)
VALUES(4, 'Saha', 'Sandip', 'Edmonton', 'CA'), (5, 'Doe', 'John', 'Sydney', 'AU'), (6, 'Doe', 'Jane', 'Dhaka', 'BD');

# Task B:Practice exercises on INSERT
# 1.Insert a new instructor record with id 7 for Antonio Cangiano who lives in Vancouver, CA into the “Instructor” table.
INSERT INTO coursera.Instructor
VALUES (7, 'Antonio', 'Cangiano', 'Vancouver', 'CA');
# 2.Insert two new instructor records into the “Instructor” table. First record with id 8 for Steve Ryan who lives in Barlby, GB. Second record with id 9 for Ramesh Sannareddy who lives in Hyderabad, IN.
INSERT INTO coursera.Instructor
Values (8, 'Steve', 'Ryan', 'Barlby', 'GB'), (9, 'Ramesh', 'Sannareddy', 'Hyderabad', 'IN');

# Task B:Practice exercises on UPDATE
# 1.Update the city of the instructor record to Markham whose id is 1.
UPDATE coursera.Instructor
SET city = 'Markham'
WHERE ins_id = 1;
# 2.Update the city and country for Sandip with id 4 to Dhaka and BD respectively.
UPDATE coursera.Instructor
SET city = 'Dhaka', country = 'BD'
WHERE ins_id = 4 AND firstname = 'Sandip';

# Task B:Practice exercise on DELETE
# 1.Remove the instructor record of Sandip.
DELETE 
FROM coursera.Instructor
WHERE firstname = 'Sandip';

