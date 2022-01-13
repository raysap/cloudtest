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