######################################################################################
# Function:		lastPlayerPosition
# Created By:	Jordan Hoffmann
# Date:			6/3/18
# Version:		1.12
# Description:	teleport players back to their last position befor loading sequence
######################################################################################

scoreboard players tag @e[name=LastPlayerPosition,type=armor_stand,c=1] add teleportBack

scoreboard players operation @a[m=!3] playerID -= @e[name=LastPlayerPosition,type=armor_stand,tag=teleportBack] playerID
execute @e[name=LastPlayerPosition,type=armor_stand,tag=teleportBack] ~ ~ ~ teleport @a[m=!3,score_playerID=0,score_playerID_min=0] ~ ~ ~ ~ ~
scoreboard players operation @a[m=!3] playerID += @e[name=LastPlayerPosition,type=armor_stand,tag=teleportBack] playerID

kill @e[name=LastPlayerPosition,type=armor_stand,tag=teleportBack]

function game1:lastPlayerPosition if @e[name=LastPlayerPosition]