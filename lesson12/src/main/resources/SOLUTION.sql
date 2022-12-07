DELETE  FROM payment where student_id in (SELECT DISTINCT m.student_id FROM mark m JOIN subject s on s.id = m.subject_id WHERE grade >= 4);
UPDATE mark set student_id = null where id in (SELECT DISTINCT m.id FROM mark m JOIN subject s on s.id = m.subject_id WHERE grade >= 4);
DELETE FROM student WHERE id not IN (SELECT DISTINCT m.student_id FROM mark m);
DELETE FROM student WHERE id IN (SELECT  DISTINCT s.id FROM student s JOIN mark m ON s.id = m.student_id WHERE m.mark < 4);
DELETE FROM payment WHERE type_id in (select id FROM paymenttype WHERE name = 'DAILY');
DELETE FROM paymenttype WHERE name = 'DAILY';
DELETE FROM mark WHERE mark < 7;