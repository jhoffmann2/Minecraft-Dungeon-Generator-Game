######################################################################################
# Function:		loop_function
# Created By:	Jordan Hoffmann
# Date:			6/3/18
# Version:		1.12
# Description:	the loop function for Game 1
######################################################################################


#Always Run
    #Dungeon Loop Function
    function dungeon_genorator:loop_function_noUI
    
    #Level Management
        #build next level if player steps through checkpoint
        execute @a[m=!3,score_level_min=2,c=1] ~ ~ ~ execute @s[score_levelLoading_min=0,score_levelLoading=0] ~ ~ ~ function game1:buildNextLevel
        
        #try to build hidden room if level >= selected levelID and there isn't already a hidden room
        scoreboard players operation @a level -= selectedLevel levelID
        execute @a[m=!3,score_level_min=0,tag=!loading,c=1] ~ ~ ~ execute @s[score_levelLoading_min=1,score_levelLoading=1] ~ ~ ~ function game1:hidden_rooms/new_hidden_room if @e[name=editor,type=armor_stand,tag=!hiddenRoomExists]
        scoreboard players operation @a level += selectedLevel levelID
        
        #start next level if the level has been built
        execute @a[m=!3,score_level_min=1,score_level=1,tag=!loading,c=1] ~ ~ ~ execute @s[score_levelLoading_min=1,score_levelLoading=1,tag=!being_reborn] ~ ~ ~ function game1:level1
        execute @a[m=!3,score_level_min=1,score_level=1,tag=!loading,c=1] ~ ~ ~ execute @s[score_levelLoading_min=1,score_levelLoading=1,tag=being_reborn] ~ ~ ~ function game1:custom_potions/level1_reborn
        
        execute @a[m=!3,score_level_min=2,tag=!loading,c=1] ~ ~ ~ execute @s[score_levelLoading_min=1,score_levelLoading=1] ~ ~ ~ function game1:startNextLevel
        
    #keep entities from drowning...
    execute @e[type=!armor_stand] ~ ~ ~ effect @s[type=!Player] water_breathing 100000 1 true
    
    #Update the Players Points
    function game1:update_points
    
    #Summon Random villagers
    execute @e[name=random_villager,type=armor_stand] ~ ~ ~ function game1:villager_trades/summon_villager
    kill @e[name=random_villager,type=armor_stand]
    execute @e[name=node,score_directionCount_min=2] ~-3.5 ~-3.5 ~-3.5 kill @e[type=villager,dx=7,dy=7,dz=7]
    
    #keepRoom Tag Management
    scoreboard players tag @e[name=LastPlayerPosition] add player
    scoreboard players tag @a[m=!3] add player
    scoreboard players tag @e remove keepRoom
    execute @e[tag=player] ~ ~ ~ scoreboard players tag @e[name=node,r=6] add keepRoom
    #Checkpoint Particle
    scoreboard players add global tickTimer 1
    scoreboard players operation @e[tag=checkpoint] tickTimer = global tickTimer
    scoreboard players set temp tickTimer 2
    scoreboard players operation @e[tag=checkpoint] tickTimer %= temp tickTimer
    scoreboard players reset temp tickTimer
    
    #checkpoint particles
    scoreboard objectives add isAir dummy
    scoreboard players add @e[tag=checkpoint] isAir 0
    stats entity @e[tag=checkpoint] set AffectedBlocks @s isAir
    execute @e[tag=checkpoint] ~ ~ ~ fill ~ ~-1 ~ ~ ~1 ~ minecraft:structure_void 0 replace minecraft:air
    execute @e[tag=checkpoint,score_tickTimer=0,score_tickTimer_min=0,score_isAir_min=3] ~ ~ ~ particle endRod ~ ~0.5 ~ 0 1.5 0 0.01 1 force
    execute @e[tag=checkpoint,score_tickTimer=0,score_tickTimer_min=0,score_isAir=2] ~ ~ ~ particle endRod ~ ~0.5 ~ 1 1.5 1 0.01 14 force
    
    execute @e[tag=checkpoint] ~ ~ ~ scoreboard players operation @a[m=!3,r=4] tickTimer = global tickTimer
    scoreboard players set temp tickTimer 250
    execute @e[tag=checkpoint] ~ ~ ~ scoreboard players operation @a[m=!3,r=4] tickTimer %= temp tickTimer
    scoreboard players reset temp tickTimer
    
    #Checkpoint Warp
    scoreboard players add @a[m=!3] warp 0
    execute @e[tag=checkpoint,score_isAir_min=3] ~ ~-3 ~ scoreboard players set @a[m=!3,dy=6,score_warp_min=0,score_warp=0] warp 1
    execute @e[tag=checkpoint,score_isAir=2] ~-1 ~-2 ~-1 scoreboard players set @a[m=!3,dy=4,dx=3,dz=3,score_warp_min=0,score_warp=0] warp 1
    
    execute @a[m=!3,score_warp_min=1,score_warp=1] ~ ~ ~ playsound minecraft:entity.zombie_villager.converted ambient @a[m=!3] ~ ~ ~ 1000
    execute @a[m=!3,score_warp_min=1,score_warp=1] ~ ~ ~ scoreboard players add @a[m=!3] level 1
    execute @a[m=!3,score_warp_min=1,score_warp=1] ~ ~ ~ scoreboard players set @a[m=!3] levelLoading 0
    scoreboard players set @a[m=!3,score_warp_min=1,score_warp=1] warp 2
    execute @e[tag=checkpoint] ~ ~ ~ scoreboard players set @a[m=!3,rm=5] warp 0
    scoreboard objectives remove isAir
    execute @e[tag=checkpoint] ~ ~ ~ fill ~ ~-1 ~ ~ ~1 ~ minecraft:air 0 replace minecraft:structure_void

    #Restart Game on death
    title @a[m=!3] times 10 1000000 20
    execute @e[score_Death_min=1] ~ ~ ~ execute @a[m=!3] ~ ~ ~ title @s title ["",{"text":"GAME OVER","color":"gray","bold":true}]
    execute @e[score_Death_min=1] ~ ~ ~ execute @a[m=!3] ~ ~ ~ title @s subtitle ["",{"text":"Score: ","color":"gold","bold":true},{"score":{"name":"@s","objective":"points"},"color":"gold","bold":true,"insertion":"/title @a subtitle %s"}]
    execute @e[score_Death_min=1] ~ ~ ~ execute @a[m=!3,c=1] ~ ~ ~ function game1:initiate_game
    scoreboard players set @e[score_Death_min=1] Death 0
    
    #Test for Totems
    function game1:totems/test_totems
    
    #Test for Potions
    function game1:custom_potions/test_potions
    
#Run the first time setting up loop function:
    execute @a[m=!3,tag=!ranStartG1] ~ ~ ~ gamerule gameLoopFunction game1:loop_function
    execute @a[m=!3,tag=!ranStartG1] ~ ~ ~ function game1:initiate_game
    execute @a[m=!3,tag=!ranStartG1] ~ ~ ~ scoreboard objectives add tickTimer dummy
    execute @a[m=!3,tag=!ranStartG1] ~ ~ ~ scoreboard objectives add Death deathCount
    execute @a[m=!3,tag=!ranStartG1] ~ ~ ~ scoreboard objectives add quitG1 stat.leaveGame
    execute @a[m=!3,tag=!ranStartG1] ~ ~ ~ scoreboard objectives add playerID dummy
    execute @a[m=!3,tag=!ranStartG1] ~ ~ ~ scoreboard objectives add highScore dummy
    execute @a[m=!3,tag=!ranStartG1] ~ ~ ~ scoreboard objectives add highStage dummy
    execute @a[m=!3,tag=!ranStartG1] ~ ~ ~ scoreboard players add currentID playerID 1
    execute @a[m=!3,tag=!ranStartG1] ~ ~ ~ scoreboard players operation @s playerID = currentID playerID
    execute @a[m=!3,tag=!ranStartG1] ~ ~ ~ scoreboard objectives add playerID dummy
scoreboard players tag @a[m=!3,tag=!ranStartG1] add ranStartG1

#Run every time a player joins game
	execute @a[m=!3,score_quitG1_min=1] ~ ~ ~ scoreboard players add currentID playerID 1
    execute @a[m=!3,score_quitG1_min=1] ~ ~ ~ scoreboard players operation @s playerID = currentID playerID
scoreboard players reset @a[m=!3,score_quitG1_min=1] quitG1

