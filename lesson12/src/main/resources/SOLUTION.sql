DELETE FROM student WHERE id IN (SELECT DISTINCT m.student_id FROM mark m  WHERE grade > 4);
DELETE FROM student WHERE id IN (SELECT DISTINCT m.student_id FROM mark m  WHERE mark < 4);
DELETE FROM paymenttype WHERE name = 'DAILY';
DELETE FROM mark WHERE mark < 7;