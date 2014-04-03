CREATE OR REPLACE FUNCTION upd_p1() RETURNS TRIGGER AS $cont_table$
    BEGIN	    
		drop table p1;
		create table p1 as select distinct name, count(name), sum(change) from cont group by name;				
		
        RETURN NEW;
		
    END;
$cont_table$ LANGUAGE plpgsql;