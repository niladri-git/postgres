DROP TABLE Trade;

CREATE TABLE Trade (
   ID 			SERIAL,
   TRD_DT		DATE
);

INSERT INTO Trade (TRD_DT) VALUES (now());
INSERT INTO Trade (TRD_DT) VALUES (now());
INSERT INTO Trade (TRD_DT) VALUES (now());
INSERT INTO Trade (TRD_DT) VALUES (now());

/* 1, 2, 3, 4 */

SELECT * FROM Trade;

DELETE FROM Trade WHERE ID=3;
INSERT INTO Trade (TRD_DT) VALUES (date 'now()' + integer '1');
INSERT INTO Trade (TRD_DT) VALUES (date 'now()' + integer '1');

/* 1, 2, 4, 5, 6 */

SELECT * FROM Trade;

UPDATE Trade SET ID=3 WHERE ID=4;
UPDATE Trade SET ID=4 WHERE ID=5;
UPDATE Trade SET ID=5 WHERE ID=6;

/* 1, 2, 3, 4, 5 */

SELECT * FROM Trade;

SELECT nextval('trade_id_seq');
SELECT setval('trade_id_seq',5);

INSERT INTO Trade (TRD_DT) VALUES (date 'now()' + integer '2');
INSERT INTO Trade (TRD_DT) VALUES (date 'now()' + integer '2');

SELECT * FROM Trade;

/*

C:\Workspaces\Git\postgres\AR>psql -d ar_db
psql (9.3.4)
WARNING: Console code page (850) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

ar_db=# SELECT MAX(id) FROM trade;
 max
-----
   8
(1 row)


ar_db=# SELECT nextval('trade_id_seq');
 nextval
---------
       9
(1 row)


ar_db=# SELECT setval('trade_id_seq',20);
 setval
--------
     20
(1 row)


ar_db=# SELECT nextval('trade_id_seq');
 nextval
---------
      21
(1 row)


ar_db=# INSERT INTO Trade (TRD_DT) VALUES (now());
INSERT 0 1
ar_db=# INSERT INTO Trade (TRD_DT) VALUES (now());
INSERT 0 1
ar_db=#
ar_db=# SELECT * FROM Trade;
 id |   trd_dt
----+------------
  1 | 2014-04-04
  2 | 2014-04-04
  3 | 2014-04-04
  6 | 2014-04-04
  4 | 2014-04-04
  7 | 2014-04-04
  8 | 2014-04-04
 22 | 2014-04-04
 23 | 2014-04-04
(9 rows)

*/


/*

ar_db=# select date 'now()' + integer '2';
  ?column?
------------
 2014-04-06
(1 row)

*/