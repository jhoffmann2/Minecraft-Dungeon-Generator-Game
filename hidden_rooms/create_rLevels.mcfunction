######################################################################################
# Function:		create_rTrades
# Created By:	Jordan Hoffmann
# Date:			6/21/18
# Version:		1.12
# Description:	summon rLevel armorstands with corrisponding level ID's
######################################################################################
scoreboard objectives add levelID dummy
scoreboard players set currentID levelID 3
kill @e[name=rLevel,type=armor_stand]
function game1:hidden_rooms/create_rlevels_helper