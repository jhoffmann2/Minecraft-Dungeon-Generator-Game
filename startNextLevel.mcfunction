######################################################################################
# Function:		level1
# Created By:	Jordan Hoffmann
# Date:			6/3/18
# Version:		1.12
# Description:	start level1
######################################################################################
scoreboard players set @a levelLoading 2
effect @a minecraft:resistance 5 5

execute @e[name=LastPlayerPosition,type=armor_stand] ~ ~ ~ teleport @a ~ ~ ~ ~ ~
kill @e[name=LastPlayerPosition]

execute @a[c=1] ~ ~ ~ scoreboard players tag @e[type=armor_stand,name=node] remove checkpoint
execute @a[c=1] ~ ~ ~ scoreboard players tag @e[type=armor_stand,name=node,c=-1] add checkpoint

