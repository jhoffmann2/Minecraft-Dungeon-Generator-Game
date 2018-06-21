######################################################################################
# Function:		level1
# Created By:	Jordan Hoffmann
# Date:			6/3/18
# Version:		1.12
# Description:	start level1
######################################################################################
scoreboard players set @a[m=!3] levelLoading 2
title @a[m=!3] clear
clear @a[m=!3]
kill @e[type=item]

title @a actionbar ["",{"text":"Stage ","color":"white","bold":true},{"score":{"name":"@a[c=1]","objective":"level"},"color":"white","bold":true}]

effect @a[m=!3] clear
effect @a[m=!3] minecraft:resistance 5 5
xp -60L @a[m=!3]
effect @a[m=!3] minecraft:instant_health 1 100
effect @a[m=!3] minecraft:saturation 1 19

#remove potion stuff
gamerule naturalRegeneration true
scoreboard objectives remove vampireHeal
scoreboard objectives remove angerDammage

replaceitem entity @a[m=!3] slot.enderchest.0 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.1 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.2 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.3 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.4 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.5 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.6 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.7 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.8 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.9 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.10 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.11 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.12 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.13 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.14 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.15 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.16 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.17 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.18 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.19 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.20 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.21 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.22 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.23 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.24 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.25 minecraft:air
replaceitem entity @a[m=!3] slot.enderchest.26 minecraft:air
replaceitem entity @a slot.armor.feet minecraft:leather_boots 1 0 {HideFlags:7,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUIDLeast:264335,UUIDMost:341633,Slot:"feet"}],Unbreakable:1,display:{Name:"Cursed Boots",Lore:["Consider it a blessing to have shoes"]},ench:[{id:10,lvl:1}]}

execute @e[name=node,tag=trunk,score_ID=1,score_ID_min=1] ~ ~ ~ teleport @a[m=!3] ~ ~ ~ ~ ~
execute @a[m=!3,c=1] ~ ~ ~ scoreboard players tag @e[type=armor_stand,name=node,c=-1] add checkpoint
execute @e[tag=checkpoint] ~ ~ ~ setworldspawn ~ ~ ~

scoreboard players set @a pointMultiplier 1
