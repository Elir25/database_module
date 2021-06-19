CREATE TABLE mentors (
  id               SERIAL PRIMARY KEY,
  name             VARCHAR(10) NOT NULL,
  years_in_town     INT,
  address           VARCHAR(30) NOT NULL,
  favourite_prog_lang VARCHAR(30)
);


CREATE TABLE students (
  id               SERIAL PRIMARY KEY,
  name             VARCHAR(10) NOT NULL,
  address           VARCHAR(30) NOT NULL,
  graduated_from_migracode Boolean NOT NULL,
  
);

select * from mentors;