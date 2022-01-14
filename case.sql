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

---------- loop basic nested if else loop---------

DECLARE
    v_number NUMBER(20) := 0;
BEGIN
    LOOP
        dbms_output.put_line(v_number);
        v_number := v_number + 1;
        IF v_number > 10 THEN
            LOOP
                dbms_output.put_line('my 2nd loop works' || v_number);
                v_number := v_number + 2;
                IF v_number > 20 THEN
                    EXIT;
                END IF;
            END LOOP;

            EXIT;
        END IF;

    END LOOP;
END;

----------------decalring record---------

declare
r_jobs job_copy%rowtype;
begin 
select * into r_jobs from job_copy where job_id = 'AD_VP';
dbms_output.put_line (r_jobs.min_salary);
end;

---------complex record------------------------

declare
--r_jobs job_copy%rowtype;
type t_emp is record (job_id varchar2(10),job_title job_copy.job_title%type, emp job_history%rowtype);
r_jobs t_emp;
begin 
---dbms_output.put_line (r_jobs.emp.employee_id);
select job_copy.job_id,job_copy.job_title,job_history.end_date into r_jobs.job_id,r_jobs.job_title,r_jobs.emp.end_date from job_copy,job_history where job_copy.job_id = 'AC_MGR'and job_copy.job_id = job_history.job_id;
--r_jobs.job_id := 'AD_VP';or
dbms_output.put_line (r_jobs.emp.end_date);
end;