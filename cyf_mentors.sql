DROP TABLE IF EXISTS mentors;
DROP TABLE IF EXISTS attendees;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS classes;

---create the tables ---
CREATE TABLE mentors (
  id               SERIAL PRIMARY KEY,
  name             VARCHAR(10) NOT NULL,
  years_in_Glasgow    INT NOT NULL,
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
INSERT INTO mentors (name,years_in_Glasgow, address, favourite_prog_lang ) values ('Anne', 4, 'hill street', 'javascript' );
INSERT INTO mentors (name, years_in_Glasgow, address, favourite_prog_lang ) values ('Tomas', 1, 'Moon road', 'java' );
INSERT INTO mentors (name, years_in_Glasgow, address, favourite_prog_lang ) values ('Han', 10, 'Downtown street', 'Python' );
INSERT INTO mentors (name, years_in_Glasgow, address, favourite_prog_lang ) values ('Sophia', 2, 'Anton street', 'java' );
INSERT INTO mentors (name, years_in_Glasgow, address, favourite_prog_lang ) values ('Leo', 5, 'Last road', 'javascript' );

---inserting students---
INSERT INTO students (name, address, graduated_from_migracode ) values ('Anne', 'Main road', true );
INSERT INTO students (name, address, graduated_from_migracode ) values ('Leon', 'Neon street', false );
INSERT INTO students (name, address, graduated_from_migracode ) values ('Amanda', 'hill street', false );
INSERT INTO students (name, address, graduated_from_migracode ) values ('Maria', 'heart road', true );
INSERT INTO students (name, address, graduated_from_migracode ) values ('Virginia', 'Moon road', false );
INSERT INTO students (name, address, graduated_from_migracode ) values ('Simon', 'Miles street', true );
INSERT INTO students (name, address, graduated_from_migracode ) values ('Virginia', 'moon street', true );
INSERT INTO students (name, address, graduated_from_migracode ) values ('Enia', 'Billy road', false );
INSERT INTO students (name, address, graduated_from_migracode ) values ('Rodrigo', 'somewhere', false );
INSERT INTO students (name, address, graduated_from_migracode ) values ('Kiki', 'Start street', false );

---insert into classes table---

INSERT into classes ( has_leading_mentor, address, class_topic, class_date ) values ( true, '27 street, Glasgow', 'Javascript II' , '2021-02-01' );
INSERT into classes ( has_leading_mentor, address, class_topic, class_date ) values ( false, 'zoom', 'Github' , '2021-03-01' );
INSERT into classes ( has_leading_mentor, address, class_topic, class_date ) values ( true, 'Hill street, Glasgow', 'Javascript III' , '2021-03-01' );

---insert into attendees table---

INSERT into attendees ( student_id, class_id ) values ( 1, 2  );
INSERT into attendees ( student_id, class_id ) values ( 5, 1  );
INSERT into attendees ( student_id, class_id ) values ( 3, 3  );
INSERT into attendees ( student_id, class_id ) values ( 1, 3  );
INSERT into attendees ( student_id, class_id ) values ( 2, 2  );
INSERT into attendees ( student_id, class_id ) values ( 1, 1  );
INSERT into attendees ( student_id, class_id ) values ( 2, 1  );

---read the data from tables---
select * from mentors;
select * from students;
select * from classes;
SELECT student_id from attendees where class_id = 1;--to see which student id went to the class
SELECT student_id from attendees where class_id = 3;
select * from students where id = 1; ---get student information once we know the id

--to know which student went to each class -- 
select * from students where id = (select student_id from attendees where class_id = 1);

select * from attendees;

select * from mentors where years_in_Glasgow > 5;
select * from mentors where favourite_prog_lang = 'javascript';
select * from students where graduated_from_migracode = true;

select * from classes where class_date < '2021-06-01';
select student_id from attendees where class_id = 1;
