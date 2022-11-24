create database test1;
use test1;

select * from subjects;
create table subjects(
                         subjectID int auto_increment primary key,
                         subjectName nvarchar(50));

create table students(
                         studentID int auto_increment primary key,
                         studentName nvarchar(50),
                         age int,
                         email varchar(100));

create table classes(
                        classID int auto_increment primary key,
                        className nvarchar(50));


create table marks(
                      mark int,
                      subjectID int,
                      studentID int,
                      foreign key (subjectID) references subjects(subjectID),
                      foreign key (studentID) references students(studentID));

create table classStudent(
                             studentID int,
                             classID int,
                             foreign key (studentID) references students(studentID),
                             foreign key (classID) references classes(classID));


select * from students;
insert into students(studentID, studentName, age, email) value (1, 'Nguyen Quang An', 18, 'an@yahoo.com');
insert into students(studentID, studentName, age, email) value (2, 'Nguyen Cong Vinh', 20, 'vinh@gmail.com');
insert into students(studentID, studentName, age, email) value (3, 'Nguyen Van Quyen', 19, 'quyen');
insert into students(studentID, studentName, age, email) value (4, 'Pham Thanh Binh', 25, 'binh@com');
insert into students(studentID, studentName, age, email) value (5, 'Nguyen Van Tai Em', 30, 'taiem@sport.vn');


select * from classes;
insert into classes(classID, className) value (1, 'C0706L');
insert into classes(classID, className) value (2, 'C0708G');


select * from classStudent;
insert into classStudent(studentID, classID) value (1, 1);
insert into classStudent(studentID, classID) value (2, 1);
insert into classStudent(studentID, classID) value (3, 2);
insert into classStudent(studentID, classID) value (4, 2);
insert into classStudent(studentID, classID) value (5, 2);


select * from subjects;
insert into subjects(subjectID, subjectName) value (1, 'SQL');
insert into subjects(subjectID, subjectName) value (2, 'Java');
insert into subjects(subjectID, subjectName) value (3, 'C');
insert into subjects(subjectID, subjectName) value (4, 'Visual Basic');


select * from marks;
insert into marks(mark, subjectID, studentID) value (8, 1, 1);
insert into marks(mark, subjectID, studentID) value (4, 2, 1);
insert into marks(mark, subjectID, studentID) value (9, 1, 1);
insert into marks(mark, subjectID, studentID) value (7, 1, 3);
insert into marks(mark, subjectID, studentID) value (3, 1, 4);
insert into marks(mark, subjectID, studentID) value (5, 2, 5);
insert into marks(mark, subjectID, studentID) value (8, 3, 3);
insert into marks(mark, subjectID, studentID) value (1, 3, 5);
insert into marks(mark, subjectID, studentID) value (3, 2, 4);
