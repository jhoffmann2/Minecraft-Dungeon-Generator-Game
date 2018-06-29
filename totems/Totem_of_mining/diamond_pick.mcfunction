######################################################################################
# Function:		test_totems
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	test if the player has a totem in their inventory and if they do, give the player the desired effect
######################################################################################
scoreboard players tag @a[m=!3] remove DiamondPickInSlot0
scoreboard players tag @a[m=!3] remove DiamondPickInSlot1
scoreboard players tag @a[m=!3] remove DiamondPickInSlot2
scoreboard players tag @a[m=!3] remove DiamondPickInSlot3
scoreboard players tag @a[m=!3] remove DiamondPickInSlot4
scoreboard players tag @a[m=!3] remove DiamondPickInSlot5
scoreboard players tag @a[m=!3] remove DiamondPickInSlot6
scoreboard players tag @a[m=!3] remove DiamondPickInSlot7
scoreboard players tag @a[m=!3] remove DiamondPickInSlot8
scoreboard players tag @a[m=!3] add DiamondPickInSlot0 {Inventory:[{Slot:0b,id:"minecraft:diamond_pickaxe"}]}
scoreboard players tag @a[m=!3] add DiamondPickInSlot1 {Inventory:[{Slot:1b,id:"minecraft:diamond_pickaxe"}]}
scoreboard players tag @a[m=!3] add DiamondPickInSlot2 {Inventory:[{Slot:2b,id:"minecraft:diamond_pickaxe"}]}
scoreboard players tag @a[m=!3] add DiamondPickInSlot3 {Inventory:[{Slot:3b,id:"minecraft:diamond_pickaxe"}]}
scoreboard players tag @a[m=!3] add DiamondPickInSlot4 {Inventory:[{Slot:4b,id:"minecraft:diamond_pickaxe"}]}
scoreboard players tag @a[m=!3] add DiamondPickInSlot5 {Inventory:[{Slot:5b,id:"minecraft:diamond_pickaxe"}]}
scoreboard players tag @a[m=!3] add DiamondPickInSlot6 {Inventory:[{Slot:6b,id:"minecraft:diamond_pickaxe"}]}
scoreboard players tag @a[m=!3] add DiamondPickInSlot7 {Inventory:[{Slot:7b,id:"minecraft:diamond_pickaxe"}]}
scoreboard players tag @a[m=!3] add DiamondPickInSlot8 {Inventory:[{Slot:8b,id:"minecraft:diamond_pickaxe"}]}

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot0] ~ ~ ~ replaceitem entity @s[tag=DiamondPickInSlot0] slot.hotbar.0 minecraft:diamond_pickaxe 1 0 {CanDestroy:["minecraft:stonebrick","minecraft:stonebrick","minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot0] ~ ~ ~ replaceitem entity @s[tag=DiamondPickInSlot0] slot.hotbar.0 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot0] ~ ~ ~ give @s[tag=DiamondPickInSlot0] minecraft:diamond 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot0] ~ ~ ~ give @s[tag=DiamondPickInSlot0] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot0] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=DiamondPickInSlot0]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot1] ~ ~ ~ replaceitem entity @s[tag=DiamondPickInSlot1] slot.hotbar.1 minecraft:diamond_pickaxe 1 0 {CanDestroy:["minecraft:stonebrick","minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot1] ~ ~ ~ replaceitem entity @s[tag=DiamondPickInSlot1] slot.hotbar.1 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot1] ~ ~ ~ give @s[tag=DiamondPickInSlot1] minecraft:diamond 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot1] ~ ~ ~ give @s[tag=DiamondPickInSlot1] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot1] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=DiamondPickInSlot1]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot2] ~ ~ ~ replaceitem entity @s[tag=DiamondPickInSlot2] slot.hotbar.2 minecraft:diamond_pickaxe 1 0 {CanDestroy:["minecraft:stonebrick","minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot2] ~ ~ ~ replaceitem entity @s[tag=DiamondPickInSlot2] slot.hotbar.2 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot2] ~ ~ ~ give @s[tag=DiamondPickInSlot2] minecraft:diamond 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot2] ~ ~ ~ give @s[tag=DiamondPickInSlot2] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot2] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=DiamondPickInSlot2]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot3] ~ ~ ~ replaceitem entity @s[tag=DiamondPickInSlot3] slot.hotbar.3 minecraft:diamond_pickaxe 1 0 {CanDestroy:["minecraft:stonebrick","minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot3] ~ ~ ~ replaceitem entity @s[tag=DiamondPickInSlot3] slot.hotbar.3 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot3] ~ ~ ~ give @s[tag=DiamondPickInSlot3] minecraft:diamond 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot3] ~ ~ ~ give @s[tag=DiamondPickInSlot3] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot3] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=DiamondPickInSlot3]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot4] ~ ~ ~ replaceitem entity @s[tag=DiamondPickInSlot4] slot.hotbar.4 minecraft:diamond_pickaxe 1 0 {CanDestroy:["minecraft:stonebrick","minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot4] ~ ~ ~ replaceitem entity @s[tag=DiamondPickInSlot4] slot.hotbar.4 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot4] ~ ~ ~ give @s[tag=DiamondPickInSlot4] minecraft:diamond 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot4] ~ ~ ~ give @s[tag=DiamondPickInSlot4] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot4] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=DiamondPickInSlot4]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot5] ~ ~ ~ replaceitem entity @s[tag=DiamondPickInSlot5] slot.hotbar.5 minecraft:diamond_pickaxe 1 0 {CanDestroy:["minecraft:stonebrick","minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot5] ~ ~ ~ replaceitem entity @s[tag=DiamondPickInSlot5] slot.hotbar.5 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot5] ~ ~ ~ give @s[tag=DiamondPickInSlot5] minecraft:diamond 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot5] ~ ~ ~ give @s[tag=DiamondPickInSlot5] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot5] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=DiamondPickInSlot5]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot6] ~ ~ ~ replaceitem entity @s[tag=DiamondPickInSlot6] slot.hotbar.6 minecraft:diamond_pickaxe 1 0 {CanDestroy:["minecraft:stonebrick","minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot6] ~ ~ ~ replaceitem entity @s[tag=DiamondPickInSlot6] slot.hotbar.6 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot6] ~ ~ ~ give @s[tag=DiamondPickInSlot6] minecraft:diamond 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot6] ~ ~ ~ give @s[tag=DiamondPickInSlot6] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot6] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=DiamondPickInSlot6]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot7] ~ ~ ~ replaceitem entity @s[tag=DiamondPickInSlot7] slot.hotbar.7 minecraft:diamond_pickaxe 1 0 {CanDestroy:["minecraft:stonebrick","minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot7] ~ ~ ~ replaceitem entity @s[tag=DiamondPickInSlot7] slot.hotbar.7 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot7] ~ ~ ~ give @s[tag=DiamondPickInSlot7] minecraft:diamond 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot7] ~ ~ ~ give @s[tag=DiamondPickInSlot7] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot7] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=DiamondPickInSlot7]

execute @a[m=!3,tag=TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=!MiningPickInSlot8] ~ ~ ~ replaceitem entity @s[tag=DiamondPickInSlot8] slot.hotbar.8 minecraft:diamond_pickaxe 1 0 {CanDestroy:["minecraft:stonebrick","minecraft:emerald_ore","minecraft:diamond_ore","minecraft:lapis_ore","minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore"]}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot8] ~ ~ ~ replaceitem entity @s[tag=DiamondPickInSlot8] slot.hotbar.8 minecraft:air 1 0
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot8] ~ ~ ~ give @s[tag=DiamondPickInSlot8] minecraft:diamond 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot8] ~ ~ ~ give @s[tag=DiamondPickInSlot8] minecraft:stick 1 0 {display:{Name:"Broken Tool Rubble"}}
execute @a[m=!3,tag=!TotemOfMining] ~ ~ ~ execute @a[m=!3,tag=MiningPickInSlot8] ~ ~ ~ playsound minecraft:item.shield.break ambient @s[tag=DiamondPickInSlot8]
