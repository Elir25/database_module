DROP TABLE IF EXISTS bookings;
DROP TABLE IF EXISTS bank_details;
DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS hotels CASCADE;
DROP TABLE IF EXISTS rooms;


---creating the tables---
CREATE TABLE customers (
  id        SERIAL PRIMARY KEY,
  name      VARCHAR(30) NOT NULL,
  email     VARCHAR(120) NOT NULL,
  address   VARCHAR(120),
  city      VARCHAR(30),
  postcode  VARCHAR(12),
  country   VARCHAR(20)
);

CREATE table hotels (
hotel_id        SERIAL PRIMARY KEY,
hotel_name        VARCHAR(30) NOT NULL,
city              VARCHAR(15),
country           VARCHAR(15) NOT NULL
);

CREATE table rooms (
room_id        SERIAL PRIMARY KEY,
--room_number         INT NOT NULL,--
price_per_night     VARCHAR(10),
hotel_id            INT REFERENCES hotels(hotel_id),
type_of_room        VARCHAR(30)
);


create table bank_details (
id        SERIAL PRIMARY KEY,
customer_id INT REFERENCES customers(id),
bank_name   VARCHAR(38) NOT NULL,
iban_code   VARCHAR(30) NOT NULL
);


CREATE table bookings (
bookings_id        SERIAL PRIMARY KEY,
room_id         INT REFERENCES rooms(room_id),
customer_id     INT REFERENCES customers(id),
check_in_date   DATE not NULL,
number_of_nights   INT
);

INSERT into customers ( name, email, address, city, postcode, country ) values ( 'Elialba', 'eli@gmail.com', 'artesania street', 'Barcelona', '19023', 'Spain' );
INSERT into hotels (hotel_name, city, country) values ( 'Triple Point Hotel', 'barcelona', 'Spain' );
INSERT into hotels (hotel_name, city, country) values ( 'Royal Cosmos Hotel', 'barcelona', 'Spain' );
INSERT into hotels (hotel_name, city, country) values ( 'Pacific Petal Motel', 'barcelona', 'Spain' );

select * from customers;
select * from hotels;

