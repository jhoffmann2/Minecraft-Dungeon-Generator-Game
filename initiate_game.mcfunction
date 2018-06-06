######################################################################################
# Function:		initiate_scores
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	set up default scores for important settings
######################################################################################

function dungeon_genorator:setup
execute @a[tag=!ranStartG1] ~ ~ ~ gamerule gameLoopFunction game1:loop_function

#Variations
scoreboard players set s1Probability controls 5
scoreboard players set s2Probability controls 2
scoreboard players set s3Probability controls 0
scoreboard players set s4Probability controls 0
scoreboard players set s5Probability controls 0
scoreboard players set s6Probability controls 0

#Directions
scoreboard players set xPosProbability controls 1
scoreboard players set xNegProbability controls 1
scoreboard players set yPosProbability controls 0
scoreboard players set yNegProbability controls 0
scoreboard players set zPosProbability controls 1
scoreboard players set zNegProbability controls 1

#Boundries
scoreboard players set xMaxBound controls 64
scoreboard players set yMaxBound controls 64
scoreboard players set zMaxBound controls 64
scoreboard players set xMinBound controls -64
scoreboard players set yMinBound controls -64
scoreboard players set zMinBound controls -64

#Blocks
scoreboard players set block1PlacementRate controls 100
scoreboard players set block2PlacementRate controls 100
scoreboard players set block3PlacementRate controls 70
scoreboard players set block4PlacementRate controls 70
scoreboard players set block5PlacementRate controls 70
scoreboard players set block6PlacementRate controls 70
scoreboard players set block7PlacementRate controls 0
scoreboard players set block8PlacementRate controls 70
scoreboard players set block9PlacementRate controls 70
scoreboard players set block10PlacementRate controls 70

scoreboard players set slot0Block1 Loot 1
scoreboard players set slot1Block1 Loot 1
scoreboard players set slot2Block1 Loot 1
scoreboard players set slot3Block1 Loot 1
scoreboard players set slot4Block1 Loot 1
scoreboard players set slot5Block1 Loot 2
scoreboard players set slot6Block1 Loot 2
scoreboard players set slot7Block1 Loot 2
scoreboard players set slot8Block1 Loot 3

scoreboard players set slot0Block2 Loot 1
scoreboard players set slot1Block2 Loot 1
scoreboard players set slot2Block2 Loot 1
scoreboard players set slot3Block2 Loot 2
scoreboard players set slot4Block2 Loot 2
scoreboard players set slot5Block2 Loot 2
scoreboard players set slot6Block2 Loot 2
scoreboard players set slot7Block2 Loot 2
scoreboard players set slot8Block2 Loot 3

scoreboard players tag @a add editBlock1
execute @e[name=block1Memory] ~ ~ ~ function dungeon_genorator:block_placer/tags/inventorytest/clear_hotbar_slot_tags
scoreboard players tag @e[name=block1Memory] add ChestInSlot0
scoreboard players tag @e[name=block1Memory] add ChestInSlot1
scoreboard players tag @e[name=block1Memory] add ChestInSlot2
scoreboard players tag @e[name=block1Memory] add ChestInSlot3
scoreboard players tag @e[name=block1Memory] add ChestInSlot4
scoreboard players tag @e[name=block1Memory] add ChestInSlot5
scoreboard players tag @e[name=block1Memory] add ChestInSlot6
scoreboard players tag @e[name=block1Memory] add ChestInSlot7
scoreboard players tag @e[name=block1Memory] add ChestInSlot8
execute @a[c=1] ~ ~ ~ function dungeon_genorator:block_placer/test/test_hotbar_loot

scoreboard players tag @a add editBlock2
execute @e[name=block2Memory] ~ ~ ~ function dungeon_genorator:block_placer/tags/inventorytest/clear_hotbar_slot_tags
scoreboard players tag @e[name=block2Memory] add ChestInSlot0
scoreboard players tag @e[name=block2Memory] add ChestInSlot1
scoreboard players tag @e[name=block2Memory] add ChestInSlot2
scoreboard players tag @e[name=block2Memory] add ChestInSlot3
scoreboard players tag @e[name=block2Memory] add ChestInSlot4
scoreboard players tag @e[name=block2Memory] add ChestInSlot5
scoreboard players tag @e[name=block2Memory] add ChestInSlot6
scoreboard players tag @e[name=block2Memory] add ChestInSlot7
scoreboard players tag @e[name=block2Memory] add ChestInSlot8
execute @a[c=1] ~ ~ ~ function dungeon_genorator:block_placer/test/test_hotbar_loot

scoreboard players tag @a add editBlock3
execute @e[name=block3Memory] ~ ~ ~ function dungeon_genorator:block_placer/tags/inventorytest/clear_hotbar_slot_tags
scoreboard players tag @e[name=block3Memory] add CraftingTableInSlot0
scoreboard players tag @e[name=block3Memory] add FurnaceInSlot1
scoreboard players tag @e[name=block3Memory] add JukeboxInSlot2
scoreboard players tag @e[name=block3Memory] add EnchantmentTableInSlot3
scoreboard players tag @e[name=block3Memory] add EnderChestInSlot4
scoreboard players tag @e[name=block3Memory] add AnvilInSlot5
scoreboard players tag @e[name=block3Memory] add BookshelfInSlot6
scoreboard players tag @e[name=block3Memory] add BrewingStandInSlot7
scoreboard players tag @e[name=block3Memory] add Jacko'LanternInSlot8
execute @a[c=1] ~ ~ ~ function dungeon_genorator:block_placer/test/test_hotbar_loot

scoreboard players tag @a add editBlock4
execute @e[name=block4Memory] ~ ~ ~ function dungeon_genorator:block_placer/tags/inventorytest/clear_hotbar_slot_tags
scoreboard players tag @e[name=block4Memory] add FlowerPotInSlot0
scoreboard players tag @e[name=block4Memory] add FlowerPotInSlot1
scoreboard players tag @e[name=block4Memory] add FlowerPotInSlot2
scoreboard players tag @e[name=block4Memory] add FlowerPotInSlot3
scoreboard players tag @e[name=block4Memory] add FlowerPotInSlot4
scoreboard players tag @e[name=block4Memory] add EndRodInSlot5
scoreboard players tag @e[name=block4Memory] add TorchInSlot6
scoreboard players tag @e[name=block4Memory] add TorchInSlot7
scoreboard players tag @e[name=block4Memory] add TorchInSlot8
execute @a[c=1] ~ ~ ~ function dungeon_genorator:block_placer/test/test_hotbar_loot

scoreboard players tag @a add editBlock5
function dungeon_genorator:block_placer/tags/inventorytest/clear_hotbar_slot_tags
scoreboard players tag @e[name=block5Memory] add IronOreInSlot0
scoreboard players tag @e[name=block5Memory] add IronOreInSlot1
scoreboard players tag @e[name=block5Memory] add IronOreInSlot2
scoreboard players tag @e[name=block5Memory] add IronOreInSlot3
scoreboard players tag @e[name=block5Memory] add CoalOreInSlot4
scoreboard players tag @e[name=block5Memory] add EmeraldOreInSlot5
scoreboard players tag @e[name=block5Memory] add DiamondInSlot6
scoreboard players tag @e[name=block5Memory] add LapisLazuliOreInSlot7
scoreboard players tag @e[name=block5Memory] add GoldOreInSlot8
execute @a[c=1] ~ ~ ~ function dungeon_genorator:block_placer/test/test_hotbar_loot

scoreboard players tag @a add editBlock6
execute @e[name=block6Memory] ~ ~ ~ function dungeon_genorator:block_placer/tags/inventorytest/clear_hotbar_slot_tags
scoreboard players tag @e[name=block6Memory] add DoubleTallgrassInSlot0
scoreboard players tag @e[name=block6Memory] add GrassInSlot1
scoreboard players tag @e[name=block6Memory] add LargeFernInSlot2
scoreboard players tag @e[name=block6Memory] add LilacInSlot3
scoreboard players tag @e[name=block6Memory] add RoseBushInSlot4
scoreboard players tag @e[name=block6Memory] add PeonyInSlot5
scoreboard players tag @e[name=block6Memory] add SunflowerInSlot6
scoreboard players tag @e[name=block6Memory] add CobwebInSlot7
scoreboard players tag @e[name=block6Memory] add DeadBushInSlot8
execute @a[c=1] ~ ~ ~ function dungeon_genorator:block_placer/test/test_hotbar_loot

scoreboard players tag @a add editBlock7
execute @e[name=block7Memory] ~ ~ ~ function dungeon_genorator:block_placer/tags/inventorytest/clear_hotbar_slot_tags
scoreboard players tag @e[name=block7Memory] add SpiderMonsterSpawnerInSlot0
scoreboard players tag @e[name=block7Memory] add ZombieMonsterSpawnerInSlot1
scoreboard players tag @e[name=block7Memory] add ZombieMonsterSpawnerInSlot2
scoreboard players tag @e[name=block7Memory] add SkeletonMonsterSpawnerInSlot3
scoreboard players tag @e[name=block7Memory] add SkeletonMonsterSpawnerInSlot4
scoreboard players tag @e[name=block7Memory] add CreeperMonsterSpawnerInSlot5
scoreboard players tag @e[name=block7Memory] add ZomSkelSpidSilvMonsterSpawnerInSlot6
scoreboard players tag @e[name=block7Memory] add ZomSkelSpidSilvMonsterSpawnerInSlot7
scoreboard players tag @e[name=block7Memory] add WitchMonsterSpawnerInSlot8
execute @a[c=1] ~ ~ ~ function dungeon_genorator:block_placer/test/test_hotbar_loot

#Room Count
scoreboard players set maxRooms controls 3


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

gamemode adventure @a
execute @e[name=node,tag=trunk,score_ID=1,score_ID_min=1] ~ ~ ~ teleport @a ~ 1 ~ ~ ~

function dungeon_genorator:setup
function dungeon_genorator:rooms/build_trunk
scoreboard objectives add level dummy
scoreboard objectives add levelLoading dummy
scoreboard players set @a level 1
scoreboard players set @a levelLoading 1
