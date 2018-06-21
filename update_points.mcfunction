######################################################################################
# Function:		update_points
# Created By:	Jordan Hoffmann
# Date:			6/3/18
# Version:		1.12
# Description:	update the points based on kills, checkpoints, etc.
######################################################################################

scoreboard objectives add killZombie stat.killEntity.Zombie
scoreboard objectives add killSkeleton stat.killEntity.Skeleton
scoreboard objectives add killSpider stat.killEntity.Spider
scoreboard objectives add killSilverfish stat.killEntity.Silverfish
scoreboard objectives add killCreeper stat.killEntity.Creeper
scoreboard objectives add killWitch stat.killEntity.Witch
scoreboard objectives add killVindicator stat.killEntity.VindicationIllager
scoreboard objectives add killEvoker stat.killEntity.EvocationIllager
scoreboard objectives add mineIron stat.mineBlock.minecraft.iron_ore
scoreboard objectives add mineCoal stat.mineBlock.minecraft.coal_ore
scoreboard objectives add mineEmerald stat.mineBlock.minecraft.emerald_ore
scoreboard objectives add mineDiamond stat.mineBlock.minecraft.diamond_ore
scoreboard objectives add mineLapis stat.mineBlock.minecraft.lapis_ore
scoreboard objectives add mineGold stat.mineBlock.minecraft.gold_ore
scoreboard objectives add villagerTrade stat.tradedWithVillager
scoreboard objectives add enchantItem stat.itemEnchanted
scoreboard objectives add dealDamage stat.damageDealt

scoreboard objectives add newPoints dummy
scoreboard players add @a[score_killZombie_min=1] newPoints 15
scoreboard players add @a[score_killSkeleton_min=1] newPoints 35
scoreboard players add @a[score_killSpider_min=1] newPoints 20
scoreboard players add @a[score_killSilverfish_min=1] newPoints 25
scoreboard players add @a[score_killCreeper_min=1] newPoints 30
scoreboard players add @a[score_killWitch_min=1] newPoints 60
scoreboard players add @a[score_killVindicator_min=1] newPoints 120
scoreboard players add @a[score_killEvoker_min=1] newPoints 200
scoreboard players add @a[score_mineIron_min=1] newPoints 150
scoreboard players add @a[score_mineCoal_min=1] newPoints 150
scoreboard players add @a[score_mineEmerald_min=1] newPoints 180
scoreboard players add @a[score_mineDiamond_min=1] newPoints 230
scoreboard players add @a[score_mineLapis_min=1] newPoints 180
scoreboard players add @a[score_mineGold_min=1] newPoints 100
scoreboard players add @a[score_villagerTrade_min=1] newPoints 16
scoreboard players add @a[score_enchantItem_min=1] newPoints 65
scoreboard players add @a[score_dealDamage_min=1] newPoints 1

scoreboard players operation @a newPoints *= @a pointMultiplier
scoreboard players operation @a points += @a newPoints
scoreboard objectives remove newPoints

scoreboard players operation @a pointsPrev -= @a points
execute @a[score_pointsPrev=-1] ~ ~ ~ title @s actionbar ["",{"score":{"name":"@s","objective":"points"},"color":"gold","bold":true}]
execute @a[score_pointsPrev_min=1] ~ ~ ~ title @s actionbar ["",{"score":{"name":"@s","objective":"points"},"color":"gold","bold":true}]
scoreboard players operation @a pointsPrev = @a points

scoreboard players reset @a killZombie
scoreboard players reset @a killSkeleton
scoreboard players reset @a killSpider
scoreboard players reset @a killSilverfish
scoreboard players reset @a killCreeper
scoreboard players reset @a killWitch
scoreboard players reset @a killVindicator
scoreboard players reset @a killEvoker
scoreboard players reset @a mineIron
scoreboard players reset @a mineCoal
scoreboard players reset @a mineEmerald
scoreboard players reset @a mineDiamond
scoreboard players reset @a mineLapis
scoreboard players reset @a mineGold
scoreboard players reset @a villagerTrade
scoreboard players reset @a enchantItem
scoreboard players reset @a dealDamage
