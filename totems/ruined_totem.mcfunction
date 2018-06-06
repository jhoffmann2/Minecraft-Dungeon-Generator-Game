######################################################################################
# Function:		test_totems
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	test if the player has a totem in their inventory and if they do, give the player the desired effect
######################################################################################

scoreboard players tag @a add ruinTotemSlot9 {Inventory:[{Slot:9b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot9] slot.inventory.0 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot9] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot9] remove ruinTotemSlot9

scoreboard players tag @a add ruinTotemSlot10 {Inventory:[{Slot:10b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot10] slot.inventory.1 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot10] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot10] remove ruinTotemSlot10

scoreboard players tag @a add ruinTotemSlot11 {Inventory:[{Slot:11b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot11] slot.inventory.2 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot11] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot11] remove ruinTotemSlot11

scoreboard players tag @a add ruinTotemSlot12 {Inventory:[{Slot:12b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot12] slot.inventory.3 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot12] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot12] remove ruinTotemSlot12

scoreboard players tag @a add ruinTotemSlot13 {Inventory:[{Slot:13b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot13] slot.inventory.4 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot13] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot13] remove ruinTotemSlot13

scoreboard players tag @a add ruinTotemSlot14 {Inventory:[{Slot:14b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot14] slot.inventory.5 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot14] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot14] remove ruinTotemSlot14

scoreboard players tag @a add ruinTotemSlot15 {Inventory:[{Slot:15b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot15] slot.inventory.6 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot15] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot15] remove ruinTotemSlot15

scoreboard players tag @a add ruinTotemSlot16 {Inventory:[{Slot:16b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot16] slot.inventory.7 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot16] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot16] remove ruinTotemSlot16

scoreboard players tag @a add ruinTotemSlot17 {Inventory:[{Slot:17b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot17] slot.inventory.8 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot17] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot17] remove ruinTotemSlot17

scoreboard players tag @a add ruinTotemSlot18 {Inventory:[{Slot:18b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot18] slot.inventory.9 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot18] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot18] remove ruinTotemSlot18

scoreboard players tag @a add ruinTotemSlot19 {Inventory:[{Slot:19b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot19] slot.inventory.10 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot19] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot19] remove ruinTotemSlot19

scoreboard players tag @a add ruinTotemSlot20 {Inventory:[{Slot:20b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot20] slot.inventory.11 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot20] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot20] remove ruinTotemSlot20

scoreboard players tag @a add ruinTotemSlot21 {Inventory:[{Slot:21b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot21] slot.inventory.12 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot21] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot21] remove ruinTotemSlot21

scoreboard players tag @a add ruinTotemSlot22 {Inventory:[{Slot:22b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot22] slot.inventory.13 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot22] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot22] remove ruinTotemSlot22

scoreboard players tag @a add ruinTotemSlot23 {Inventory:[{Slot:23b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot23] slot.inventory.14 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot23] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot23] remove ruinTotemSlot23

scoreboard players tag @a add ruinTotemSlot24 {Inventory:[{Slot:24b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot24] slot.inventory.15 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot24] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot24] remove ruinTotemSlot24

scoreboard players tag @a add ruinTotemSlot25 {Inventory:[{Slot:25b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot25] slot.inventory.16 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot25] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot25] remove ruinTotemSlot25

scoreboard players tag @a add ruinTotemSlot26 {Inventory:[{Slot:26b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot26] slot.inventory.17 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot26] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot26] remove ruinTotemSlot26

scoreboard players tag @a add ruinTotemSlot27 {Inventory:[{Slot:27b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot27] slot.inventory.18 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot27] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot27] remove ruinTotemSlot27

scoreboard players tag @a add ruinTotemSlot28 {Inventory:[{Slot:28b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot28] slot.inventory.19 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot28] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot28] remove ruinTotemSlot28

scoreboard players tag @a add ruinTotemSlot29 {Inventory:[{Slot:29b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot29] slot.inventory.20 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot29] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot29] remove ruinTotemSlot29

scoreboard players tag @a add ruinTotemSlot30 {Inventory:[{Slot:30b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot30] slot.inventory.21 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot30] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot30] remove ruinTotemSlot30

scoreboard players tag @a add ruinTotemSlot31 {Inventory:[{Slot:31b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot31] slot.inventory.22 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot31] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot31] remove ruinTotemSlot31

scoreboard players tag @a add ruinTotemSlot32 {Inventory:[{Slot:32b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot32] slot.inventory.23 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot32] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot32] remove ruinTotemSlot32

scoreboard players tag @a add ruinTotemSlot33 {Inventory:[{Slot:33b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot33] slot.inventory.24 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot33] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot33] remove ruinTotemSlot33

scoreboard players tag @a add ruinTotemSlot34 {Inventory:[{Slot:34b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot34] slot.inventory.25 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot34] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot34] remove ruinTotemSlot34

scoreboard players tag @a add ruinTotemSlot35 {Inventory:[{Slot:35b,tag:{display:{Lore:["Must Be Placed In Hotbar Or Offhand"]}}}]}
replaceitem entity @a[tag=ruinTotemSlot35] slot.inventory.26 minecraft:firework_charge 1 0 {HideFlags:63,display:{Name:"Ruined Totem"},Explosion:{Type:0,Colors:[I;4006432],FadeColors:[I;0]}}
execute @a[tag=ruinTotemSlot35] ~ ~ ~ playsound minecraft:item.shield.break ambient @s
scoreboard players tag @a[tag=ruinTotemSlot35] remove ruinTotemSlot35
