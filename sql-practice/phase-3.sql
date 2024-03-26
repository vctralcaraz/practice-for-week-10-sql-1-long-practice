-- Your code here
-- 1
INSERT INTO customers (name, phone)
VALUES ('Rachel', 1111111111);

-- 2
UPDATE customers
SET points = (SELECT points FROM customers WHERE name = 'Rachel') + 1
WHERE name = 'Rachel';

INSERT INTO coffee_orders (is_redeemed)
VALUES (0);

-- 3
INSERT INTO customers (name, email, phone)
VALUES
('Monica', 'monica@friends.show', 2222222222),
('Phoebe', 'phoebe@friends.show', 3333333333);

-- 4
UPDATE customers
SET points = (SELECT points FROM customers WHERE name = 'Phoebe') + 3
WHERE name = 'Phoebe';

INSERT INTO coffee_orders (is_redeemed)
VALUES (0), (0), (0);

-- 5
UPDATE customers
SET points = (SELECT points FROM customers WHERE name = 'Rachel') + 4
WHERE name = 'Rachel';

INSERT INTO coffee_orders (is_redeemed)
VALUES (0), (0), (0), (0);

UPDATE customers
SET points = (SELECT points FROM customers WHERE name = 'Monica') + 4
WHERE name = 'Monica';

INSERT INTO coffee_orders (is_redeemed)
VALUES (0), (0), (0), (0);

-- 6
SELECT points FROM customers WHERE name = 'Monica';

-- 7
SELECT points FROM customers WHERE name = 'Rachel';

UPDATE customers
SET points = (SELECT points FROM customers WHERE name = 'Rachel') - 10
WHERE name = 'Rachel';

INSERT INTO coffee_orders (is_redeemed)
VALUES (1);

-- 8
INSERT INTO customers (name, email)
VALUES
('Joey', 'joey@friends.show'),
('Chandler', 'chandler@friends.show'),
('Ross', 'ross@friends.show');

-- 9
UPDATE customers
SET points = (SELECT points FROM customers WHERE name = 'Ross') + 6
WHERE name = 'Ross';

INSERT INTO coffee_orders (is_redeemed)
VALUES (0), (0), (0), (0), (0), (0);

-- 10
UPDATE customers
SET points = (SELECT points FROM customers WHERE name = 'Monica') + 3
WHERE name = 'Monica';

INSERT INTO coffee_orders (is_redeemed)
VALUES (0), (0), (0);

-- 11
SELECT points FROM customers WHERE name = 'Phoebe';

UPDATE customers
SET points = (SELECT points FROM customers WHERE name = 'Phoebe') + 1
WHERE name = 'Phoebe';

INSERT INTO coffee_orders (is_redeemed)
VALUES (0);

-- 12
UPDATE customers
SET points = (SELECT points FROM customers WHERE name = 'Ross') - 2
WHERE name = 'Ross';

DELETE FROM coffee_orders
WHERE id = 19 AND id = 18;

-- 13
UPDATE customers
SET points = (SELECT points FROM customers WHERE name = 'Joey') + 2
WHERE name = 'Joey';

INSERT INTO coffee_orders (is_redeemed)
VALUES (0), (0);

-- 14
SELECT points FROM customers WHERE name = 'Monica';

UPDATE customers
SET points = (SELECT points FROM customers WHERE name = 'Monica') - 10
WHERE name = 'Monica';

INSERT INTO coffee_orders (is_redeemed)
VALUES (1);


-- 15
DELETE FROM customers
WHERE name = 'Chandler';

-- 16
SELECT points FROM customers WHERE name = 'Ross';

UPDATE customers
SET points = (SELECT points FROM customers WHERE name = 'Ross') + 1
WHERE name = 'Ross';

INSERT INTO coffee_orders (is_redeemed)
VALUES (0);

-- 17
SELECT points FROM customers WHERE name = 'Joey';

UPDATE customers
SET points = (SELECT points FROM customers WHERE name = 'Joey') + 1
WHERE name = 'Joey';

INSERT INTO coffee_orders (is_redeemed)
VALUES (0);

-- 18
UPDATE customers
SET email = 'p_as_in_phoebe@friends.show'
WHERE name = 'Phoebe';