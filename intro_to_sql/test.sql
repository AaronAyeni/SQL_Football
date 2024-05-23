DROP TABLE people;

CREATE TABLE people(
    id SERIAL,
    account_balance INT
);

INSERT INTO people (account_balance) VALUES (10);
INSERT INTO people (account_balance) VALUES (0);

-- transaction/atomic transaction
BEGIN;
UPDATE people SET account_balance = 0 WHERE id = 1;
SAVEPOINT money_withdrawn;
UPDATE people SET account_balance = 100 WHERE id = 2;
ROLLBACK TO money_withdrawn;
UPDATE people set account_balance = 10 WHERE id = 2;
COMMIT;

SELECT * FROM people;
