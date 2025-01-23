# Postgres-Lec10-Jan-22-25
Prep for quiz -union , distinct, on delete

## not on quiz
* cross join: all possible combinations between 2 tables 
* union : join 2 columns from 2 tables with the same name to be 1 column with all values from both tables
  * can be duplicate, to resolve duplicate:
  ```
  select distinct(city) from(
     select City from table1
      union 
     select City from table 2)
  ```
* on delete set null
* on update cascade