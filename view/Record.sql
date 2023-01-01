Drop view if exists Record;

Create view as Record
select concat(FName," ", LName) as Fighter, WeightClassName as WeightClass, Wins, Loss 
from Fighter join FighterWeightClass 
on FighterID = fID 
order by WeightClassName;