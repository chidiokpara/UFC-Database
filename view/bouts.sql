| Bouts | CREATE ALGORITHM=UNDEFINED DEFINER=`nick`@`localhost` SQL SECURITY DEFINER VIEW `Bouts` AS select concat(`F1`.`FName`,' ',`F1`.`LName`) AS `FirstFighter`,
concat(`F2`.`FName`,' ',`F2`.`LName`) AS `SecondFighter`,
`FoughtIn`.`EventDate` AS `EventDate`,
if(`FoughtIn`.`Result` = 1,concat(`F1`.`FName`,' ',`F1`.`LName`),if(`FoughtIn`.`Result` = 2,concat(`F2`.`FName`,' ',`F2`.`LName`),if(`FoughtIn`.`Result` = 0,'Draw','No Contest'))) AS `Winner` 
from ((`Fighter` `F1` join `FoughtIn` on(`F1`.`FighterID` = `FoughtIn`.`FirstFighterID`)) 
join `Fighter` `F2` on(`F2`.`FighterID` = `FoughtIn`.`SecondFighterID`)) | utf8mb4              | utf8mb4_general_ci   |