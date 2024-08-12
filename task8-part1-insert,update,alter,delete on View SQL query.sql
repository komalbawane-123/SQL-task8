--Task 8: Find if we can do insert, update, alter , delete on View		

select * from patient
	
select * from hospital

--Here we Created VIEW

create view Patient_Details0 as
select p.patient_id,p.patient_name,p.age,p.gender from patient p
inner join hospital as h
on p.patient_id = h.hospital_id
where patient_id between 1 and 100 and age = 20
order by hospital_name desc

--Insert On View

select * from Patient_Details0
insert into patient(patient_id,patient_name,age,gender,hospital_id)
values(201,'nikki',25,'female',10)

--Update On View
	
select * from Patient_Details0
update patient
set patient_name = 'reeta'
where gender = 'female'

--Delete on View 
	
select * from Patient_Details0
delete from Patient_Details0 where gender = 'female'

ERROR:  Views that do not select from a single table or view are not automatically updatable.cannot delete from view "patient_details0" 

ERROR:  cannot delete from view "patient_details0"
SQL state: 55000
Detail: Views that do not select from a single table or view are not automatically updatable.
Hint: To enable deleting from the view, provide an INSTEAD OF DELETE trigger or an unconditional ON DELETE DO INSTEAD rule.
