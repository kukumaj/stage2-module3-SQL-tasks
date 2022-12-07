UPDATE mark set studemt.id = null where id in (SELECT DISTINCT m.id FROM mark m JOIN subject s on s.id = m.subject_id WHERE grade >= 4);
DELETE FROM student WHERE id not IN (SELECT DISTINCT m.student_id FROM mark);
DELETE FROM student WHERE id IN (SELECT  DISTINCT s.id FROM student s JOIN mark m ON s.id = m.student_id WHERE m.mark < 4);
DELETE FROM paymenttype WHERE name = 'DAILY';
DELETE FROM mark WHERE mark < 7;