INSERT INTO customers(
	customer_id,
	first_name,
	last_name
)VALUES(
	1,
	'Joel',
	'Carter'
);

INSERT INTO tickets (
  ticket_id,
  movie_date,
  ticket_price,
  total_price,
  customer_id
)VALUES(
	'1vds354',
	'12-08-23',
	30.09,
	33.78,
	1
);

INSERT INTO movies (
  movie_id,
  movie_name,
  ticket_id
)VALUES(
	'123',
	'THE NOTEBOOK',
	'1vds354'
);

INSERT INTO concessions (
  concession_id,
  concession_name,
  address,
  movie_id
 )VALUES(
	789,
	'Eagle Theater',
	'1234 abcd Rd CA Palo Alto 96780',
	'123'
);