######################################################################################
# Function:		test_totems
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	test if the player has a totem in their inventory and if they do, give the player the desired effect
######################################################################################
scoreboard players tag @a[m=!3] remove WoodenPickInSlot0
scoreboard players tag @a[m=!3] remove WoodenPickInSlot1
scoreboard players tag @a[m=!3] remove WoodenPickInSlot2
scoreboard players tag @a[m=!3] remove WoodenPickInSlot3
scoreboard players tag @a[m=!3] remove WoodenPickInSlot4
scoreboard players tag @a[m=!3] remove WoodenPickInSlot5
scoreboard players tag @a[m=!3] remove WoodenPickInSlot6
scoreboard players tag @a[m=!3] remove WoodenPickInSlot7
scoreboard players tag @a[m=!3] remove WoodenPickInSlot8
scoreboard players tag @a[m=!3] add WoodenPickInSlot0 {Inventory:[{Slot:0b,id:"minecraft:wooden_pickaxe"}]}
scoreboard players tag @a[m=!3] add WoodenPickInSlot1 {Inventory:[{Slot:1b,id:"minecraft:wooden_pickaxe"}]}
scoreboard players tag @a[m=!3] add WoodenPickInSlot2 {Inventory:[{Slot:2b,id:"minecraft:wooden_pickaxe"}]}
scoreboard players tag @a[m=!3] add WoodenPickInSlot3 {Inventory:[{Slot:3b,id:"minecraft:wooden_pickaxe"}]}
scoreboard players tag @a[m=!3] add WoodenPickInSlot4 {Inventory:[{Slot:4b,id:"minecraft:wooden_pickaxe"}]}
scoreboard players tag @a[m=!3] add WoodenPickInSlot5 {Inventory:[{Slot:5b,id:"minecraft:wooden_pickaxe"}]}
scoreboard players tag @a[m=!3] add WoodenPickInSlot6 {Inventory:[{Slot:6b,id:"minecraft:wooden_pickaxe"}]}
scoreboard players tag @a[m=!3] add WoodenPickInSlot7 {Inventory:[{Slot:7b,id:"minecraft:wooden_pickaxe"}]}
scoreboard players tag @a[m=!3] add WoodenPickInSlot8 {Inventory:[{Slot:8b,id:"minecraft:wooden_pickaxe"}]}

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot0] ~ ~ ~ replaceitem entity @s[tag=WoodenPickInSlot0] slot.hotbar.0 minecraft:wooden_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot0] ~ ~ ~ replaceitem entity @s[tag=WoodenPickInSlot0] slot.hotbar.0 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot0] ~ ~ ~ give @s[tag=WoodenPickInSlot0] minecraft:planks 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot0] ~ ~ ~ give @s[tag=WoodenPickInSlot0] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot0] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=WoodenPickInSlot0]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot1] ~ ~ ~ replaceitem entity @s[tag=WoodenPickInSlot1] slot.hotbar.1 minecraft:wooden_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot1] ~ ~ ~ replaceitem entity @s[tag=WoodenPickInSlot1] slot.hotbar.1 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot1] ~ ~ ~ give @s[tag=WoodenPickInSlot1] minecraft:planks 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot1] ~ ~ ~ give @s[tag=WoodenPickInSlot1] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot1] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=WoodenPickInSlot1]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot2] ~ ~ ~ replaceitem entity @s[tag=WoodenPickInSlot2] slot.hotbar.2 minecraft:wooden_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot2] ~ ~ ~ replaceitem entity @s[tag=WoodenPickInSlot2] slot.hotbar.2 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot2] ~ ~ ~ give @s[tag=WoodenPickInSlot2] minecraft:planks 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot2] ~ ~ ~ give @s[tag=WoodenPickInSlot2] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot2] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=WoodenPickInSlot2]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot3] ~ ~ ~ replaceitem entity @s[tag=WoodenPickInSlot3] slot.hotbar.3 minecraft:wooden_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot3] ~ ~ ~ replaceitem entity @s[tag=WoodenPickInSlot3] slot.hotbar.3 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot3] ~ ~ ~ give @s[tag=WoodenPickInSlot3] minecraft:planks 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot3] ~ ~ ~ give @s[tag=WoodenPickInSlot3] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot3] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=WoodenPickInSlot3]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot4] ~ ~ ~ replaceitem entity @s[tag=WoodenPickInSlot4] slot.hotbar.4 minecraft:wooden_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot4] ~ ~ ~ replaceitem entity @s[tag=WoodenPickInSlot4] slot.hotbar.4 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot4] ~ ~ ~ give @s[tag=WoodenPickInSlot4] minecraft:planks 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot4] ~ ~ ~ give @s[tag=WoodenPickInSlot4] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot4] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=WoodenPickInSlot4]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot5] ~ ~ ~ replaceitem entity @s[tag=WoodenPickInSlot5] slot.hotbar.5 minecraft:wooden_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot5] ~ ~ ~ replaceitem entity @s[tag=WoodenPickInSlot5] slot.hotbar.5 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot5] ~ ~ ~ give @s[tag=WoodenPickInSlot5] minecraft:planks 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot5] ~ ~ ~ give @s[tag=WoodenPickInSlot5] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot5] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=WoodenPickInSlot5]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot6] ~ ~ ~ replaceitem entity @s[tag=WoodenPickInSlot6] slot.hotbar.6 minecraft:wooden_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot6] ~ ~ ~ replaceitem entity @s[tag=WoodenPickInSlot6] slot.hotbar.6 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot6] ~ ~ ~ give @s[tag=WoodenPickInSlot6] minecraft:planks 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot6] ~ ~ ~ give @s[tag=WoodenPickInSlot6] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot6] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=WoodenPickInSlot6]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot7] ~ ~ ~ replaceitem entity @s[tag=WoodenPickInSlot7] slot.hotbar.7 minecraft:wooden_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot7] ~ ~ ~ replaceitem entity @s[tag=WoodenPickInSlot7] slot.hotbar.7 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot7] ~ ~ ~ give @s[tag=WoodenPickInSlot7] minecraft:planks 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot7] ~ ~ ~ give @s[tag=WoodenPickInSlot7] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot7] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=WoodenPickInSlot7]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot8] ~ ~ ~ replaceitem entity @s[tag=WoodenPickInSlot8] slot.hotbar.8 minecraft:wooden_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot8] ~ ~ ~ replaceitem entity @s[tag=WoodenPickInSlot8] slot.hotbar.8 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot8] ~ ~ ~ give @s[tag=WoodenPickInSlot8] minecraft:planks 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot8] ~ ~ ~ give @s[tag=WoodenPickInSlot8] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot8] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=WoodenPickInSlot8]
