scoreboard players tag @a[m=!3] add editBlock7
execute @e[name=block7Memory] ~ ~ ~ function dungeon_genorator:block_placer/tags/inventorytest/clear_hotbar_slot_tags
scoreboard players tag @e[name=block7Memory] add SpiderMonsterSpawnerInSlot0
scoreboard players tag @e[name=block7Memory] add SpiderMonsterSpawnerInSlot1
scoreboard players tag @e[name=block7Memory] add ZombieMonsterSpawnerInSlot2
scoreboard players tag @e[name=block7Memory] add ZombieMonsterSpawnerInSlot3
scoreboard players tag @e[name=block7Memory] add SkeletonMonsterSpawnerInSlot4
scoreboard players tag @e[name=block7Memory] add SkeletonMonsterSpawnerInSlot5
scoreboard players tag @e[name=block7Memory] add WitchMonsterSpawnerInSlot7
scoreboard players tag @e[name=block7Memory] add VindicationIllagerMonsterSpawnerInSlot8
execute @a[m=!3,c=1] ~ ~ ~ function dungeon_genorator:block_placer/test/test_hotbar_loot

scoreboard players set s1Probability controls 6
scoreboard players set s2Probability controls 5
scoreboard players set s3Probability controls 5
scoreboard players set s4Probability controls 4
scoreboard players set s5Probability controls 0
scoreboard players set s6Probability controls 0