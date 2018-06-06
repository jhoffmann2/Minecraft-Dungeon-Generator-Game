######################################################################################
# Function:		test_totems
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	test if the player has a totem in their inventory and if they do, give the player the desired effect
######################################################################################
scoreboard players tag @a remove TotemOfMining
scoreboard players tag @a add TotemOfMining {Inventory:[{id:"minecraft:dye",Damage:8s,tag:{HideFlags:16,display:{Name:"Totem Of Mining",Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}

function game1:totems/ruined_totem

function game1:totems/totem_of_mining/testfor_mining_pick
function game1:totems/totem_of_mining/wood_pick
function game1:totems/totem_of_mining/stone_pick
function game1:totems/totem_of_mining/iron_pick
function game1:totems/totem_of_mining/gold_pick
function game1:totems/totem_of_mining/diamond_pick