-- Ben Nguyen



-------------------------------------------------------------------------
-- (1) Write a solution to find the ids of products that 
-- are both low fat and recyclable. Return the result table in any order.
Select product_id
From Products
Where low_fats = 'Y' and recyclable = 'Y';

-------------------------------------------------------------------------
-- (2) Find the names of the customer that are not referred by 
-- the customer with id = 2. Return the result table in any order.
Select name
From Customer
Where referee_id != 2 or referee_id is null;

-------------------------------------------------------------------------
-- (3) Write a solution to find the name, population, and area 
-- of the big countries. Return the result table in any order.
Select  name,
        population,
        area
From    World
Where   area >= 3000000 or population >= 25000000;

-------------------------------------------------------------------------
-- (4) Write a solution to find all the authors that viewed at least one of 
-- their own articles. Return the result table sorted by id in ascending order.
Select   distinct author_id as id
From     Views
Where    author_id = viewer_id
Order by author_id asc;

--------------------------------------------------------------------------