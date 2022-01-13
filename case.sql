declare
v_number number := 10;
v_char varchar2 (20);
begin
v_char := case 
when v_number >= 60 then 'passed'
when v_number < 60 then 'failed'
else 'no result'
end ;
dbms_output.put_line ('student'|| ' ' || v_char);
end;