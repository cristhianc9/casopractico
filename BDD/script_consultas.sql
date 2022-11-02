delete from stg_mystery_shopping sms ;
delete from dim_localidad dl;
delete from dim_proyecto dp;
delete from fac_evaluacion fe ;

select count(*) from stg_mystery_shopping sms ;
select count(*) from dim_localidad dl;
select count(*) from dim_proyecto dp;
select count(*) from fac_evaluacion fe ;



select * --count(*) 
from stg_mystery_shopping sms 
where resultado > 0.999;
select * --count(*) 
from dim_localidad dl;
select * --count(*) 
from dim_proyecto dp;

select * --count(*) 
from dim_auditor da;
select * --count(*) 
from fac_evaluacion fe ;
