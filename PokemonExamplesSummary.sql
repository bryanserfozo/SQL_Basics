-- Download the CSV File, import it and call the table pokemon, change all varchar type to varchar(16) and 
-- change the real data types to numeric. 

-- Once the table is created you can cast the boolean values of legendary and mega evolution 
-- by going to the table, clicking properties and changing the data type from int4 to bool. Save using 
-- ctrl + s and click persist. This step isn't directly necessary, it's just useful for converting the values of 0 and 1
-- to true and false respectively. If you choose to ignore this step your queries will vary slightly

-- You may have to utilize the "" notation for some columns names since DBeaver sometimes gets a little funky with column names that are keywords, such as "name"
-- So be cognizant of that and prepared to alter your query


-- Add the query directly under the question

-- Display all data from the table 

-- Display all data for pokemon from generation 1

-- Select all pokemon not in generation 5
select * from pokemon where generation != 5;
select * from pokemon where generation > 5 or generation < 5;

-- Select data for the 5 weakest pokemon in terms of attack
select * from pokemon order by atk limit 5;

-- List the names of the ten fastest pokemon and their speed stats

-- Count the number of red pokemon 
select 'Red', count(*) from pokemon where color = 'Red';

-- Count the number of black legendary pokemon
select count(*) from pokemon where color = 'Black' and legendary = true;

-- Count the number of green pokemon by primary type. Display both type name and respective count

-- Display the name, height and attack stat of the pokemon with the highest attack stat of all pokemon under 1 meter tall
-- Note: the height is given in meters
select name, height, atk from pokemon where height < 1 order by atk desc limit 1;

-- Display the name and special attack stat of the pokemon who has the highest attack stat and is not a legendary

-- List the names of all pokemon whose name starts with the letter "K"

-- List the names of all pokemon whose name ends with the letter "e"

-- Count the number of pokemon whose name start with "C" and have "e" as their next to last letter
select count(*) from pokemon where name like 'C%e_'; 
select name, count(*) from pokemon where name like 'C%e_' group by name;

-- List the names and heights of all legendaries under 2 meters tall
-- Note: the height is given in meters 

-- List the name of the pokemon with serial 182 as well as the length of their name
--select count(*) from pokemon where serial = 182 and
select "NAME", length("NAME") from pokemon where serial = 182;
alter table pokemon rename column "NAME" to "name";

-- Display the average name length for generation three pokemon, floored to the next lowest integer
select floor(avg(length(name))) from pokemon where generation = 3;

-- Count the number of primary fire types in generation 4

-- Display the average base stat total raised to the next highest integer 

-- Find the legendary pokemon with the lowest base stats, name that pokemon and list its stat total

-- Name the seven heaviest pokemon and their weights
select name, weight from pokemon order by weight desc limit 7;

-- Display the names of all pokemon who have a combined attack and special attack over 200

-- Display the names of pokemon who have an absolute difference in defense and special defense greater than or equal to 60

-- Display the name of the pokemon with serial 3931 in uppercase

-- Display the second ability of the pokemon with serial 4741 in lowercase letters only

-- Count the number of distinct primary abilities
select count(distinct ability1) from pokemon;

-- List all distinct hidden abilities alphabetically

--Bonus Quetions
-- Display the percentage of pokemon that are legendaries
-- Hint: Use two queries, one to find the number of entries in the dex and then another to calculate the percentage 

select count(*) from pokemon;
select (count(*) * 100.0 / 1048) from pokemon where legendary = true;

-- Display the percentage of pokemon that are mega evolutions
-- Hint: Use two queries, one to find the number of entries in the dex and then another to calculate the percentage 

-- Display the percentage of pokemon who have over 100 defense
-- Hint: Use two queries, one to find the number of entries in the dex and then another to calculate the percentage


select * from pokemon order by random();