######################################################################################
# Function:		test_totems
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	test if the player has a totem in their inventory and if they do, give the player the desired effect
######################################################################################
scoreboard players tag @a[m=!3] remove TotemOfMining
scoreboard players tag @a[m=!3] add TotemOfMining {Inventory:[{tag:{display:{Name:"Totem Of Mining",Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}

scoreboard players tag @a[m=!3] remove TotemOfSupport
scoreboard players tag @a[m=!3] add TotemOfSupport {Inventory:[{Slot:-106b,tag:{display:{Name:"Totem Of The Wolf God",Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
execute @a[m=!3,tag=TotemOfSupport] ~ ~ ~ effect @e[type=wolf,r=16] minecraft:strength 1 1

function game1:totems/ruined_totem

function game1:totems/totem_of_mining/testfor_mining_pick
function game1:totems/totem_of_mining/wood_pick
function game1:totems/totem_of_mining/stone_pick
function game1:totems/totem_of_mining/iron_pick
function game1:totems/totem_of_mining/gold_pick
function game1:totems/totem_of_mining/diamond_pick
