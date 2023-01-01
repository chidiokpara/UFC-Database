Drop view if exists Champs;

create view as Champs
select concat(FName," ", LName) as Fighter, WeightClassName as WeightClass
from Fighter join FighterWeightClass
on FighterID = fID 
where FighterWeightClass.Rank = 0;