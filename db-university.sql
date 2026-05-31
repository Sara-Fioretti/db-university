#EX-QUERY CON GROUP BY
use db_university;

# Ex.1: Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(id), enrolment_date
FROM students
GROUP BY enrolment_date;

#Ex.2: Conatre gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(id), office_address
FROM teachers
GROUP BY office_address;

#Ex.3: Calcolare la media dei voti di ogni appello d'esame
SELECT AVG(vote), exam_id
FROM exam_student
GROUP BY exam_id;

#Ex.3: Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT COUNT(id), department_id
FROM degrees
GROUP BY department_id;

#EX QUERY CON SELECT

#EX.1: Selezionare tutti gli studenti nati nel 1990
SELECT COUNT(id)
FROM students
WHERE date_of_birth LIKE "%1990%";

#Ex.2: Selezionare tutti i corsi che valgono più di 10 CFU
SELECT COUNT(id)
FROM courses
WHERE cfu > 10;

#EX.3: Selezionare tutti gli studenti che hanno più di 30 anni
SELECT COUNT(id)
FROM students
WHERE date_of_birth < "1996-05-31";

#EX.4: Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laure
SELECT COUNT(id)
FROM courses
WHERE `year` = 1 
AND period = "I semestre";

#Ex.5: Selezionare tutti gli appelli di esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020
SELECT COUNT(id)
FROM exams
WHERE date = '2020-06-20'
AND hour > '14:00:00';

#EX.6: Selezionare tutti i corsi di laurea magistrale
SELECT COUNT(id)
FROM degrees
WHERE level = 'magistrale';

#EX.7: Da quanti dipartimenti è composta l'università?
SELECT COUNT(id)
FROM departments;

#EX.8: Quanti sono gli insegnanti che non hanno un numero di telefono?
SELECT COUNT(id)
FROM teachers
WHERE phone IS NULL;



