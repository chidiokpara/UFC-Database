Drop Procedure if exists AddWeightClass;

Delimiter //

create procedure 'AddWeightClass'()
Begin
  Start transaction;

  Select *
  from Fighter;

  if Fighter.Weight > 100 AND Fighter.Weight < 118 Then
    Insert into FighterWeightClass (fID, WeightClassName) values (Fighter.FighterID, "Women's Strawweight"); 
  if Fighter.Weight > 118 AND Fighter.Weight < 128 AND Fighter.Gender = 'F' Then
    Insert into FighterWeightClass (fID, WeightClassName) values (Fighter.FighterID, "Women's Flyweight");
  if Fighter.Weight > 118 AND Fighter.Weight < 128 AND Fighter.Gender = 'M' Then
    Insert into FighterWeightClass (fID, WeightClassName) values (Fighter.FighterID, "Flyweight");
  if Fighter.Weight > 128 AND Fighter.Weight < 138 AND Fighter.Gender = 'F' Then
    Insert into FighterWeightClass (fID, WeightClassName) values (Fighter.FighterID, "Women's Bantamweight");
  if Fighter.Weight > 128 AND Fighter.Weight < 138 AND Fighter.Gender = 'M' Then
    Insert into FighterWeightClass (fID, WeightClassName) values (Fighter.FighterID, "Bantamweight");
   if Fighter.Weight > 138 AND Fighter.Weight < 148 AND Fighter.Gender = 'F' Then
    Insert into FighterWeightClass (fID, WeightClassName) values (Fighter.FighterID, "Women's Featherweight");
  if Fighter.Weight > 138 AND Fighter.Weight < 148 AND Fighter.Gender = 'M' Then
    Insert into FighterWeightClass (fID, WeightClassName) values (Fighter.FighterID, "Featherweight");
  if Fighter.Weight > 148 AND Fighter.Weight < 158 Then
    Insert into FighterWeightClass (fID, WeightClassName) values (Fighter.FighterID, "Lightweight");
  if Fighter.Weight > 158 AND Fighter.Weight < 175 Then
    Insert into FighterWeightClass (fID, WeightClassName) values (Fighter.FighterID, "Welterweight");
  if Fighter.Weight > 175 AND Fighter.Weight < 190 Then
    Insert into FighterWeightClass (fID, WeightClassName) values (Fighter.FighterID, "Middleweight");
  if Fighter.Weight > 190 AND Fighter.Weight < 215 Then
    Insert into FighterWeightClass (fID, WeightClassName) values (Fighter.FighterID, "Light Heavyweight");
  if Fighter.Weight > 215 Then
    Insert into FighterWeightClass (fID, WeightClassName) values (Fighter.FighterID, "Heavyweight");
  else
    Insert into FighterWeightClass (fID, WeightClassName) values (Fighter.FighterID, "Special");

  end if;

  commit;
end;
//
Delimiter ;