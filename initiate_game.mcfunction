######################################################################################
# Function:		initiate_scores
# Created By:	Jordan Hoffmann
# Date:			6/3/18
# Version:		1.12
# Description:	set up default scores for important settings
######################################################################################

clear @a[m=!3]
give @a[m=!3] written_book 1 0 {pages:["[\"\",{\"text\":\"\\n        Welcome To\",\"color\":\"dark_red\"},{\"text\":\"\\n \",\"color\":\"dark_red\",\"underlined\":true},{\"text\":\"  The Conducting  \",\"color\":\"dark_red\",\"bold\":true,\"underlined\":true},{\"text\":\"\\n\\n  A Minecraft Roguelite\\n  by Jordan Hoffmann\",\"italic\":true,\"color\":\"none\",\"bold\":false,\"underlined\":false},{\"text\":\"\\n                             \",\"color\":\"dark_red\",\"underlined\":true,\"italic\":false},{\"text\":\"\\n\\nHigh Score: \",\"color\":\"dark_gray\",\"underlined\":false},{\"score\":{\"name\":\"@a[m=!3,c=1]\",\"objective\":\"highScore\"},\"color\":\"none\"},{\"text\":\"\\nHighest Stage: \",\"color\":\"dark_gray\",\"hoverEvent\":{\"action\":\"show_entity\",\"value\":\"{id:(ID),name:(Name),type:(Type)}\"}},{\"score\":{\"name\":\"@a[m=!3,c=1]\",\"objective\":\"highStage\"},\"color\":\"none\"}]"],title:"The Conducting",author:"The Puppeteer"}

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

scoreboard objectives add warp dummy
scoreboard objectives add quitG1 stat.leaveGame
scoreboard players tag @a add whitelist
scoreboard players tag @e[type=armor_stand] add whitelist
kill @e[tag=!whitelist]
kill @e[tag=!whitelist]
scoreboard players tag @e remove whitelist

function dungeon_genorator:setup
gamerule gameLoopFunction game1:loop_function

#Variations
scoreboard players set s1Probability controls 5
scoreboard players set s2Probability controls 3
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
scoreboard players set block8PlacementRate controls 100
scoreboard players set block9PlacementRate controls 70
scoreboard players set block10PlacementRate controls 70

scoreboard players set slot0Block1 Loot 2
scoreboard players set slot1Block1 Loot 2
scoreboard players set slot2Block1 Loot 2
scoreboard players set slot3Block1 Loot 2
scoreboard players set slot4Block1 Loot 2
scoreboard players set slot5Block1 Loot 1
scoreboard players set slot6Block1 Loot 1
scoreboard players set slot7Block1 Loot 3
scoreboard players set slot8Block1 Loot 3

scoreboard players set slot0Block2 Loot 1
scoreboard players set slot1Block2 Loot 1
scoreboard players set slot2Block2 Loot 1
scoreboard players set slot3Block2 Loot 1
scoreboard players set slot4Block2 Loot 1
scoreboard players set slot5Block2 Loot 4
scoreboard players set slot6Block2 Loot 4
scoreboard players set slot7Block2 Loot 4
scoreboard players set slot8Block2 Loot 4

scoreboard players set slot0Block8 Loot 5
scoreboard players set slot1Block8 Loot 5
scoreboard players set slot2Block8 Loot 5
scoreboard players set slot3Block8 Loot 5
scoreboard players set slot4Block8 Loot 5
scoreboard players set slot5Block8 Loot 5
scoreboard players set slot6Block8 Loot 5
scoreboard players set slot7Block8 Loot 5
scoreboard players set slot8Block8 Loot 5

scoreboard players tag @a[m=!3] add editBlock1
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
execute @a[m=!3,c=1] ~ ~ ~ function dungeon_genorator:block_placer/test/test_hotbar_loot

scoreboard players tag @a[m=!3] add editBlock2
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
execute @a[m=!3,c=1] ~ ~ ~ function dungeon_genorator:block_placer/test/test_hotbar_loot

scoreboard players tag @a[m=!3] add editBlock3
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
execute @a[m=!3,c=1] ~ ~ ~ function dungeon_genorator:block_placer/test/test_hotbar_loot

scoreboard players tag @a[m=!3] add editBlock4
execute @e[name=block4Memory] ~ ~ ~ function dungeon_genorator:block_placer/tags/inventorytest/clear_hotbar_slot_tags
scoreboard players tag @e[name=block4Memory] add OxeyeDaisyFlowerPotInSlot0
scoreboard players tag @e[name=block4Memory] add AzureBluetFlowerPotInSlot1
scoreboard players tag @e[name=block4Memory] add BlueOrchidFlowerPotInSlot2
scoreboard players tag @e[name=block4Memory] add CactusFlowerPotInSlot3
scoreboard players tag @e[name=block4Memory] add PoppyFlowerPotInSlot4
scoreboard players tag @e[name=block4Memory] add RedTulipFlowerPotInSlot5
scoreboard players tag @e[name=block4Memory] add OrangeTulipFlowerPotInSlot6
scoreboard players tag @e[name=block4Memory] add WhiteTulipFlowerPotInSlot7
scoreboard players tag @e[name=block4Memory] add PinkTulipFlowerPotInSlot8
execute @a[m=!3,c=1] ~ ~ ~ function dungeon_genorator:block_placer/test/test_hotbar_loot

scoreboard players tag @a[m=!3] add editBlock5
function dungeon_genorator:block_placer/tags/inventorytest/clear_hotbar_slot_tags
scoreboard players tag @e[name=block5Memory] add IronOreInSlot0
scoreboard players tag @e[name=block5Memory] add IronOreInSlot1
scoreboard players tag @e[name=block5Memory] add IronOreInSlot2
scoreboard players tag @e[name=block5Memory] add IronOreInSlot3
scoreboard players tag @e[name=block5Memory] add CoalOreInSlot4
scoreboard players tag @e[name=block5Memory] add EmeraldOreInSlot5
scoreboard players tag @e[name=block5Memory] add DiamondOreInSlot6
scoreboard players tag @e[name=block5Memory] add LapisLazuliOreInSlot7
scoreboard players tag @e[name=block5Memory] add GoldOreInSlot8
execute @a[m=!3,c=1] ~ ~ ~ function dungeon_genorator:block_placer/test/test_hotbar_loot

scoreboard players tag @a[m=!3] add editBlock6
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
execute @a[m=!3,c=1] ~ ~ ~ function dungeon_genorator:block_placer/test/test_hotbar_loot

scoreboard players tag @a[m=!3] add editBlock7
execute @e[name=block7Memory] ~ ~ ~ function dungeon_genorator:block_placer/tags/inventorytest/clear_hotbar_slot_tags
scoreboard players tag @e[name=block7Memory] add SpiderMonsterSpawnerInSlot0
scoreboard players tag @e[name=block7Memory] add SpiderMonsterSpawnerInSlot1
scoreboard players tag @e[name=block7Memory] add SpiderMonsterSpawnerInSlot2
scoreboard players tag @e[name=block7Memory] add ZombieMonsterSpawnerInSlot3
scoreboard players tag @e[name=block7Memory] add ZombieMonsterSpawnerInSlot4
scoreboard players tag @e[name=block7Memory] add ZombieMonsterSpawnerInSlot5
scoreboard players tag @e[name=block7Memory] add ZombieMonsterSpawnerInSlot6
scoreboard players tag @e[name=block7Memory] add SkeletonMonsterSpawnerInSlot7
scoreboard players tag @e[name=block7Memory] add SkeletonMonsterSpawnerInSlot8
execute @a[m=!3,c=1] ~ ~ ~ function dungeon_genorator:block_placer/test/test_hotbar_loot

scoreboard players tag @a[m=!3] add editBlock8
execute @e[name=block8Memory] ~ ~ ~ function dungeon_genorator:block_placer/tags/inventorytest/clear_hotbar_slot_tags
scoreboard players tag @e[name=block8Memory] add TrappedChestInSlot0
scoreboard players tag @e[name=block8Memory] add TrappedChestInSlot1
scoreboard players tag @e[name=block8Memory] add TrappedChestInSlot2
scoreboard players tag @e[name=block8Memory] add TrappedChestInSlot3
scoreboard players tag @e[name=block8Memory] add TrappedChestInSlot4
scoreboard players tag @e[name=block8Memory] add TrappedChestInSlot5
scoreboard players tag @e[name=block8Memory] add TrappedChestInSlot6
scoreboard players tag @e[name=block8Memory] add TrappedChestInSlot7
scoreboard players tag @e[name=block8Memory] add TrappedChestInSlot8
execute @a[m=!3,c=1] ~ ~ ~ function dungeon_genorator:block_placer/test/test_hotbar_loot

#Room Count
scoreboard players set maxRooms controls 3


scoreboard players tag @e[name=editor] add relative_bound
scoreboard players tag @e[name=editor] add respect_gravity
scoreboard players tag @e[name=editor] add place_random_blocks
scoreboard players tag @e[name=editor,tag=hiddenRoomExists] remove hiddenRoomExists

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

execute @e[m=!2] ~ ~ ~ gamemode adventure @s[m=!3]
execute @e[name=node,tag=trunk,score_ID=1,score_ID_min=1] ~ ~ ~ teleport @a[m=!3] ~ 1 ~ ~ ~

function game1:villager_trades/create_rtrades
function dungeon_genorator:setup
function dungeon_genorator:rooms/build_trunk
function game1:hidden_rooms/select_room_level

scoreboard objectives remove level
scoreboard objectives remove points
scoreboard objectives remove pointsPrev
scoreboard objectives add level dummy
scoreboard objectives add points dummy
scoreboard objectives add pointsPrev dummy
scoreboard objectives add pointMultiplier dummy


scoreboard objectives add levelLoading dummy
scoreboard players set @a[m=!3] level 1
scoreboard players set @a[m=!3] levelLoading 1
