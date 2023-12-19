DROP TABLE IF EXISTS 'student_marks';
DROP TABLE IF EXISTS 'group_';
DROP TABLE IF EXISTS 'student';
CREATE TABLE student_marks(
  student_id integer primary key,
  math_mark_average float,
  physics_mark_average float,
  python_mark_average float
);
INSERT INTO 'student_marks' VALUES(1,2,3,5);
INSERT INTO 'student_marks' VALUES(2,3,2,4);
INSERT INTO 'student_marks' VALUES(3,4,5,3);
CREATE TABLE group_(
  id integer primary key,
  name varchar(255) not null,
  description varchar(255)
);
INSERT INTO 'group_' VALUES(1,'KU 2304','norm tips');
INSERT INTO 'group_' VALUES(2,'23 IVT 3','pon');
INSERT INTO 'group_' VALUES(3,'BVT 2303','ar ar ar ar ar');
CREATE TABLE student(
  id integer references student_marks(student_id),
  name varchar(255),
  group_id integer not null references group_(id)
);
INSERT INTO 'student' VALUES(1,'Evgenii P',2);
INSERT INTO 'student' VALUES(1,'Zhivoderov D',3);
