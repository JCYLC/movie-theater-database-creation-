CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100)
);

CREATE TABLE tickets (
  ticket_id VARCHAR(200) PRIMARY KEY,
  order_date DATE DEFAULT CURRENT_DATE,
  movie_date DATE,
  ticket_price NUMERIC(8,2),
  total_price NUMERIC(10,2),
  customer_id INTEGER NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE movies (
  movie_id SERIAL PRIMARY KEY,
  movie_name VARCHAR(200),
  ticket_id VARCHAR(200) NOT NULL,
  FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id)
);

CREATE TABLE concessions (
  concession_id SERIAL PRIMARY KEY,
  concession_name VARCHAR(100),
  address VARCHAR(200),
  movie_id INTEGER NOT NULL,
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);