Drop Procedure if exists Wclass;

Delimiter //

create procedure Wclass( wname varchar(30))
Begin
  Start transaction;

  Select *
  from FighterWeightClass
  where WeightClassName = wname;

  commit;
end;
//
Delimiter ;