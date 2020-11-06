/*
	Basico
*/
use TSQL2012;
select 'A';

select *
from hr.Employees;

select E.city as 'Ciudad',
	E.country as 'Pais', 
	E.empid as 'Empleado ID', 
	E.lastname as 'Apellido', 
	E.firstname as 'Nombre'
from hr.Employees as  E;

select C.categoryid as 'ID categoria',
	c.categoryname as 'Categoria',
	c.description as 'Descripcion'
from Production.Categories C;

/*
	Manejo de Select
*/
select distinct country
from hr.Employees;

select empid, firstname, lastname
from hr.Employees;
-- Concatenando
select empid, 
	firstname + ' ' + lastname as 'Full Name'
from hr.Employees;

select empid, 
	(firstname + ' ' + lastname ) as 'Full Name'
from hr.Employees;

select empid, 
	CONCAT(firstname,' ',lastname) as 'Full Name'
from hr.Employees;

	select country, 
		year(hiredate) as yearhired,
		count(*) as 'N° Employees'
	from hr.Employees
	where hiredate >= '20030101'
	group by country, year(hiredate)
	having COUNT(*) > 1
	order by country, yearhired

/*
	Tipos de Datos
*/
declare @myDecimal as Decimal(8,2);
set @myDecimal = 12.25;
select @myDecimal;

-- Redondea lo maneja como si fuera entero
declare @myDecimal2 as decimal;
set @myDecimal2 = 12.78;
select @myDecimal2;

declare @myInt as int;
set @myInt = 125;
select @myInt;

declare @var1 int;
declare @var2 int;
set @var1 = 10;
select isnull(@var1,0) + isnull(@var2,0);

declare @var3 Varchar(15);
declare @var4 as varchar(15);
set @var3 = 'Hola';
select
	@var3 + @var4, 
	isnull(@var3,'nulificado ') + isnull(@var4,' nulificado'),
	concat(@var3,' ',@var4),
	concat(@var3,' ',isnull(@var4,'nulificado'))

select parse('02/12/2012' as datetime2 using 'en-US') as parse_result;
SELECT DATEPART(DAY, '2007-04-21 '), DATEPART(weekday, '2007-04-21 ');