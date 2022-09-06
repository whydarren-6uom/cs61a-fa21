create table pizzas as
  select "Pizzahhh" as name, 12 as open, 15 as close union
  select "La Val's"        , 11        , 22          union
  select "Sliver"          , 11        , 20          union
  select "Cheeseboard"     , 16        , 23          union
  select "Emilia's"        , 13        , 18;

create table meals as
  select "breakfast" as meal, 11 as time union
  select "lunch"            , 13         union
  select "dinner"           , 19         union
  select "snack"            , 22;


-- Pizza places that open before 1pm in alphabetical order
create table opening as
SELECT name
  FROM pizzas
  WHERE open < 13
  ORDER BY name DESC;


-- Two meals at the same place
create table double as
SELECT m1.meal, m2.meal, name
  FROM meals as m1, meals as m2, pizzas
  WHERE m2.time - m1.time > 6 AND m1.time >= open AND m1.time <= close AND m2.time >= open AND m2.time <= close;

