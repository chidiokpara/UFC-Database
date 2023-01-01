Drop view if exists WeightClass;

Create view as WeightClass
select concat(FName," ", LName) as Fighter, WeightClassName as WeightClass, Wins, Loss 
from Fighter join FighterWeightClass 
on FighterID = fID 
order by WeightClassName;