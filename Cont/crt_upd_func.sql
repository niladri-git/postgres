CREATE OR REPLACE FUNCTION upd_func() RETURNS TRIGGER AS $cont_table$
    BEGIN
        INSERT INTO NET(name) VALUES (new.name);
        RETURN NEW;
    END;
$cont_table$ LANGUAGE plpgsql;