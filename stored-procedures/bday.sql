Drop Procedure if exists bday;

Delimiter //

create procedure bday( id int(11), bd date)
Begin
  Start transaction;

  UPDATE Fighter
  SET DOB = bd
  where Fighter.FighterID = id;

  commit;
end;
//
Delimiter ;