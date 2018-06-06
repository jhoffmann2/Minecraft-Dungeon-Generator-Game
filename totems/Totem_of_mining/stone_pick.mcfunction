######################################################################################
# Function:		test_totems
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	test if the player has a totem in their inventory and if they do, give the player the desired effect
######################################################################################
scoreboard players tag @a remove StonePickInSlot0
scoreboard players tag @a remove StonePickInSlot1
scoreboard players tag @a remove StonePickInSlot2
scoreboard players tag @a remove StonePickInSlot3
scoreboard players tag @a remove StonePickInSlot4
scoreboard players tag @a remove StonePickInSlot5
scoreboard players tag @a remove StonePickInSlot6
scoreboard players tag @a remove StonePickInSlot7
scoreboard players tag @a remove StonePickInSlot8
scoreboard players tag @a add StonePickInSlot0 {Inventory:[{Slot:0b,id:"minecraft:stone_pickaxe"}]}
scoreboard players tag @a add StonePickInSlot1 {Inventory:[{Slot:1b,id:"minecraft:stone_pickaxe"}]}
scoreboard players tag @a add StonePickInSlot2 {Inventory:[{Slot:2b,id:"minecraft:stone_pickaxe"}]}
scoreboard players tag @a add StonePickInSlot3 {Inventory:[{Slot:3b,id:"minecraft:stone_pickaxe"}]}
scoreboard players tag @a add StonePickInSlot4 {Inventory:[{Slot:4b,id:"minecraft:stone_pickaxe"}]}
scoreboard players tag @a add StonePickInSlot5 {Inventory:[{Slot:5b,id:"minecraft:stone_pickaxe"}]}
scoreboard players tag @a add StonePickInSlot6 {Inventory:[{Slot:6b,id:"minecraft:stone_pickaxe"}]}
scoreboard players tag @a add StonePickInSlot7 {Inventory:[{Slot:7b,id:"minecraft:stone_pickaxe"}]}
scoreboard players tag @a add StonePickInSlot8 {Inventory:[{Slot:8b,id:"minecraft:stone_pickaxe"}]}

execute @a[tag=TotemOfMining] ~ ~ ~ execute @a[tag=!MiningPickInSlot0] ~ ~ ~ replaceitem entity @s[tag=StonePickInSlot0] slot.hotbar.0 minecraft:stone_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot0] ~ ~ ~ replaceitem entity @s[tag=StonePickInSlot0] slot.hotbar.0 minecraft:air 1 0
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot0] ~ ~ ~ give @s[tag=StonePickInSlot0] minecraft:cobblestone 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot0] ~ ~ ~ give @s[tag=StonePickInSlot0] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot0] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=StonePickInSlot0]

execute @a[tag=TotemOfMining] ~ ~ ~ execute @a[tag=!MiningPickInSlot1] ~ ~ ~ replaceitem entity @s[tag=StonePickInSlot1] slot.hotbar.1 minecraft:stone_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot1] ~ ~ ~ replaceitem entity @s[tag=StonePickInSlot1] slot.hotbar.1 minecraft:air 1 0
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot1] ~ ~ ~ give @s[tag=StonePickInSlot1] minecraft:cobblestone 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot1] ~ ~ ~ give @s[tag=StonePickInSlot1] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot1] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=StonePickInSlot1]

execute @a[tag=TotemOfMining] ~ ~ ~ execute @a[tag=!MiningPickInSlot2] ~ ~ ~ replaceitem entity @s[tag=StonePickInSlot2] slot.hotbar.2 minecraft:stone_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot2] ~ ~ ~ replaceitem entity @s[tag=StonePickInSlot2] slot.hotbar.2 minecraft:air 1 0
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot2] ~ ~ ~ give @s[tag=StonePickInSlot2] minecraft:cobblestone 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot2] ~ ~ ~ give @s[tag=StonePickInSlot2] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot2] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=StonePickInSlot2]

execute @a[tag=TotemOfMining] ~ ~ ~ execute @a[tag=!MiningPickInSlot3] ~ ~ ~ replaceitem entity @s[tag=StonePickInSlot3] slot.hotbar.3 minecraft:stone_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot3] ~ ~ ~ replaceitem entity @s[tag=StonePickInSlot3] slot.hotbar.3 minecraft:air 1 0
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot3] ~ ~ ~ give @s[tag=StonePickInSlot3] minecraft:cobblestone 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot3] ~ ~ ~ give @s[tag=StonePickInSlot3] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot3] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=StonePickInSlot3]

execute @a[tag=TotemOfMining] ~ ~ ~ execute @a[tag=!MiningPickInSlot4] ~ ~ ~ replaceitem entity @s[tag=StonePickInSlot4] slot.hotbar.4 minecraft:stone_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot4] ~ ~ ~ replaceitem entity @s[tag=StonePickInSlot4] slot.hotbar.4 minecraft:air 1 0
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot4] ~ ~ ~ give @s[tag=StonePickInSlot4] minecraft:cobblestone 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot4] ~ ~ ~ give @s[tag=StonePickInSlot4] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot4] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=StonePickInSlot4]

execute @a[tag=TotemOfMining] ~ ~ ~ execute @a[tag=!MiningPickInSlot5] ~ ~ ~ replaceitem entity @s[tag=StonePickInSlot5] slot.hotbar.5 minecraft:stone_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot5] ~ ~ ~ replaceitem entity @s[tag=StonePickInSlot5] slot.hotbar.5 minecraft:air 1 0
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot5] ~ ~ ~ give @s[tag=StonePickInSlot5] minecraft:cobblestone 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot5] ~ ~ ~ give @s[tag=StonePickInSlot5] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot5] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=StonePickInSlot5]

execute @a[tag=TotemOfMining] ~ ~ ~ execute @a[tag=!MiningPickInSlot6] ~ ~ ~ replaceitem entity @s[tag=StonePickInSlot6] slot.hotbar.6 minecraft:stone_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot6] ~ ~ ~ replaceitem entity @s[tag=StonePickInSlot6] slot.hotbar.6 minecraft:air 1 0
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot6] ~ ~ ~ give @s[tag=StonePickInSlot6] minecraft:cobblestone 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot6] ~ ~ ~ give @s[tag=StonePickInSlot6] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot6] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=StonePickInSlot6]

execute @a[tag=TotemOfMining] ~ ~ ~ execute @a[tag=!MiningPickInSlot7] ~ ~ ~ replaceitem entity @s[tag=StonePickInSlot7] slot.hotbar.7 minecraft:stone_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot7] ~ ~ ~ replaceitem entity @s[tag=StonePickInSlot7] slot.hotbar.7 minecraft:air 1 0
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot7] ~ ~ ~ give @s[tag=StonePickInSlot7] minecraft:cobblestone 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot7] ~ ~ ~ give @s[tag=StonePickInSlot7] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot7] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=StonePickInSlot7]

execute @a[tag=TotemOfMining] ~ ~ ~ execute @a[tag=!MiningPickInSlot8] ~ ~ ~ replaceitem entity @s[tag=StonePickInSlot8] slot.hotbar.8 minecraft:stone_pickaxe 1 0 {CanDestroy:["minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot8] ~ ~ ~ replaceitem entity @s[tag=StonePickInSlot8] slot.hotbar.8 minecraft:air 1 0
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot8] ~ ~ ~ give @s[tag=StonePickInSlot8] minecraft:cobblestone 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot8] ~ ~ ~ give @s[tag=StonePickInSlot8] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[tag=!TotemOfMining] ~ ~ ~ execute @a[tag=MiningPickInSlot8] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=StonePickInSlot8]
