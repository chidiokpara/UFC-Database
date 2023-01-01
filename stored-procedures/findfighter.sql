Drop Procedure if exists findfighter;

Delimiter //

create procedure findfighter( fname varchar(60))
Begin
  Start transaction;

  Select * from Bouts
  where FirstFighter = fname
  or SecondFighter = fname;

  commit;
end;
//
Delimiter ;