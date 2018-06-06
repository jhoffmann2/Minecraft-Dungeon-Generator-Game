######################################################################################
# Function:		initiate_scores
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	set up default scores for important settings
######################################################################################

execute @a[c=1] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"LastPlayerPosition",Marker:1b,Invisible:1,Invulnerable:1}

scoreboard players set block1PlacementRate controls 70
scoreboard players set block2PlacementRate controls 70
scoreboard players set block3PlacementRate controls 70
scoreboard players set block4PlacementRate controls 70
scoreboard players set block5PlacementRate controls 70
scoreboard players set block6PlacementRate controls 70
scoreboard players set block7PlacementRate controls 50
scoreboard players set block8PlacementRate controls 70
scoreboard players set block9PlacementRate controls 70
scoreboard players set block10PlacementRate controls 70

scoreboard players set xMaxBound controls 64
scoreboard players set yMaxBound controls 64
scoreboard players set zMaxBound controls 64
scoreboard players set xMinBound controls -64
scoreboard players set yMinBound controls -64
scoreboard players set zMinBound controls -64

scoreboard players set s1Probability controls 5
scoreboard players set s2Probability controls 4
scoreboard players set s3Probability controls 4
scoreboard players set s4Probability controls 3
scoreboard players set s5Probability controls 0
scoreboard players set s6Probability controls 0

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

execute @e[name=node,tag=trunk,score_ID=1,score_ID_min=1] ~ ~ ~ teleport @a ~ 1 ~ ~ ~

function dungeon_genorator:setup
function dungeon_genorator:rooms/build_branches


scoreboard players set @a levelLoading 1

