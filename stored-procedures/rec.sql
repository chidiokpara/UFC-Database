Drop Procedure if exists rec;

Delimiter //

create procedure rec( fname varchar(25), lname varchar(40))
Begin
  Start transaction;

  Select concat(F.FName, " ", F.LName), Wins as W, Loss as L, Draw as D
  from Fighter as F
  where FName = fname
  and LName = lname;

  commit;
end;
//
Delimiter ;