CREATE TABLE customers (
  id        SERIAL PRIMARY KEY,
  name      VARCHAR(30) NOT NULL,
  email     VARCHAR(120) NOT NULL,
  address   VARCHAR(120),
  city      VARCHAR(30),
  postcode  VARCHAR(12),
  country   VARCHAR(20)
);

create table bank_details (
id        SERIAL PRIMARY KEY,
customer_id INT REFERENCES customers(id),
bank_name   VARCHAR(38) NOT NULL,
iban_code   VARCHAR(30) NOT NULL
);

CREATE table hotels (
hotel_id        SERIAL PRIMARY KEY,
hotel_name        VARCHAR(30) NOT NULL,
street            VARCHAR(30) NOT NULL,
number_of_street          INT NOT NULL,
city              VARCHAR(15),
country           VARCHAR(15) NOT NULL,
postal_code       INT         NOT NULL,
number_of_rooms   INT
);

CREATE table rooms (
room_id        SERIAL PRIMARY KEY,
room_number         INT NOT NULL,
price_per_night     VARCHAR(10),
hotel_id            INT REFERENCES hotels(hotel_id),
type_of_room        VARCHAR(30)
);

CREATE table bookings (
bookings_id        SERIAL PRIMARY KEY,
room_id         INT REFERENCES rooms(room_id),
customer_id     INT REFERENCES customers(id),
check_in_date   DATE,
number_of_nights   INT
);

INSERT into customers ( name, email, address, city, postcode, country ) values ( 'Elialba', 'eli@gmail.com', 'artesania street', 'Barcelona', '19023', 'Spain' );
INSERT into hotels (hotel_name, street, number_of_street, city,) values ( 'Triple Point Hotel', 'marbella', '169', 'barcelona' );