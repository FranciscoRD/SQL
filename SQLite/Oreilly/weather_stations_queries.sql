-- weather_stations
select 
    case
        when month = 1 then 'Jan'
        when month = 2 then 'Feb'
        when month = 3 then 'Mar'
        when month = 4 then 'Apr'
        when month = 5 then 'May'
        when month = 6 then 'Jun'
        when month = 7 then 'Jun'
        when month = 8 then 'Jul'
        when month = 9 then 'Sep'
        when month = 10 then 'Oct'
        when month = 11 then 'Nov'
        else 'Dec'
    end as 'Month',
    round(avg(case
            when rain or hail then temperature
            else null
        end),2) as 'Avg Precipitation Temp',
    round(avg(case
            when not (rain or hail) then temperature
            else null
        end),2) as 'Avg Non Precipitation Temp'
from station_data
where year > 2000
group by month
/*
select year,
    max(case
            when tornado = 0 then precipitation 
            else null 
        end) as 'Max Non Tornado Preciptation',
    max(case
            when tornado = 1 then precipitation
            else null
        end) as 'Max Tornado Preciptation'
from station_data
group by year
*/
/*
select year, month,
    sum(case
            when tornado = 1 then precipitation
            else 0 
        end) as 'Tornafo Precipitation',
    sum(case
            when tornado = 0 then precipitation
            else 0
        end) as 'Non Tornado Precipitation'
from station_data
group by year, month
*/
/*
select year,
    case
        when wind_speed >= 40 then 'High'
        when wind_speed >= 30 then 'Moderate'
        else 'Low'
    end as 'Wind Severity',
    count(*) as 'Record Count'
from station_data
group by 1,2
-- group by year,
--     case
--         when wind_speed >= 40 then 'High'
--         when wind_speed >= 30 then 'Moderate'
--         else 'Low'
--     end;
*/
/*
select report_code, year, month, day, wind_speed,
    case
        when wind_speed >= 40 then 'High'
        when wind_speed >= 30 then 'Moderate'
        else 'Low'
    end as 'Wind Severity'
from station_data
order by wind_speed desc
*/
/*
select station_number,
    year,
    case
        when month = 1 then 'Jan'
        when month = 2 then 'Feb'
        when month = 3 then 'Mar'
        when month = 4 then 'Apr'
        when month = 5 then 'May'
        when month = 6 then 'Jun'
        when month = 7 then 'Jun'
        when month = 8 then 'Jul'
        when month = 9 then 'Sep'
        when month = 10 then 'Oct'
        when month = 11 then 'Nov'
        else 'Dec'
    end as 'month'
from station_data
where year between 2007 and 2008
group by year, month
*/
/*
select distinct station_number, year
from station_data
order by station_number
*/
/*
select year,
    sum(precipitation) as 'Total Precipitation'
from station_data
group by year
having sum(precipitation) > 30
*/
/*
select year,
    sum(precipitation) as 'Tornado Precipitation'
from station_data
where tornado
group by year
*/
/*
select year,
    sum(snow_depth) as 'Total Snow',
    sum(precipitation) as 'Total Precipitation',
    max(precipitation) as 'Max Precipitation'
from station_data
where year >= 2000
group by year
*/
/*
select year, sum(snow_depth) as 'Total Snow'
-- select month, 
--     round(AVG(temperature),2) as 'AVG Temperature'
from station_data
where year >=2000
group by year
*/
-- group by month
/*
select count(snow_depth) as 'Recorded Snow Depth Count'
from station_data
*/
/*
select year, month, count(*) as 'Record Count'
from station_data
where tornado
group by 1, 2
order by year desc, month
*/
-- group by year, month
/*
select *
from station_data
where (rain = 1 and temperature <=32) or snow_depth > 0;
*/
/*
select report_code, coalesce(precipitation,'Sin Datos') as rainfall
from station_data
where coalesce(precipitation, 0) <= 0.5;
-- where (precipitation is not null or precipitation <=0.5) 
--    and snow_depth is not null;
-- where precipitation is null or precipitation <= 0.5;
*/
/*
select *
from station_data
where snow_depth is not null;
-- where snow_depth is null;
*/
/*
select *
from station_data
where not tornado and hail;
-- WHERE tornado = 0 AND hail = 1;
-- where tornado and hail;
-- where tornado = 1 and hail = 1;
*/
/*
select *
from station_data
where report_code like 'B_C%';
-- where report_code like 'A%'
-- where length(report_code) != 6
*/
/*
select *
from station_data
where report_code in ('513A63','1F8A7B','EF616A')
-- where report_code = '513A63'
*/
/*
select *
from station_data
where month % 3 = 0;
*/
/*
select *
from station_data
where month not in (3,6,9,12);
-- where month in (3,6,9,12);
*/
/*
select *
from station_data
where month = 3
    or month = 6
    or month = 9
    or month = 12;
*/
/*
select*
from station_data
where year >= 2005 and year <= 2010;
-- where year between 2005 and 2010
*/
/*
select *
from station_data
where year != 2010;
-- where year <> 2010;
-- where year = 2010;
*/