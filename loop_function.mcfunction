######################################################################################
# Function:		loop_function
# Created By:	Jordan Hoffmann
# Date:			6/3/18
# Version:		1.12
# Description:	the loop function for Game 1
######################################################################################


#Always Run
    
    #keepRoom Tag Management
    scoreboard players tag @e[name=LastPlayerPosition] add player
    scoreboard players tag @a add player
    scoreboard players tag @e remove keepRoom
    execute @e[tag=player] ~ ~ ~ scoreboard players tag @e[name=node,r=6] add keepRoom
    
    #Dungeon Loop Function
    function dungeon_genorator:loop_function_noUI
    
    #Level Management
    execute @a[score_level_min=1,score_level=1,tag=!loading] ~ ~ ~ execute @s[score_levelLoading_min=1,score_levelLoading=1] ~ ~ ~ function game1:level1
    execute @a[score_level_min=2] ~ ~ ~ execute @s[score_levelLoading_min=0,score_levelLoading=0] ~ ~ ~ function game1:buildNextLevel
    execute @a[score_level_min=2,tag=!loading] ~ ~ ~ execute @s[score_levelLoading_min=1,score_levelLoading=1] ~ ~ ~ function game1:startNextLevel
    
    #Checkpoint Particle
    scoreboard players add global tickTimer 1
    scoreboard players operation @e[tag=checkpoint] tickTimer = global tickTimer
    scoreboard players set temp tickTimer 2
    scoreboard players operation @e[tag=checkpoint] tickTimer %= temp tickTimer
    scoreboard players reset temp tickTimer
    
    scoreboard objectives add isAir dummy
    scoreboard players add @e[tag=checkpoint] isAir 0
    stats entity @e[tag=checkpoint] set AffectedBlocks @s isAir
    #execute @e[tag=checkpoint] ~ ~ ~ testforblock ~ ~ ~ air
    execute @e[tag=checkpoint] ~ ~ ~ fill ~ ~-1 ~ ~ ~1 ~ minecraft:structure_void 0 replace minecraft:air
    execute @e[tag=checkpoint,score_tickTimer=0,score_tickTimer_min=0,score_isAir_min=3] ~ ~ ~ particle endRod ~ ~ ~ 0 3 0 0.01 1
    execute @e[tag=checkpoint,score_tickTimer=0,score_tickTimer_min=0,score_isAir=2] ~ ~ ~ particle endRod ~ ~ ~ 1 3 1 0.01 6
    
    execute @e[tag=checkpoint] ~ ~ ~ scoreboard players operation @a[r=4] tickTimer = global tickTimer
    scoreboard players set temp tickTimer 250
    execute @e[tag=checkpoint] ~ ~ ~ scoreboard players operation @a[r=4] tickTimer %= temp tickTimer
    scoreboard players reset temp tickTimer
    
    #Checkpoint Warp
    scoreboard objectives add warp dummy
    scoreboard players add @a warp 0
    execute @e[tag=checkpoint,score_isAir_min=3] ~ ~-4 ~ scoreboard players set @a[dy=8,score_warp_min=0,score_warp=0] warp 1
    execute @e[tag=checkpoint,score_isAir=2] ~-1 ~-4 ~-1 scoreboard players set @a[dy=8,dx=3,dz=3,score_warp_min=0,score_warp=0] warp 1
    
    execute @a[score_warp_min=1,score_warp=1] ~ ~ ~ playsound minecraft:entity.zombie_villager.converted ambient @a ~ ~ ~ 1000
    execute @a[score_warp_min=1,score_warp=1] ~ ~ ~ scoreboard players add @a level 1
    execute @a[score_warp_min=1,score_warp=1] ~ ~ ~ scoreboard players set @a levelLoading 0
    scoreboard players set @a[score_warp_min=1,score_warp=1] warp 2
    execute @e[tag=checkpoint] ~ ~ ~ scoreboard players set @a[rm=5] warp 0
    scoreboard objectives remove isAir
    execute @e[tag=checkpoint] ~ ~ ~ fill ~ ~-1 ~ ~ ~1 ~ minecraft:air 0 replace minecraft:structure_void

    #Restart Game on death
    execute @e[score_Death_min=1] ~ ~ ~ function game1:initiate_game
    scoreboard players set @e[score_Death_min=1] Death 0
    
    #Test for Totems
    function game1:totems/test_totems
    
#Run the first time setting up loop function:
    execute @a[tag=!ranStartG1] ~ ~ ~ gamerule gameLoopFunction game1:loop_function
    execute @a[tag=!ranStartG1] ~ ~ ~ function game1:initiate_game
    execute @a[tag=!ranStartG1] ~ ~ ~ scoreboard objectives add tickTimer dummy
    execute @a[tag=!ranStartG1] ~ ~ ~ scoreboard objectives add Death deathCount
    execute @a[tag=!ranStartDG] ~ ~ ~ scoreboard objectives add quitG1 stat.leaveGame
scoreboard players tag @a[tag=!ranStartG1] add ranStartG1

#Run every time a player joins game
	execute @a[score_quitG1_min=1] ~ ~ ~
	execute @a[score_quitG1_min=1] ~ ~ ~ 
    execute @a[score_quitG1_min=1] ~ ~ ~
scoreboard players reset @a[score_quitDG_min=1] quitG1

