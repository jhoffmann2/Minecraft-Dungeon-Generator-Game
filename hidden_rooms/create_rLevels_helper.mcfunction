######################################################################################
# Function:		create_rLevels_heleper
# Created By:	Jordan Hoffmann
# Date:			6/21/18
# Version:		1.12
# Description:	recursive helper for create_rLevels
######################################################################################
scoreboard players add currentID levelID 1
execute @e[name=editor,type=armor_stand] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"rLevel",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players operation @e[name=rLevel,type=armor_stand,c=1] levelID = currentID levelID
execute @e[name=editor,type=armor_stand] ~ ~ ~ teleport @e[name=rLevel,type=armor_stand,c=1] ~ ~1 ~
function game1:hidden_rooms/create_rlevels_helper unless @e[name=rLevel,type=armor_stand,score_levelID_min=10]