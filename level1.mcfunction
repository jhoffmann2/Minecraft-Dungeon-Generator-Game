######################################################################################
# Function:		level1
# Created By:	Jordan Hoffmann
# Date:			6/3/18
# Version:		1.12
# Description:	start level1
######################################################################################
scoreboard players set @a levelLoading 2
clear @a
scoreboard players tag @a add whitelist
scoreboard players tag @e[type=armor_stand] add whitelist
kill @e[tag=!whitelist]
kill @e[tag=!whitelist]
scoreboard players tag @e remove whitelist
effect @a minecraft:resistance 5 5

effect @a minecraft:instant_health 1 100
effect @a minecraft:saturation 1 19

execute @e[name=node,tag=trunk,score_ID=1,score_ID_min=1] ~ ~ ~ teleport @a ~ ~ ~ ~ ~
execute @a[c=1] ~ ~ ~ scoreboard players tag @e[type=armor_stand,name=node,c=-1] add checkpoint

