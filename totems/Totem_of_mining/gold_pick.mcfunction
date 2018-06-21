######################################################################################
# Function:		test_totems
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	test if the player has a totem in their inventory and if they do, give the player the desired effect
######################################################################################
scoreboard players tag @a[m=!3] remove GoldenPickInSlot0
scoreboard players tag @a[m=!3] remove GoldenPickInSlot1
scoreboard players tag @a[m=!3] remove GoldenPickInSlot2
scoreboard players tag @a[m=!3] remove GoldenPickInSlot3
scoreboard players tag @a[m=!3] remove GoldenPickInSlot4
scoreboard players tag @a[m=!3] remove GoldenPickInSlot5
scoreboard players tag @a[m=!3] remove GoldenPickInSlot6
scoreboard players tag @a[m=!3] remove GoldenPickInSlot7
scoreboard players tag @a[m=!3] remove GoldenPickInSlot8
scoreboard players tag @a[m=!3] add GoldenPickInSlot0 {Inventory:[{Slot:0b,id:"minecraft:golden_pickaxe"}]}
scoreboard players tag @a[m=!3] add GoldenPickInSlot1 {Inventory:[{Slot:1b,id:"minecraft:golden_pickaxe"}]}
scoreboard players tag @a[m=!3] add GoldenPickInSlot2 {Inventory:[{Slot:2b,id:"minecraft:golden_pickaxe"}]}
scoreboard players tag @a[m=!3] add GoldenPickInSlot3 {Inventory:[{Slot:3b,id:"minecraft:golden_pickaxe"}]}
scoreboard players tag @a[m=!3] add GoldenPickInSlot4 {Inventory:[{Slot:4b,id:"minecraft:golden_pickaxe"}]}
scoreboard players tag @a[m=!3] add GoldenPickInSlot5 {Inventory:[{Slot:5b,id:"minecraft:golden_pickaxe"}]}
scoreboard players tag @a[m=!3] add GoldenPickInSlot6 {Inventory:[{Slot:6b,id:"minecraft:golden_pickaxe"}]}
scoreboard players tag @a[m=!3] add GoldenPickInSlot7 {Inventory:[{Slot:7b,id:"minecraft:golden_pickaxe"}]}
scoreboard players tag @a[m=!3] add GoldenPickInSlot8 {Inventory:[{Slot:8b,id:"minecraft:golden_pickaxe"}]}

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot0] ~ ~ ~ replaceitem entity @s[tag=GoldenPickInSlot0] slot.hotbar.0 minecraft:golden_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot0] ~ ~ ~ replaceitem entity @s[tag=GoldenPickInSlot0] slot.hotbar.0 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot0] ~ ~ ~ give @s[tag=GoldenPickInSlot0] minecraft:gold_nugget 3 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot0] ~ ~ ~ give @s[tag=GoldenPickInSlot0] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot0] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=GoldenPickInSlot0]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot1] ~ ~ ~ replaceitem entity @s[tag=GoldenPickInSlot1] slot.hotbar.1 minecraft:golden_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot1] ~ ~ ~ replaceitem entity @s[tag=GoldenPickInSlot1] slot.hotbar.1 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot1] ~ ~ ~ give @s[tag=GoldenPickInSlot1] minecraft:gold_nugget 3 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot1] ~ ~ ~ give @s[tag=GoldenPickInSlot1] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot1] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=GoldenPickInSlot1]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot2] ~ ~ ~ replaceitem entity @s[tag=GoldenPickInSlot2] slot.hotbar.2 minecraft:golden_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot2] ~ ~ ~ replaceitem entity @s[tag=GoldenPickInSlot2] slot.hotbar.2 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot2] ~ ~ ~ give @s[tag=GoldenPickInSlot2] minecraft:gold_nugget 3 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot2] ~ ~ ~ give @s[tag=GoldenPickInSlot2] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot2] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=GoldenPickInSlot2]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot3] ~ ~ ~ replaceitem entity @s[tag=GoldenPickInSlot3] slot.hotbar.3 minecraft:golden_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot3] ~ ~ ~ replaceitem entity @s[tag=GoldenPickInSlot3] slot.hotbar.3 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot3] ~ ~ ~ give @s[tag=GoldenPickInSlot3] minecraft:gold_nugget 3 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot3] ~ ~ ~ give @s[tag=GoldenPickInSlot3] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot3] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=GoldenPickInSlot3]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot4] ~ ~ ~ replaceitem entity @s[tag=GoldenPickInSlot4] slot.hotbar.4 minecraft:golden_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot4] ~ ~ ~ replaceitem entity @s[tag=GoldenPickInSlot4] slot.hotbar.4 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot4] ~ ~ ~ give @s[tag=GoldenPickInSlot4] minecraft:gold_nugget 3 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot4] ~ ~ ~ give @s[tag=GoldenPickInSlot4] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot4] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=GoldenPickInSlot4]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot5] ~ ~ ~ replaceitem entity @s[tag=GoldenPickInSlot5] slot.hotbar.5 minecraft:golden_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot5] ~ ~ ~ replaceitem entity @s[tag=GoldenPickInSlot5] slot.hotbar.5 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot5] ~ ~ ~ give @s[tag=GoldenPickInSlot5] minecraft:gold_nugget 3 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot5] ~ ~ ~ give @s[tag=GoldenPickInSlot5] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot5] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=GoldenPickInSlot5]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot6] ~ ~ ~ replaceitem entity @s[tag=GoldenPickInSlot6] slot.hotbar.6 minecraft:golden_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot6] ~ ~ ~ replaceitem entity @s[tag=GoldenPickInSlot6] slot.hotbar.6 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot6] ~ ~ ~ give @s[tag=GoldenPickInSlot6] minecraft:gold_nugget 3 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot6] ~ ~ ~ give @s[tag=GoldenPickInSlot6] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot6] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=GoldenPickInSlot6]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot7] ~ ~ ~ replaceitem entity @s[tag=GoldenPickInSlot7] slot.hotbar.7 minecraft:golden_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot7] ~ ~ ~ replaceitem entity @s[tag=GoldenPickInSlot7] slot.hotbar.7 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot7] ~ ~ ~ give @s[tag=GoldenPickInSlot7] minecraft:gold_nugget 3 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot7] ~ ~ ~ give @s[tag=GoldenPickInSlot7] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot7] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=GoldenPickInSlot7]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot8] ~ ~ ~ replaceitem entity @s[tag=GoldenPickInSlot8] slot.hotbar.8 minecraft:golden_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot8] ~ ~ ~ replaceitem entity @s[tag=GoldenPickInSlot8] slot.hotbar.8 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot8] ~ ~ ~ give @s[tag=GoldenPickInSlot8] minecraft:gold_nugget 3 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot8] ~ ~ ~ give @s[tag=GoldenPickInSlot8] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot8] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=GoldenPickInSlot8]
