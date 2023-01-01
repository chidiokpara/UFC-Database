Drop Procedure if exists AddFighter;

Delimiter //

create procedure AddFighter(gen char(1), fname varchar(25), lname varchar(40), nname varchar(30), birth DATE, stance varchar(15), weight double, height double, gname varchar(30), gcity varchar(30), gstate varchar(20), gcountry varchar(30), Nationality varchar(30), w int(11), l int(11), d int(11), nc int(11))
Begin
  Start transaction;

    insert into Fighter (Gender, FName, LName, NName, DOB, Stance, Weight, Height, gymName, gymCity, gymState, gymCountry, Nationality, Wins, Loss, Draw, NoContest) values
    (gen char(1), fname varchar(25), lname varchar(40), nname varchar(30), birth DATE, stance varchar(15), weight double, height double, gname varchar(30), gcity varchar(30), gstate varchar(20), gcountry varchar(30), Nationality varchar(30), w int(11), l int(11), d int(11), nc int(11));
    select last_insert_id() as FighterID, NUll as 'Error';

  commit;
end;
//
Delimiter ;