DROP TABLE IF EXISTS mentors;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS classes;
DROP TABLE IF EXISTS class_Javascript_II;


---create the tables ---
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
  graduated_from_migracode Boolean NOT null
);

CREATE TABLE classes (
  id               SERIAL PRIMARY KEY,
  has_leading_mentor      boolean NOT NULL,
  address           VARCHAR(30) NOT null,
  class_topic       VARCHAR(30) NOT null,
  class_date        DATE
);

CREATE TABLE attendees (
  id               SERIAL PRIMARY KEY,
  student_id      INT references students(id),
  class_id        INT REFERENCES classes(id)
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

---insert into classes table---

INSERT into classes ( has_leading_mentor, address, class_topic, class_date ) values ( true, '27 street, barcelona', 'Javascript II' , '2021-02-01' );
INSERT into classes ( has_leading_mentor, address, class_topic, class_date ) values ( false, 'zoom', 'Github' , '2021-03-01' );
INSERT into classes ( has_leading_mentor, address, class_topic, class_date ) values ( true, '27 street, barcelona', 'Javascript III' , '2021-03-01' );

---insert into attendees table---

---read the data from tables---
select * from mentors;
select * from students;
select * from classes;
SELECT * FROM students WHERE attend_Javascript_II = true;
select * from attendees;