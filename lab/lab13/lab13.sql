.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students
    WHERE color = 'blue' AND pet = 'dog';

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students
    WHERE color = 'blue' AND pet = 'dog';


CREATE TABLE smallest_int_having AS
  SELECT time, smallest FROM students
    GROUP BY smallest HAVING COUNT(*) = 1;


CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color FROM students as A, students as b
    WHERE a.time < b.time AND a.pet = b.pet AND a.song = b.song;


CREATE TABLE sevens AS
  SELECT a.seven FROM students AS a, numbers AS b
    WHERE a.number = 7 AND b."7" = "True" and a.time = b.time;


CREATE TABLE average_prices AS
  SELECT a.category as category, AVG(MSRP) as average_price FROM products AS a GROUP BY a.category;


CREATE TABLE lowest_prices AS
  SELECT a.store, a.item, MIN(A.PRICE) as price FROM inventory AS a
    GROUP BY a.item;

CREATE TABLE shopping_list_helper AS
  SELECT a.item AS item, a.store AS store, b.msrp  / b.rating AS quality, b.category AS category
    FROM lowest_prices AS a, products AS b
      WHERE a.item = b.name;

CREATE TABLE shopping_list AS
  SELECT item, store FROM shopping_list_helper
    GROUP BY category HAVING MIN(quality); 

CREATE TABLE total_bandwidth AS
  SELECT SUM(Mbs) FROM shopping_list AS a, stores AS b
    WHERE a.store = b.store;

