use db_university;

-- 1) Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
select *
from students as s
join degrees as d on s.degree_id = d.id
where d.name like "Corso di Laurea in Economia";

-- 2) Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
select *
from degrees as d
join departments as dp on d.department_id = dp.id
where dp.name like "Dipartimento di Neuroscienze"
AND d.level like "magistrale";

-- 3) Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
select *
from courses as c
join course_teacher as ct on c.id = ct.course_id
join teachers as t on t.id = ct.teacher_id
where t.id=44;

-- 4) Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui 
-- sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
select * 
from students as s
join degrees as d on s.degree_id = d.id
join departments as dp on d.department_id = dp.id
order by s.surname, s.name;

-- 5) Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
select *
from degrees as d
join courses as c on d.id = c.degree_id
join course_teacher as ct on c.id = ct.course_id
join teachers as t on ct.teacher_id = t.id;

-- 6) Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
select count( distinct t.id)
from teachers as t
join course_teacher as ct on t.id = ct.teacher_id
join courses as c on ct.course_id = c.id
join degrees as d on c.degree_id = d.id
join departments as dp on d.department_id = dp.id
where dp.name like "Dipartimento di Matematica";


