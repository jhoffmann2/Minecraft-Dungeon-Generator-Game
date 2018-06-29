function game1:hidden_rooms/create_rlevels
scoreboard players operation selectedLevel levelID = @r[type=armor_stand,name=rLevel] levelID
kill @e[name=rLevel]