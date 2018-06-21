######################################################################################
# Function:		test_totems
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	test if the player drinks a potion and if they do, give the player the desired effect
######################################################################################

scoreboard objectives add drinkPotion stat.useItem.minecraft.potion

#Vampire Blood
    #Will only run if player had a Vampire potion last frame
    scoreboard players tag @a[score_drinkPotion=0] remove vampirePotion
    scoreboard players add @a drinkPotion 0
    tellraw @a[m=!3,tag=vampirePotion] ["",{"text":"\n FOOD WILL NO LONGER FILL YOUR THIRST. ","color":"dark_red","bold":true,"underlined":true},{"text":"\n\nNow You Must Feast On the Blood Of Your Enemies","color":"dark_red","bold":false,"underlined":false}]
    execute @a[m=!3,tag=vampirePotion] ~ ~ ~ gamerule naturalRegeneration false
    execute @a[m=!3,tag=vampirePotion] ~ ~ ~ scoreboard objectives add vampireHeal stat.damageDealt
    scoreboard players tag @a remove vampirePotion
    
    #Will only run if player drank the potion in the past and therefore the vampireHeal objective exists
    scoreboard players tag @a add regenerating {ActiveEffects:[{Id:10b}]}
    effect @a[m=!3,score_vampireHeal_min=1,score_vampireHeal=50,tag=!regenerating] minecraft:regeneration 1 2 false
    effect @a[m=!3,score_vampireHeal_min=51,score_vampireHeal=100,tag=!regenerating] minecraft:regeneration 1 3 false
    effect @a[m=!3,score_vampireHeal_min=101,score_vampireHeal=150,tag=!regenerating] minecraft:regeneration 1 4 false
    effect @a[m=!3,score_vampireHeal_min=151,score_vampireHeal=200,tag=!regenerating] minecraft:instant_health 1 1 false
    effect @a[m=!3,score_vampireHeal_min=201,score_vampireHeal=250,tag=!regenerating] minecraft:regeneration 1 2 false
    effect @a[m=!3,score_vampireHeal_min=251,score_vampireHeal=300,tag=!regenerating] minecraft:regeneration 1 3 false
    effect @a[m=!3,score_vampireHeal_min=301,score_vampireHeal=350,tag=!regenerating] minecraft:regeneration 1 4 false
    effect @a[m=!3,score_vampireHeal_min=351,score_vampireHeal=400,tag=!regenerating] minecraft:instant_health 1 2 false
    scoreboard players set @a[m=!3,score_vampireHeal_min=1,score_vampireHeal=400,tag=!regenerating] vampireHeal 0
    scoreboard players remove @a[m=!3,score_vampireHeal_min=401,tag=!regenerating] vampireHeal 400
    scoreboard players tag @a[m=!3] remove regenerating
    
    #Test for player with Vampire potion
    scoreboard players tag @a[m=!3] add vampirePotion {SelectedItemSlot:0,Inventory:[{Slot:0b,tag:{display:{Name:"Vampire Blood"},CustomPotionColor:6356992}}]}
    scoreboard players tag @a[m=!3] add vampirePotion {SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{display:{Name:"Vampire Blood"},CustomPotionColor:6356992}}]}
    scoreboard players tag @a[m=!3] add vampirePotion {SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{display:{Name:"Vampire Blood"},CustomPotionColor:6356992}}]}
    scoreboard players tag @a[m=!3] add vampirePotion {SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{display:{Name:"Vampire Blood"},CustomPotionColor:6356992}}]}
    scoreboard players tag @a[m=!3] add vampirePotion {SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{display:{Name:"Vampire Blood"},CustomPotionColor:6356992}}]}
    scoreboard players tag @a[m=!3] add vampirePotion {SelectedItemSlot:5,Inventory:[{Slot:5b,tag:{display:{Name:"Vampire Blood"},CustomPotionColor:6356992}}]}
    scoreboard players tag @a[m=!3] add vampirePotion {SelectedItemSlot:6,Inventory:[{Slot:6b,tag:{display:{Name:"Vampire Blood"},CustomPotionColor:6356992}}]}
    scoreboard players tag @a[m=!3] add vampirePotion {SelectedItemSlot:7,Inventory:[{Slot:7b,tag:{display:{Name:"Vampire Blood"},CustomPotionColor:6356992}}]}
    scoreboard players tag @a[m=!3] add vampirePotion {SelectedItemSlot:8,Inventory:[{Slot:8b,tag:{display:{Name:"Vampire Blood"},CustomPotionColor:6356992}}]}
    
#Bottled Up Anger
    #Will only run if player had an Anger potion last frame
    scoreboard players tag @a[score_drinkPotion=0] remove AngerPotion
    scoreboard players add @a drinkPotion 0
    tellraw @a[m=!3,tag=AngerPotion] ["",{"text":"\n YOUR ANGER HAS MADE YOUR DEFENCES USELESS. ","color":"dark_red","bold":true,"underlined":true},{"text":"\n\nThey Will Suffer The Consequencess","color":"dark_red","bold":false,"underlined":false}]
    execute @a[m=!3,tag=AngerPotion] ~ ~ ~ replaceitem entity @a slot.armor.feet minecraft:leather_boots 1 0 {HideFlags:7,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:-10,Operation:0,UUIDLeast:264335,UUIDMost:341633,Slot:"feet"}],Unbreakable:1,display:{Name:"Cursed Boots",Lore:["Consider it a blessing to have shoes"]},ench:[{id:10,lvl:1}]}
    execute @a[m=!3,tag=AngerPotion] ~ ~ ~ scoreboard objectives add angerDammage stat.angerDammage
    scoreboard players tag @a remove AngerPotion
    
    #Will only run if player drank the potion in the past and therefore the angerDammage objective exists
    execute @a[m=!3,score_angerDammage_min=1] ~ ~ ~ scoreboard players tag @e[type=zombie] add meleMob
    execute @a[m=!3,score_angerDammage_min=1] ~ ~ ~ scoreboard players tag @e[type=spider] add meleMob
    execute @a[m=!3,score_angerDammage_min=1] ~ ~ ~ scoreboard players tag @e[type=vindication_illager] add meleMob
    execute @a[m=!3,score_angerDammage_min=1] ~ ~ ~ scoreboard players tag @e[type=silverfish] add meleMob
    execute @a[m=!3,score_angerDammage_min=1] ~ ~ ~ effect @e[tag=meleMob,r=2] minecraft:wither 3 6
    scoreboard players tag @e remove meleMob
    scoreboard players set @a[m=!3,score_angerDammage_min=1] angerDammage 0
    
    #Test for player with Anger potion
    scoreboard players tag @a[m=!3] add AngerPotion {SelectedItemSlot:0,Inventory:[{Slot:0b,tag:{display:{Name:"Bottled Up Anger"},CustomPotionColor:6705678}}]}
    scoreboard players tag @a[m=!3] add AngerPotion {SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{display:{Name:"Bottled Up Anger"},CustomPotionColor:6705678}}]}
    scoreboard players tag @a[m=!3] add AngerPotion {SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{display:{Name:"Bottled Up Anger"},CustomPotionColor:6705678}}]}
    scoreboard players tag @a[m=!3] add AngerPotion {SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{display:{Name:"Bottled Up Anger"},CustomPotionColor:6705678}}]}
    scoreboard players tag @a[m=!3] add AngerPotion {SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{display:{Name:"Bottled Up Anger"},CustomPotionColor:6705678}}]}
    scoreboard players tag @a[m=!3] add AngerPotion {SelectedItemSlot:5,Inventory:[{Slot:5b,tag:{display:{Name:"Bottled Up Anger"},CustomPotionColor:6705678}}]}
    scoreboard players tag @a[m=!3] add AngerPotion {SelectedItemSlot:6,Inventory:[{Slot:6b,tag:{display:{Name:"Bottled Up Anger"},CustomPotionColor:6705678}}]}
    scoreboard players tag @a[m=!3] add AngerPotion {SelectedItemSlot:7,Inventory:[{Slot:7b,tag:{display:{Name:"Bottled Up Anger"},CustomPotionColor:6705678}}]}
    scoreboard players tag @a[m=!3] add AngerPotion {SelectedItemSlot:8,Inventory:[{Slot:8b,tag:{display:{Name:"Bottled Up Anger"},CustomPotionColor:6705678}}]}

#
    
scoreboard players set @a drinkPotion 0