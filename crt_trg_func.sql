CREATE OR REPLACE FUNCTION auditlogfunc() RETURNS TRIGGER AS $example_table$
    BEGIN
        INSERT INTO AUDIT(EMP_ID, ENTRY_DATE) VALUES (new.ID, current_timestamp);
        RETURN NEW;
    END;
$example_table$ LANGUAGE plpgsql;