scoreboard players tag @a[m=!3] add editBlock7
execute @e[name=block7Memory] ~ ~ ~ function dungeon_genorator:block_placer/tags/inventorytest/clear_hotbar_slot_tags
scoreboard players tag @e[name=block7Memory] add ZomSkelSpidSilvMonsterSpawnerInSlot0
scoreboard players tag @e[name=block7Memory] add ZomSkelSpidSilvMonsterSpawnerInSlot1
scoreboard players tag @e[name=block7Memory] add ZomSkelSpidSilvMonsterSpawnerInSlot2
scoreboard players tag @e[name=block7Memory] add ZomSkelSpidSilvMonsterSpawnerInSlot3
scoreboard players tag @e[name=block7Memory] add ZomSkelSpidSilvMonsterSpawnerInSlot4
scoreboard players tag @e[name=block7Memory] add ZomSkelSpidSilvMonsterSpawnerInSlot5
scoreboard players tag @e[name=block7Memory] add ZomSkelSpidSilvMonsterSpawnerInSlot6
scoreboard players tag @e[name=block7Memory] add CreeperMonsterSpawnerInSlot7
execute @a[m=!3,c=1] ~ ~ ~ function dungeon_genorator:block_placer/test/test_hotbar_loot

scoreboard players set s1Probability controls 6
scoreboard players set s2Probability controls 5
scoreboard players set s3Probability controls 6
scoreboard players set s4Probability controls 4
scoreboard players set s5Probability controls 0
scoreboard players set s6Probability controls 0