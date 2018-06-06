######################################################################################
# Function:		test_totems
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	test if the player has a totem in their inventory and if they do, give the player the desired effect
######################################################################################
scoreboard players tag @a remove IronPickInSlot0
scoreboard players tag @a remove IronPickInSlot1
scoreboard players tag @a remove IronPickInSlot2
scoreboard players tag @a remove IronPickInSlot3
scoreboard players tag @a remove IronPickInSlot4
scoreboard players tag @a remove IronPickInSlot5
scoreboard players tag @a remove IronPickInSlot6
scoreboard players tag @a remove IronPickInSlot7
scoreboard players tag @a remove IronPickInSlot8
scoreboard players tag @a add IronPickInSlot0 {Inventory:[{Slot:0b,id:"minecraft:iron_pickaxe"}]}
scoreboard players tag @a add IronPickInSlot1 {Inventory:[{Slot:1b,id:"minecraft:iron_pickaxe"}]}
scoreboard players tag @a add IronPickInSlot2 {Inventory:[{Slot:2b,id:"minecraft:iron_pickaxe"}]}
scoreboard players tag @a add IronPickInSlot3 {Inventory:[{Slot:3b,id:"minecraft:iron_pickaxe"}]}
scoreboard players tag @a add IronPickInSlot4 {Inventory:[{Slot:4b,id:"minecraft:iron_pickaxe"}]}
scoreboard players tag @a add IronPickInSlot5 {Inventory:[{Slot:5b,id:"minecraft:iron_pickaxe"}]}
scoreboard players tag @a add IronPickInSlot6 {Inventory:[{Slot:6b,id:"minecraft:iron_pickaxe"}]}
scoreboard players tag @a add IronPickInSlot7 {Inventory:[{Slot:7b,id:"minecraft:iron_pickaxe"}]}
scoreboard players tag @a add IronPickInSlot8 {Inventory:[{Slot:8b,id:"minecraft:iron_pickaxe"}]}

execute @a[tag=TotemOfMining] ~ ~ ~ execute @a[tag=!MiningPickInSlot0] ~ ~ ~ replaceitem entity @s[tag=IronPickInSlot0] slot.hotbar.0 minecraft:iron_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot0] ~ ~ ~ replaceitem entity @s[tag=IronPickInSlot0] slot.hotbar.0 minecraft:air 1 0
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot0] ~ ~ ~ give @s[tag=IronPickInSlot0] minecraft:iron_nugget 3 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot0] ~ ~ ~ give @s[tag=IronPickInSlot0] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot0] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=IronPickInSlot0]

execute @a[tag=TotemOfMining] ~ ~ ~ execute @a[tag=!MiningPickInSlot1] ~ ~ ~ replaceitem entity @s[tag=IronPickInSlot1] slot.hotbar.1 minecraft:iron_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot1] ~ ~ ~ replaceitem entity @s[tag=IronPickInSlot1] slot.hotbar.1 minecraft:air 1 0
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot1] ~ ~ ~ give @s[tag=IronPickInSlot1] minecraft:iron_nugget 3 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot1] ~ ~ ~ give @s[tag=IronPickInSlot1] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot1] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=IronPickInSlot1]

execute @a[tag=TotemOfMining] ~ ~ ~ execute @a[tag=!MiningPickInSlot2] ~ ~ ~ replaceitem entity @s[tag=IronPickInSlot2] slot.hotbar.2 minecraft:iron_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot2] ~ ~ ~ replaceitem entity @s[tag=IronPickInSlot2] slot.hotbar.2 minecraft:air 1 0
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot2] ~ ~ ~ give @s[tag=IronPickInSlot2] minecraft:iron_nugget 3 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot2] ~ ~ ~ give @s[tag=IronPickInSlot2] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot2] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=IronPickInSlot2]

execute @a[tag=TotemOfMining] ~ ~ ~ execute @a[tag=!MiningPickInSlot3] ~ ~ ~ replaceitem entity @s[tag=IronPickInSlot3] slot.hotbar.3 minecraft:iron_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot3] ~ ~ ~ replaceitem entity @s[tag=IronPickInSlot3] slot.hotbar.3 minecraft:air 1 0
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot3] ~ ~ ~ give @s[tag=IronPickInSlot3] minecraft:iron_nugget 3 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot3] ~ ~ ~ give @s[tag=IronPickInSlot3] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot3] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=IronPickInSlot3]

execute @a[tag=TotemOfMining] ~ ~ ~ execute @a[tag=!MiningPickInSlot4] ~ ~ ~ replaceitem entity @s[tag=IronPickInSlot4] slot.hotbar.4 minecraft:iron_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot4] ~ ~ ~ replaceitem entity @s[tag=IronPickInSlot4] slot.hotbar.4 minecraft:air 1 0
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot4] ~ ~ ~ give @s[tag=IronPickInSlot4] minecraft:iron_nugget 3 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot4] ~ ~ ~ give @s[tag=IronPickInSlot4] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot4] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=IronPickInSlot4]

execute @a[tag=TotemOfMining] ~ ~ ~ execute @a[tag=!MiningPickInSlot5] ~ ~ ~ replaceitem entity @s[tag=IronPickInSlot5] slot.hotbar.5 minecraft:iron_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot5] ~ ~ ~ replaceitem entity @s[tag=IronPickInSlot5] slot.hotbar.5 minecraft:air 1 0
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot5] ~ ~ ~ give @s[tag=IronPickInSlot5] minecraft:iron_nugget 3 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot5] ~ ~ ~ give @s[tag=IronPickInSlot5] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot5] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=IronPickInSlot5]

execute @a[tag=TotemOfMining] ~ ~ ~ execute @a[tag=!MiningPickInSlot6] ~ ~ ~ replaceitem entity @s[tag=IronPickInSlot6] slot.hotbar.6 minecraft:iron_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot6] ~ ~ ~ replaceitem entity @s[tag=IronPickInSlot6] slot.hotbar.6 minecraft:air 1 0
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot6] ~ ~ ~ give @s[tag=IronPickInSlot6] minecraft:iron_nugget 3 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot6] ~ ~ ~ give @s[tag=IronPickInSlot6] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot6] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=IronPickInSlot6]

execute @a[tag=TotemOfMining] ~ ~ ~ execute @a[tag=!MiningPickInSlot7] ~ ~ ~ replaceitem entity @s[tag=IronPickInSlot7] slot.hotbar.7 minecraft:iron_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot7] ~ ~ ~ replaceitem entity @s[tag=IronPickInSlot7] slot.hotbar.7 minecraft:air 1 0
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot7] ~ ~ ~ give @s[tag=IronPickInSlot7] minecraft:iron_nugget 3 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot7] ~ ~ ~ give @s[tag=IronPickInSlot7] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot7] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=IronPickInSlot7]

execute @a[tag=TotemOfMining] ~ ~ ~ execute @a[tag=!MiningPickInSlot8] ~ ~ ~ replaceitem entity @s[tag=IronPickInSlot8] slot.hotbar.8 minecraft:iron_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot8] ~ ~ ~ replaceitem entity @s[tag=IronPickInSlot8] slot.hotbar.8 minecraft:air 1 0
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot8] ~ ~ ~ give @s[tag=IronPickInSlot8] minecraft:iron_nugget 3 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot8] ~ ~ ~ give @s[tag=IronPickInSlot8] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot8] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=IronPickInSlot8]
