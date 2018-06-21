######################################################################################
# Function:		test_totems
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	test if the player drinks a potion and if they do, give the player the desired effect
######################################################################################

scoreboard objectives add drinkPotion stat.useItem.minecraft.potion
    scoreboard players add @a drinkPotion 0
#Vampire Blood
    scoreboard players tag @a[m=!3] add vampirePotion {SelectedItemSlot:0,Inventory:[{Slot:0b,tag:{display:{Name:"Vampire Blood"},CustomPotionColor:6356992}}]}
    scoreboard players tag @a[m=!3] add vampirePotion {SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{display:{Name:"Vampire Blood"},CustomPotionColor:6356992}}]}
    scoreboard players tag @a[m=!3] add vampirePotion {SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{display:{Name:"Vampire Blood"},CustomPotionColor:6356992}}]}
    scoreboard players tag @a[m=!3] add vampirePotion {SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{display:{Name:"Vampire Blood"},CustomPotionColor:6356992}}]}
    scoreboard players tag @a[m=!3] add vampirePotion {SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{display:{Name:"Vampire Blood"},CustomPotionColor:6356992}}]}
    scoreboard players tag @a[m=!3] add vampirePotion {SelectedItemSlot:5,Inventory:[{Slot:5b,tag:{display:{Name:"Vampire Blood"},CustomPotionColor:6356992}}]}
    scoreboard players tag @a[m=!3] add vampirePotion {SelectedItemSlot:6,Inventory:[{Slot:6b,tag:{display:{Name:"Vampire Blood"},CustomPotionColor:6356992}}]}
    scoreboard players tag @a[m=!3] add vampirePotion {SelectedItemSlot:7,Inventory:[{Slot:7b,tag:{display:{Name:"Vampire Blood"},CustomPotionColor:6356992}}]}
    scoreboard players tag @a[m=!3] add vampirePotion {SelectedItemSlot:8,Inventory:[{Slot:8b,tag:{display:{Name:"Vampire Blood"},CustomPotionColor:6356992}}]}
    scoreboard players tag @a[score_drinkPotion=0] remove vampirePotion
    execute @a[m=!3,tag=vampirePotion] ~ ~ ~ say hello
    execute @a[m=!3,tag=vampirePotion] ~ ~ ~ gamerule naturalRegeneration false
    execute @a[m=!3,tag=vampirePotion] ~ ~ ~ scoreboard objectives add vampireHeal stat.damageDealt
    scoreboard players tag @a add regenerating {ActiveEffects:[{Id:10b}]}
    execute @a[m=!3,score_vampireHeal_min=1,score_vampireHeal=54,tag=!regenerating] ~ ~ ~ effect sugarjoe8 minecraft:regeneration 1 2 false
    execute @a[m=!3,score_vampireHeal_min=55,score_vampireHeal=108,tag=!regenerating] ~ ~ ~ effect sugarjoe8 minecraft:regeneration 1 3 false
    execute @a[m=!3,score_vampireHeal_min=109,score_vampireHeal=162,tag=!regenerating] ~ ~ ~ effect sugarjoe8 minecraft:regeneration 1 4 false
    execute @a[m=!3,score_vampireHeal_min=163,score_vampireHeal=216,tag=!regenerating] ~ ~ ~ effect sugarjoe8 minecraft:instant_health 1 1 false
    execute @a[m=!3,score_vampireHeal_min=270,score_vampireHeal=324,tag=!regenerating] ~ ~ ~ effect sugarjoe8 minecraft:regeneration 1 2 false
    execute @a[m=!3,score_vampireHeal_min=378,score_vampireHeal=432,tag=!regenerating] ~ ~ ~ effect sugarjoe8 minecraft:regeneration 1 3 false
    execute @a[m=!3,score_vampireHeal_min=486,score_vampireHeal=540,tag=!regenerating] ~ ~ ~ effect sugarjoe8 minecraft:regeneration 1 4 false
    execute @a[m=!3,score_vampireHeal_min=594,score_vampireHeal=648,tag=!regenerating] ~ ~ ~ effect sugarjoe8 minecraft:instant_health 1 2 false
    scoreboard players set @a[m=!3,tag=!regenerating] vampireHeal 0
    
    
    scoreboard players tag @a[m=!3] remove vampirePotion
    scoreboard players tag @a[m=!3] remove regenerating
    
scoreboard players set @a[m=!3] drinkPotion 0