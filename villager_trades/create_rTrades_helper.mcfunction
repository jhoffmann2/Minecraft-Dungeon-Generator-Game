######################################################################################
# Function:		create_rTrades
# Created By:	Jordan Hoffmann
# Date:			6/10/18
# Version:		1.12
# Description:	recursive helper for create_rTrades
######################################################################################
scoreboard players add currentID tradeID 1
execute @e[name=editor,type=armor_stand] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"rTrade",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players operation @e[name=rTrade,type=armor_stand,c=1] tradeID = currentID tradeID
execute @e[name=editor,type=armor_stand] ~ ~ ~ teleport @e[name=rTrade,type=armor_stand,c=1] ~ ~1 ~
function game1:villager_trades/create_rtrades_helper unless @e[name=rTrade,type=armor_stand,score_tradeID_min=82]