######################################################################################
# Function:		initiate_scores
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	set up default scores for important settings
######################################################################################

scoreboard players operation @a pointMultiplier = @a level
scoreboard objectives add tempPoints dummy
scoreboard players set @a tempPoints 100
scoreboard players operation @a tempPoints *= @a pointMultiplier
scoreboard players operation @a points += @a tempPoints
scoreboard objectives remove tempPoints

execute @a[m=!3] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"LastPlayerPosition",Marker:1b,Invisible:1,Invulnerable:1}
execute @a[m=!3] ~ ~ ~ scoreboard players operation @e[name=LastPlayerPosition,c=1] playerID = @s playerID


scoreboard players tag @e[type=armor_stand,name=node] remove checkpoint
function game1:level_loot/level2 if @s[score_level_min=2,score_level=2]
function game1:level_loot/level10 if @s[score_level_min=10,score_level=10]
function game1:level_loot/level15 if @s[score_level_min=15,score_level=15]
function game1:level_loot/level18 if @s[score_level_min=18,score_level=18]
function game1:level_loot/level20 if @s[score_level_min=20,score_level=20]

scoreboard players set xMaxBound controls 64
scoreboard players set yMaxBound controls 64
scoreboard players set zMaxBound controls 64
scoreboard players set xMinBound controls -64
scoreboard players set yMinBound controls -64
scoreboard players set zMinBound controls -64

scoreboard players set maxRooms controls 3

scoreboard players set xPosProbability controls 3
scoreboard players set xNegProbability controls 3
scoreboard players set yPosProbability controls 2
scoreboard players set yNegProbability controls 1
scoreboard players set zPosProbability controls 3
scoreboard players set zNegProbability controls 3

scoreboard players tag @e[name=editor] add relative_bound
scoreboard players tag @e[name=editor] add respect_gravity
scoreboard players tag @e[name=editor] add place_random_blocks

execute @e[name=node,tag=trunk,score_ID=1,score_ID_min=1] ~ ~ ~ setblock ~ 1 ~ minecraft:air
execute @e[name=node,tag=trunk,score_ID=1,score_ID_min=1] ~ ~ ~ setblock ~ 2 ~ minecraft:air
execute @e[name=node,tag=trunk,score_ID=1,score_ID_min=1] ~ ~ ~ setblock ~ 0 ~ minecraft:concrete 15
execute @e[name=node,tag=trunk,score_ID=1,score_ID_min=1] ~ ~ ~ setblock ~ 3 ~ minecraft:concrete 15
execute @e[name=node,tag=trunk,score_ID=1,score_ID_min=1] ~ ~ ~ setblock ~ 1 ~1 minecraft:concrete 15
execute @e[name=node,tag=trunk,score_ID=1,score_ID_min=1] ~ ~ ~ setblock ~ 1 ~-1 minecraft:concrete 15
execute @e[name=node,tag=trunk,score_ID=1,score_ID_min=1] ~ ~ ~ setblock ~1 1 ~ minecraft:concrete 15
execute @e[name=node,tag=trunk,score_ID=1,score_ID_min=1] ~ ~ ~ setblock ~-1 1 ~ minecraft:concrete 15
execute @e[name=node,tag=trunk,score_ID=1,score_ID_min=1] ~ ~ ~ setblock ~ 2 ~1 minecraft:concrete 15
execute @e[name=node,tag=trunk,score_ID=1,score_ID_min=1] ~ ~ ~ setblock ~ 2 ~-1 minecraft:concrete 15
execute @e[name=node,tag=trunk,score_ID=1,score_ID_min=1] ~ ~ ~ setblock ~1 2 ~ minecraft:concrete 15
execute @e[name=node,tag=trunk,score_ID=1,score_ID_min=1] ~ ~ ~ setblock ~-1 2 ~ minecraft:concrete 15

execute @e[name=node,tag=trunk,score_ID=1,score_ID_min=1] ~ ~ ~ teleport @a[m=!3] ~ 1 ~ ~ ~

function dungeon_genorator:setup
function dungeon_genorator:rooms/build_branches

scoreboard players set @a[m=!3] levelLoading 1

