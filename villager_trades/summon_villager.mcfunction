######################################################################################
# Function:		summon_villager
# Created By:	Jordan Hoffmann
# Date:			6/10/18
# Version:		1.12
# Description:	summon a villager with a random trade
######################################################################################
scoreboard players tag @e[name=rTrade,type=armor_stand] remove selected
scoreboard players tag @e[name=rTrade,type=armor_stand] remove buy
scoreboard players tag @e[name=rTrade,type=armor_stand] remove sell
scoreboard players tag @r[name=rTrade,type=armor_stand,c=2] add selected
scoreboard players tag @r[name=rTrade,type=armor_stand,tag=selected] add buy
execute @e[name=rTrade,type=armor_stand,tag=selected] ~ ~ ~ scoreboard players tag @s[tag=!buy] add sell
function game1:villager_trades/summon_villager_helper