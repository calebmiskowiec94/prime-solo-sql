SELECT * FROM syntax_practice WHERE city='chicago';
-- get all users from chicgao

SELECT * FROM syntax_practice WHERE username LIKE '%a%';
-- get all users with 'a' in the name


UPDATE syntax_practice set account_balance='10' where account_balance = '0' AND transactions_attempted = '0';
--he bank is giving a new customer bonus! Update all records with an account balance of 0.00 and a transactions_attempted of 0. Give them a new account balance of 10.00.

-- select all users with 9 transactions
SELECT * from syntax_practice where transactions_attempted>='9';


SELECT * FROM syntax_practice ORDER BY account_balance DESC LIMIT 3;
--highest balance of top three people


--from the bottom 3
SELECT * FROM syntax_practice ORDER BY account_balance ASC LIMIT 3;

SELECT * FROM syntax_practice WHERE account_balance > '100';
-- account balance more than $100

--new value
INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ('bobby','vancouver', '30', '3000','1000000');

DELETE FROM syntax_practice WHERE transactions_completed < '5' and (city='phoenix' OR city='miami');
--miami and phoenix customers with less than five transactions
