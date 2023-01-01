Drop view if exists Champs;

create view as Champs
select concat(FName," ", LName) as Fighter, WeightClassName as WeightClass
from Fighter join FighterWeightClass
on FighterID = fID 
where FighterWeightClass.Rank = 0;

Drop view if exists Bouts;

create view Bouts as
select concat(F1.FName," ", F1.LName) as FirstFighter, concat(F2.FName," ",F2.LName) as SecondFighter, EventDate as Date,
if(FoughtIn.Result = 1,concat(F1.FName,' ',F1.LName),if(FoughtIn.Result = 2,concat(F2.FName,' ',F2.LName),if(FoughtIn.Result = 0,'Draw','No Contest'))) AS Winner 
from Fighter as F1
join FoughtIn on F1.FighterID = FirstFighterID 
join Fighter as F2
on F2.FighterID = SecondFighterID;

Drop view if exists Record;

Create view as Record
select concat(FName," ", LName) as Fighter, WeightClassName as WeightClass, Wins, Loss 
from Fighter join FighterWeightClass 
on FighterID = fID 
order by WeightClassName;