/*
    BD EvaUna 01 que posee llave foranea simple
*/
select r.idRegion, r.Region, d.idDept, d.Departamento
from Region r FULL join Dept d on r.idRegion = d.idRegion;

select r.idRegion, r.Region, d.idDept, d.Departamento
from Region r join Dept d on r.idRegion = d.idRegion;

select r.idRegion, r.Region, d.idDept,d.Departamento
from region as r left outer join Dept as d  
    on r.idRegion=d.idRegion
where d.idDept is NULL

select d.idDept,d.Departamento,e.idEmp,e.nombres+' '+e.apellidos as 'Empleado'
from Dept as d full outer join Emp as e
    on d.idDept=e.idDept

select d.idDept,d.Departamento,e.idEmp,e.nombres+' '+e.apellidos as 'Empleado'
from Dept as d left outer join Emp as e
    on d.idDept=e.idDept
where e.idEmp is null

select d.idDept,d.Departamento,e.idEmp,e.nombres+' '+e.apellidos as 'Empleado'
from Dept as d inner join Emp as e
    on d.idDept=e.idDept
/*
    BD EvaUna 02 que posee llave foranea combianada
*/
use EVAUNA_Facultad_02;
select *
from Dept d inner join Emp e ON
    d.idDept=e.idDept and d.idRegion=e.idRegion

drop DATABASE EVAUNA_Facultad_02;

/*
    BD TSQL2012
*/
