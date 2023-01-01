Drop trigger if exists fhistory;

Delimiter //

Create trigger fhistory
After delete on Fighter
create table if not exists FighterHistory  (
  `fID` int(11) NOT NULL AUTO_INCREMENT,
  `Gender` char (1) DEFAULT NULL,
  `FName` varchar(25) NOT NULL,
  `LName` varchar(40) NOT NULL,
  `NName` varchar(30) DEFAULT NULL,
  `DOB` DATE DEFAULT NULL,
  `Stance` varchar(20) DEFAULT NULL,
  `Weight` double DEFAULT NULL,
  `Height` double DEFAULT NULL, 
  `Reach` double DEFAULT NULL, 
  `Wins` int(11) DEFAULT NULL,
  `Loss` int(11) DEFAULT NULL,
  `Draw` int(11) DEFAULT NULL,
  PRIMARY KEY (`fID`)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

for each row
Begin
  insert into FighterHistory (fID, Gender, FName, LName, Weight, Height, Wins, Loss, Draw)
  values (OLD.fID, OLD.Gender, OLD.FName, OLD.LName, OLD.Weight, OLD.Height, OLD.Wins, OLD.Loss, OLD.Draw);

End;

//

Delimiter ;
