--UPDATE WINS LOSSES
Drop Procedure if exists uwl;

Delimiter //

create procedure uwl()
Begin
  Start transaction;

  UPDATE Fighter 
  SET Wins = (SELECT COUNT(*) FROM FoughtIn WHERE FirstFighterID = Fighter.FighterID AND Result = 1) + (SELECT COUNT(*) FROM FoughtIn WHERE SecondFighterID = Fighter.FighterID AND Result = 2)
  SET Loss = (SELECT COUNT(*) FROM FoughtIn WHERE FirstFighterID = Fighter.FighterID AND Result = 2) + (SELECT COUNT(*) FROM FoughtIn WHERE SecondFighterID = Fighter.FighterID AND Result = 1)
  SET Draw = (SELECT COUNT(*) FROM FoughtIn WHERE FirstFighterID = Fighter.FighterID AND Result = 0) + (SELECT COUNT(*) FROM FoughtIn WHERE SecondFighterID = Fighter.FighterID AND Result = 0)
  SET NoContest = (SELECT COUNT(*) FROM FoughtIn WHERE FirstFighterID = Fighter.FighterID AND Result = -1) + (SELECT COUNT(*) FROM FoughtIn WHERE SecondFighterID = Fighter.FighterID AND Result = -1)

  commit;
end;
//
Delimiter ;