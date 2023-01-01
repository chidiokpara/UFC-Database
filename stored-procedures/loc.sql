-- Most visited location
Drop Procedure if exists loc;

Delimiter //

create procedure loc(start date, end date)
Begin
  Start transaction;

  Select ArenaCity as City, Count(ArenaCity) as NumEvents
  from FoughtIn
  where EventDate > start
  and EventDate < end
  group by ArenaCity
  order by NumEvents desc
  limit 1;
 
  commit;
end;
//
Delimiter ;