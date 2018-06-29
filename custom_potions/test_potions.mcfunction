######################################################################################
# Function:		test_totems
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	test if the player drinks a potion and if they do, give the player the desired effect
######################################################################################

scoreboard objectives add drinkPotion stat.useItem.minecraft.potion
scoreboard objectives add eatApple stat.useItem.minecraft.apple

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
    scoreboard players tag @a[score_drinkPotion=0] remove angerPotion
    scoreboard players add @a drinkPotion 0
    tellraw @a[m=!3,tag=angerPotion] ["",{"text":"\n YOUR ANGER HAS MADE YOUR DEFENCES USELESS. ","color":"dark_red","bold":true,"underlined":true},{"text":"\n\nThey Will Suffer The Consequencess","color":"dark_red","bold":false,"underlined":false}]
    execute @a[m=!3,tag=angerPotion] ~ ~ ~ replaceitem entity @a slot.armor.feet minecraft:leather_boots 1 0 {HideFlags:7,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:-10,Operation:0,UUIDLeast:264335,UUIDMost:341633,Slot:"feet"}],Unbreakable:1,display:{Name:"Cursed Boots",Lore:["Consider it a blessing to have shoes"]},ench:[{id:10,lvl:1}]}
    execute @a[m=!3,tag=angerPotion] ~ ~ ~ scoreboard objectives add angerDammage stat.damageTaken
    scoreboard players tag @a remove angerPotion
    
    #Will only run if player drank the potion in the past and therefore the angerDammage objective exists
    execute @a[m=!3,score_angerDammage_min=1] ~ ~ ~ scoreboard players tag @e[type=zombie] add meleMob
    execute @a[m=!3,score_angerDammage_min=1] ~ ~ ~ scoreboard players tag @e[type=spider] add meleMob
    execute @a[m=!3,score_angerDammage_min=1] ~ ~ ~ scoreboard players tag @e[type=vindication_illager] add meleMob
    execute @a[m=!3,score_angerDammage_min=1] ~ ~ ~ scoreboard players tag @e[type=silverfish] add meleMob
    execute @a[m=!3,score_angerDammage_min=1] ~ ~ ~ effect @e[tag=meleMob,r=2] minecraft:wither 3 6
    scoreboard players tag @e remove meleMob
    scoreboard players set @a[m=!3,score_angerDammage_min=1] angerDammage 0
    
    #Test for player with Anger potion
    scoreboard players tag @a[m=!3] add angerPotion {SelectedItemSlot:0,Inventory:[{Slot:0b,tag:{display:{Name:"Bottled Up Anger"},CustomPotionColor:6705678}}]}
    scoreboard players tag @a[m=!3] add angerPotion {SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{display:{Name:"Bottled Up Anger"},CustomPotionColor:6705678}}]}
    scoreboard players tag @a[m=!3] add angerPotion {SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{display:{Name:"Bottled Up Anger"},CustomPotionColor:6705678}}]}
    scoreboard players tag @a[m=!3] add angerPotion {SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{display:{Name:"Bottled Up Anger"},CustomPotionColor:6705678}}]}
    scoreboard players tag @a[m=!3] add angerPotion {SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{display:{Name:"Bottled Up Anger"},CustomPotionColor:6705678}}]}
    scoreboard players tag @a[m=!3] add angerPotion {SelectedItemSlot:5,Inventory:[{Slot:5b,tag:{display:{Name:"Bottled Up Anger"},CustomPotionColor:6705678}}]}
    scoreboard players tag @a[m=!3] add angerPotion {SelectedItemSlot:6,Inventory:[{Slot:6b,tag:{display:{Name:"Bottled Up Anger"},CustomPotionColor:6705678}}]}
    scoreboard players tag @a[m=!3] add angerPotion {SelectedItemSlot:7,Inventory:[{Slot:7b,tag:{display:{Name:"Bottled Up Anger"},CustomPotionColor:6705678}}]}
    scoreboard players tag @a[m=!3] add angerPotion {SelectedItemSlot:8,Inventory:[{Slot:8b,tag:{display:{Name:"Bottled Up Anger"},CustomPotionColor:6705678}}]}

#Potion Of Rebirth
    #Will only run if player had a Rebirth potion last frame
    scoreboard players tag @a[score_drinkPotion=0] remove rebirthPotion
    scoreboard players add @a drinkPotion 0
    tellraw @a[m=!3,tag=rebirthPotion] ["",{"text":"\n YOU'VE BEEN REBORN. ","color":"white","bold":true,"underlined":true},{"text":"\n\nYour Score and Level Have Been Reset","color":"white","bold":false,"underlined":false}]
    scoreboard players tag @a[m=!3,tag=rebirthPotion] add being_reborn
    execute @a[m=!3,tag=rebirthPotion] ~ ~ ~ function game1:initiate_game
    scoreboard players tag @a remove rebirthPotion
    
    #Test for player with Rebirth potion
    scoreboard players tag @a[m=!3] add rebirthPotion {SelectedItemSlot:0,Inventory:[{Slot:0b,tag:{display:{Name:"Potion Of Rebirth"},CustomPotionColor:14614527}}]}
    scoreboard players tag @a[m=!3] add rebirthPotion {SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{display:{Name:"Potion Of Rebirth"},CustomPotionColor:14614527}}]}
    scoreboard players tag @a[m=!3] add rebirthPotion {SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{display:{Name:"Potion Of Rebirth"},CustomPotionColor:14614527}}]}
    scoreboard players tag @a[m=!3] add rebirthPotion {SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{display:{Name:"Potion Of Rebirth"},CustomPotionColor:14614527}}]}
    scoreboard players tag @a[m=!3] add rebirthPotion {SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{display:{Name:"Potion Of Rebirth"},CustomPotionColor:14614527}}]}
    scoreboard players tag @a[m=!3] add rebirthPotion {SelectedItemSlot:5,Inventory:[{Slot:5b,tag:{display:{Name:"Potion Of Rebirth"},CustomPotionColor:14614527}}]}
    scoreboard players tag @a[m=!3] add rebirthPotion {SelectedItemSlot:6,Inventory:[{Slot:6b,tag:{display:{Name:"Potion Of Rebirth"},CustomPotionColor:14614527}}]}
    scoreboard players tag @a[m=!3] add rebirthPotion {SelectedItemSlot:7,Inventory:[{Slot:7b,tag:{display:{Name:"Potion Of Rebirth"},CustomPotionColor:14614527}}]}
    scoreboard players tag @a[m=!3] add rebirthPotion {SelectedItemSlot:8,Inventory:[{Slot:8b,tag:{display:{Name:"Potion Of Rebirth"},CustomPotionColor:14614527}}]}

#Dwarven Moonshine
    #Will only run if player had a Dwarven potion last frame
    scoreboard players tag @a[score_drinkPotion=0] remove dwarvenPotion
    scoreboard players add @a drinkPotion 0
    tellraw @a[m=!3,tag=dwarvenPotion] ["",{"text":"\n YOU'VE BECOME STAGGERINGLY DRUNK. ","color":"dark_red","bold":true,"underlined":true},{"text":"\n\nYou Can No Longer Swing a Sword Straight\nBut Your Drunken Weight Has Made Your Axe Swing Deadly","color":"dark_red","bold":false,"underlined":false}]
    scoreboard players tag @a[m=!3,tag=dwarvenPotion] add isDrunk
    scoreboard players tag @a remove dwarvenPotion
    
    #Will only run if player has drank the Dwarven potion already
    execute @a[m=!3,tag=isDrunk] ~ ~ ~ function game1:custom_potions/testfor_holdingSword
    execute @a[m=!3,tag=isDrunk] ~ ~ ~ function game1:custom_potions/testfor_holdingAxe
    execute @a[m=!3,tag=isDrunk] ~ ~ ~ effect @s[tag=holdingSword] minecraft:nausea 4
    execute @a[m=!3,tag=isDrunk] ~ ~ ~ replaceitem entity @s[tag=!holdingAxe] slot.armor.feet minecraft:leather_boots 1 0 {HideFlags:7,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:-3,Operation:0,UUIDLeast:280655,UUIDMost:348671},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUIDLeast:264335,UUIDMost:341633,Slot:"feet"}],Unbreakable:1,display:{Name:"Cursed Boots",Lore:["Consider it a blessing to have shoes"]},ench:[{id:10,lvl:1}]}
    execute @a[m=!3,tag=isDrunk] ~ ~ ~ replaceitem entity @s[tag=holdingAxe] slot.armor.feet minecraft:leather_boots 1 0 {HideFlags:7,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:3,Operation:0,UUIDLeast:280655,UUIDMost:348671},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUIDLeast:412708,UUIDMost:562535,Slot:"feet"}],Unbreakable:1,display:{Name:"Cursed Boots",Lore:["Consider it a blessing to have shoes"]},ench:[{id:10,lvl:1}]}
    
    #Test for player with Dwarven potion
    scoreboard players tag @a[m=!3] add dwarvenPotion {SelectedItemSlot:0,Inventory:[{Slot:0b,tag:{display:{Name:"Dwarven Moonshine"},CustomPotionColor:7881812}}]}
    scoreboard players tag @a[m=!3] add dwarvenPotion {SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{display:{Name:"Dwarven Moonshine"},CustomPotionColor:7881812}}]}
    scoreboard players tag @a[m=!3] add dwarvenPotion {SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{display:{Name:"Dwarven Moonshine"},CustomPotionColor:7881812}}]}
    scoreboard players tag @a[m=!3] add dwarvenPotion {SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{display:{Name:"Dwarven Moonshine"},CustomPotionColor:7881812}}]}
    scoreboard players tag @a[m=!3] add dwarvenPotion {SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{display:{Name:"Dwarven Moonshine"},CustomPotionColor:7881812}}]}
    scoreboard players tag @a[m=!3] add dwarvenPotion {SelectedItemSlot:5,Inventory:[{Slot:5b,tag:{display:{Name:"Dwarven Moonshine"},CustomPotionColor:7881812}}]}
    scoreboard players tag @a[m=!3] add dwarvenPotion {SelectedItemSlot:6,Inventory:[{Slot:6b,tag:{display:{Name:"Dwarven Moonshine"},CustomPotionColor:7881812}}]}
    scoreboard players tag @a[m=!3] add dwarvenPotion {SelectedItemSlot:7,Inventory:[{Slot:7b,tag:{display:{Name:"Dwarven Moonshine"},CustomPotionColor:7881812}}]}
    scoreboard players tag @a[m=!3] add dwarvenPotion {SelectedItemSlot:8,Inventory:[{Slot:8b,tag:{display:{Name:"Dwarven Moonshine"},CustomPotionColor:7881812}}]}

#Ender Juice
    #Will only run if player had an Ender potion last frame
    scoreboard players tag @a[score_drinkPotion=0] remove enderPotion
    scoreboard players add @a drinkPotion 0
    tellraw @a[m=!3,tag=enderPotion] ["",{"text":"\n YOU'VE BEEN TELEPORTED TO A DIFFERENT ROOM. ","color":"dark_purple","bold":true,"underlined":true}]
    execute @a[m=!3,tag=enderPotion] ~ ~ ~ scoreboard objectives add isAir dummy
    execute @a[m=!3,tag=enderPotion] ~ ~ ~ scoreboard players add @e[type=armor_stand,name=node] isAir 0
    execute @a[m=!3,tag=enderPotion] ~ ~ ~ stats entity @e[type=armor_stand,name=node] set AffectedBlocks @s isAir
    execute @a[m=!3,tag=enderPotion] ~ ~ ~ execute @e[type=armor_stand,name=node] ~ ~ ~ fill ~ ~-1 ~ ~ ~1 ~ minecraft:structure_void 0 replace minecraft:air
    execute @a[m=!3,tag=enderPotion] ~ ~ ~ tp @s @r[type=armor_stand,name=node,score_isAir_min=3,rm=8]
    scoreboard objectives remove isAir
    execute @e[type=armor_stand,name=node] ~ ~ ~ fill ~ ~-1 ~ ~ ~1 ~ minecraft:air 0 replace minecraft:structure_void
    
    scoreboard players tag @a remove enderPotion
    
    #Test for player with Ender potion
    scoreboard players tag @a[m=!3] add enderPotion {SelectedItemSlot:0,Inventory:[{Slot:0b,tag:{display:{Name:"Ender Juice"},CustomPotionColor:12655060}}]}
    scoreboard players tag @a[m=!3] add enderPotion {SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{display:{Name:"Ender Juice"},CustomPotionColor:12655060}}]}
    scoreboard players tag @a[m=!3] add enderPotion {SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{display:{Name:"Ender Juice"},CustomPotionColor:12655060}}]}
    scoreboard players tag @a[m=!3] add enderPotion {SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{display:{Name:"Ender Juice"},CustomPotionColor:12655060}}]}
    scoreboard players tag @a[m=!3] add enderPotion {SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{display:{Name:"Ender Juice"},CustomPotionColor:12655060}}]}
    scoreboard players tag @a[m=!3] add enderPotion {SelectedItemSlot:5,Inventory:[{Slot:5b,tag:{display:{Name:"Ender Juice"},CustomPotionColor:12655060}}]}
    scoreboard players tag @a[m=!3] add enderPotion {SelectedItemSlot:6,Inventory:[{Slot:6b,tag:{display:{Name:"Ender Juice"},CustomPotionColor:12655060}}]}
    scoreboard players tag @a[m=!3] add enderPotion {SelectedItemSlot:7,Inventory:[{Slot:7b,tag:{display:{Name:"Ender Juice"},CustomPotionColor:12655060}}]}
    scoreboard players tag @a[m=!3] add enderPotion {SelectedItemSlot:8,Inventory:[{Slot:8b,tag:{display:{Name:"Ender Juice"},CustomPotionColor:12655060}}]}

#Apple of Eden
    #Will only run if player had an Apple of Eden last frame
    scoreboard players tag @a[score_eatApple=0] remove edenApple
    scoreboard players add @a eatApple 0
    tellraw @a[m=!3,tag=edenApple] ["",{"text":"\n YOU'VE BEEN TRICKED! ","color":"black","bold":true,"underlined":true},{"text":"\n\nYou've Sold Your Life in Return for Points","color":"black","bold":false,"underlined":false}]
    execute @a[m=!3,tag=edenApple] ~ ~ ~ scoreboard objectives add AppleTimer dummy
    execute @a[m=!3,tag=edenApple] ~ ~ ~ scoreboard players add @a[m=!3] AppleTimer 0
    scoreboard players tag @a remove edenApple
    
    #Will only run if player ate the apple in the past and therefore the edenApple objective exists
    effect @a[m=!3,score_AppleTimer=0] minecraft:wither 1 6
    scoreboard players add @a[m=!3,score_AppleTimer=0] points 150
    scoreboard players add @a[m=!3] AppleTimer 1
    scoreboard players set @a[m=!3,score_AppleTimer_min=301] AppleTimer 0
    
    #Test for player with Apple of Eden
    scoreboard players tag @a[m=!3] add edenApple {SelectedItemSlot:0,Inventory:[{Slot:0b,tag:{display:{Name:"Apple Of Eden",Lore:["Knowledge of Good and Evil"]}}}]}
    scoreboard players tag @a[m=!3] add edenApple {SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{display:{Name:"Apple Of Eden",Lore:["Knowledge of Good and Evil"]}}}]}
    scoreboard players tag @a[m=!3] add edenApple {SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{display:{Name:"Apple Of Eden",Lore:["Knowledge of Good and Evil"]}}}]}
    scoreboard players tag @a[m=!3] add edenApple {SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{display:{Name:"Apple Of Eden",Lore:["Knowledge of Good and Evil"]}}}]}
    scoreboard players tag @a[m=!3] add edenApple {SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{display:{Name:"Apple Of Eden",Lore:["Knowledge of Good and Evil"]}}}]}
    scoreboard players tag @a[m=!3] add edenApple {SelectedItemSlot:5,Inventory:[{Slot:5b,tag:{display:{Name:"Apple Of Eden",Lore:["Knowledge of Good and Evil"]}}}]}
    scoreboard players tag @a[m=!3] add edenApple {SelectedItemSlot:6,Inventory:[{Slot:6b,tag:{display:{Name:"Apple Of Eden",Lore:["Knowledge of Good and Evil"]}}}]}
    scoreboard players tag @a[m=!3] add edenApple {SelectedItemSlot:7,Inventory:[{Slot:7b,tag:{display:{Name:"Apple Of Eden",Lore:["Knowledge of Good and Evil"]}}}]}
    scoreboard players tag @a[m=!3] add edenApple {SelectedItemSlot:8,Inventory:[{Slot:8b,tag:{display:{Name:"Apple Of Eden",Lore:["Knowledge of Good and Evil"]}}}]}

#Ent Sap
    #Will only run if player had an Ent potion last frame
    scoreboard players tag @a[score_drinkPotion=0] remove entPotion
    scoreboard players add @a drinkPotion 0
    tellraw @a[m=!3,tag=entPotion] ["",{"text":"\n YOU'VE BEEN GRANTED NATURAL POWERS. ","color":"green","bold":true,"underlined":true},{"text":"\n\nYou May Now Walk Into Tall Plants to Heal","color":"green","bold":false,"underlined":false}]
    execute @a[m=!3,tag=entPotion] ~ ~ ~ scoreboard objectives add entHeal dummy
    execute @a[m=!3,tag=entPotion] ~ ~ ~ scoreboard objectives add entBurn dummy
    scoreboard players tag @a remove entPotion
    
    #Will only run if player drank the potion in the past and therefore the entHeal objective exists
    stats entity @a[m=!3] set AffectedBlocks @s entHeal
    scoreboard players add @a[m=!3] entHeal 0
    scoreboard players tag @a add regenerating {ActiveEffects:[{Id:10b}]}
    execute @a[m=!3] ~ ~ ~ testforblock ~ ~ ~ minecraft:double_plant
    effect @a[m=!3,score_entHeal_min=1,score_entHeal=1,tag=!regenerating] minecraft:regeneration 100000 1 false
    effect @a[m=!3,score_entHeal_min=0,score_entHeal=0,tag=regenerating] clear
    scoreboard players tag @a remove regenerating
    stats entity @a[m=!3] clear AffectedBlocks
    
    #Test for player with Ent potion
    scoreboard players tag @a[m=!3] add entPotion {SelectedItemSlot:0,Inventory:[{Slot:0b,tag:{display:{Name:"Ent Sap"},CustomPotionColor:2256906}}]}
    scoreboard players tag @a[m=!3] add entPotion {SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{display:{Name:"Ent Sap"},CustomPotionColor:2256906}}]}
    scoreboard players tag @a[m=!3] add entPotion {SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{display:{Name:"Ent Sap"},CustomPotionColor:2256906}}]}
    scoreboard players tag @a[m=!3] add entPotion {SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{display:{Name:"Ent Sap"},CustomPotionColor:2256906}}]}
    scoreboard players tag @a[m=!3] add entPotion {SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{display:{Name:"Ent Sap"},CustomPotionColor:2256906}}]}
    scoreboard players tag @a[m=!3] add entPotion {SelectedItemSlot:5,Inventory:[{Slot:5b,tag:{display:{Name:"Ent Sap"},CustomPotionColor:2256906}}]}
    scoreboard players tag @a[m=!3] add entPotion {SelectedItemSlot:6,Inventory:[{Slot:6b,tag:{display:{Name:"Ent Sap"},CustomPotionColor:2256906}}]}
    scoreboard players tag @a[m=!3] add entPotion {SelectedItemSlot:7,Inventory:[{Slot:7b,tag:{display:{Name:"Ent Sap"},CustomPotionColor:2256906}}]}
    scoreboard players tag @a[m=!3] add entPotion {SelectedItemSlot:8,Inventory:[{Slot:8b,tag:{display:{Name:"Ent Sap"},CustomPotionColor:2256906}}]}
   
scoreboard players set @a drinkPotion 0
scoreboard players set @a eatApple 0
