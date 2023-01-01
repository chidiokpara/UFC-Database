Drop Procedure if exists mfights;

Delimiter //

create procedure mfights()
Begin
  Start transaction;

  Select concat(F1.FName, " ", F1.LName) as Name, Count(EventDate) as NumFights
  from Fighter as F1
  join FoughtIn on F1.FighterID = FirstFighterID
  join Fighter as F2
  on F2.FighterID = SecondFighterID
  where F1.FighterID = F2.FighterID;

  commit;
end;
//
Delimiter ;