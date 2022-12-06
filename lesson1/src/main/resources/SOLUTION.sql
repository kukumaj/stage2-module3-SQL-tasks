
CREATE TABLE Student (id BIGINT PRIMARY KEY, name VARCHAR(255), birthday DATE, "group" INT);
CREATE TABLE Subject (id BIGINT PRIMARY KEY, name VARCHAR(255), description VARCHAR(255), grade INT);
CREATE TABLE PaymentType (id BIGINT PRIMARY KEY, name VARCHAR(255));
CREATE TABLE Payment (id BIGINT PRIMARY KEY, type_id BIGINT REFERENCES PaymentType(id), amount DECIMAL, student_id BIGINT REFERENCES Student(id), payment_date TIMESTAMP);
CREATE TABLE Mark (id BIGINT PRIMARY KEY, student_id BIGINT REFERENCES Student(id), subject_id BIGINT REFERENCES Subject(id), mark INT);
