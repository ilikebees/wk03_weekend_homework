DROP TABLE tickets; --unsure about the order these are meant to go in. I think maybe the join table goes first?
DROP TABLE customers;
DROP TABLE films;





CREATE TABLE customers (
  id SERIAL4 PRIMARY KEY, -- look up what the heck primary key means again.
  name VARCHAR(255),
  funds INT4
);

CREATE TABLE films (
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(255),
  price INT4
);


CREATE TABLE tickets (
  id SERIAL4 PRIMARY KEY,
  customer_id INT4 REFERENCES customers(id), -- do I need delete cascade here?
  film_id INT4 REFERENCES films(id) -- do I need delete cascade here?
);
