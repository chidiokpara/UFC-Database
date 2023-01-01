--UPDATE WINS LOSSES
Drop Procedure if exists fem;

Delimiter //

create procedure fem(fname (varchar 25), lname (varchar 30))
Begin
  Start transaction;

  UPDATE Fighter 
  SET Gender = 'F'
  where FName = fname
  and LName = lname;

  commit;
end;
//
Delimiter ;