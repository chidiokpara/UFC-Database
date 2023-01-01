Drop Procedure if exists dfighter;

Delimiter //

create procedure dfighter( id int(11))
Begin
  Start transaction;

  Delete from Fighter
  where FighterID = id;

  commit;
end;
//
Delimiter ;