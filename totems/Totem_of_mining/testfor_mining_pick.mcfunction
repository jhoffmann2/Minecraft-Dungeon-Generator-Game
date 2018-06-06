######################################################################################
# Function:		test_totems
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	test if the player has a totem in their inventory and if they do, give the player the desired effect
######################################################################################
scoreboard players tag @a remove MiningPickInSlot0
scoreboard players tag @a remove MiningPickInSlot1
scoreboard players tag @a remove MiningPickInSlot2
scoreboard players tag @a remove MiningPickInSlot3
scoreboard players tag @a remove MiningPickInSlot4
scoreboard players tag @a remove MiningPickInSlot5
scoreboard players tag @a remove MiningPickInSlot6
scoreboard players tag @a remove MiningPickInSlot7
scoreboard players tag @a remove MiningPickInSlot8
scoreboard players tag @a add MiningPickInSlot0 {Inventory:[{Slot:0b,tag:{CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}}]}
scoreboard players tag @a add MiningPickInSlot1 {Inventory:[{Slot:1b,tag:{CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}}]}
scoreboard players tag @a add MiningPickInSlot2 {Inventory:[{Slot:2b,tag:{CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}}]}
scoreboard players tag @a add MiningPickInSlot3 {Inventory:[{Slot:3b,tag:{CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}}]}
scoreboard players tag @a add MiningPickInSlot4 {Inventory:[{Slot:4b,tag:{CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}}]}
scoreboard players tag @a add MiningPickInSlot5 {Inventory:[{Slot:5b,tag:{CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}}]}
scoreboard players tag @a add MiningPickInSlot6 {Inventory:[{Slot:6b,tag:{CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}}]}
scoreboard players tag @a add MiningPickInSlot7 {Inventory:[{Slot:7b,tag:{CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}}]}
scoreboard players tag @a add MiningPickInSlot8 {Inventory:[{Slot:8b,tag:{CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}}]}