######################################################################################
# Function:		create_rTrades
# Created By:	Jordan Hoffmann
# Date:			6/10/18
# Version:		1.12
# Description:	summon 1 rTrade armorstand for every tradable item
######################################################################################
scoreboard objectives add tradeID dummy
scoreboard players set currentID tradeID 0
kill @e[name=rTrade,type=armor_stand]
function game1:villager_trades/create_rtrades_helper