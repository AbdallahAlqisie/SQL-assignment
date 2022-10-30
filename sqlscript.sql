REM   Script: SQL salary calculator
REM   salary calculator

create or replace function todatesal (p_empno in number) return number 
is  
p_total_sal number (20) ; 
begin 
select ((to_number(to_char(sysdate,'DD')))* (sal/(to_number(to_char(last_day(sysdate),'DD'))))) into 
p_total_sal  
from scott.emp  
where empno=p_empno ; 
return p_total_sal; 
exception 
when no_data_found then 
return 'No Data Found' ; 
end; 

/

