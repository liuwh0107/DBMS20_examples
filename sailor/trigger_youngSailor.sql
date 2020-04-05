-- Create trigger
delimiter //

CREATE TRIGGER YoungSailorUpdate
    AFTER INSERT ON Sailors
FOR EACH ROW
BEGIN
    IF NEW.age <= 18 THEN
        INSERT INTO YoungSailors(sid, sname, age, rating)
        VALUE (NEW.sid, NEW.sname, NEW.age, NEW.rating);
    END IF;
END; //

delimiter ;

-- Check initial table content
select * from Sailors;
select * from YoungSailors;

-- Insert data
insert into Sailors(sid, sname, age, rating) values (1, 'Karl', 18, 100);
insert into Sailors(sid, sname, age, rating) values (2, 'Jack', 20, 80);
insert into Sailors(sid, sname, age, rating) values (3, 'Marry', 5, 120);

-- Check new table content
select * from Sailors;
select * from YoungSailors;

