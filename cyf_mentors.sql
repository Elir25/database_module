DROP TABLE IF EXISTS mentors;
DROP TABLE IF EXISTS students;

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
  graduated_from_migracode Boolean NOT NULL
  
);
---inserting mentors---
INSERT INTO mentors (name, years_in_town, address, favourite_prog_lang ) values ('Anne', 4, 'hill street', 'javascript' );
INSERT INTO mentors (name, years_in_town, address, favourite_prog_lang ) values ('Tomas', 1, 'moon street', 'java' );
INSERT INTO mentors (name, years_in_town, address, favourite_prog_lang ) values ('Han', 10, 'downtown street', 'Python' );
INSERT INTO mentors (name, years_in_town, address, favourite_prog_lang ) values ('Sophia', 2, 'Anton street', 'java' );
INSERT INTO mentors (name, years_in_town, address, favourite_prog_lang ) values ('Leo', 5, 'last street', 'javascript' );

---inserting students---
INSERT INTO students (name, address, graduated_from_migracode ) values ('Anne', 'artesania street', true );
INSERT INTO students (name, address, graduated_from_migracode ) values ('Leon', 'maragal', false );
INSERT INTO students (name, address, graduated_from_migracode ) values ('Amanda', 'hill street', false );
INSERT INTO students (name, address, graduated_from_migracode ) values ('Maria', 'heart street', true );
INSERT INTO students (name, address, graduated_from_migracode ) values ('Virginia', 'moon street', false );
INSERT INTO students (name, address, graduated_from_migracode ) values ('Simon', 'moon street', true );
INSERT INTO students (name, address, graduated_from_migracode ) values ('Virginia', 'moon street', true );
INSERT INTO students (name, address, graduated_from_migracode ) values ('Enia', 'born, barcelona', false );
INSERT INTO students (name, address, graduated_from_migracode ) values ('Rodrigo', 'somewhere', false );
INSERT INTO students (name, address, graduated_from_migracode ) values ('Kiki', 'moon street', false );


---read the data from tables----
select * from mentors;
select * from students;