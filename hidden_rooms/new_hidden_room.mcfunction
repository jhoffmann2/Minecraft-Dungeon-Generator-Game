#teleport editor to a random dead end in the map
scoreboard players tag @a add loading
execute @e[name=node,type=armor_stand,score_directionCount=1,tag=!yPos] ~ ~ ~ scoreboard players tag @s[tag=!yNeg] add validNode
tp @e[name=editor,type=armor_stand] @r[name=node,type=armor_stand,score_directionCount=1,tag=validNode]

scoreboard players tag @e[name=node,type=armor_stand,score_directionCount=1] remove validNode
execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[name=node,type=armor_stand,score_directionCount=1,r=1] add currentNode

scoreboard players operation tempFloor floor = @e[name=editor] floor
scoreboard players operation @e[name=editor] floor = @e[tag=currentNode] floor

#move editor to check hiddenroom availability
execute @e[name=node,type=armor_stand,tag=currentNode] ~ ~ ~ execute @s[tag=xPos] ~ ~ ~ tp @e[name=editor,type=armor_stand] ~-8 ~ ~

execute @e[name=node,type=armor_stand,tag=currentNode] ~ ~ ~ execute @s[tag=xNeg] ~ ~ ~ tp @e[name=editor,type=armor_stand] ~8 ~ ~

execute @e[name=node,type=armor_stand,tag=currentNode] ~ ~ ~ execute @s[tag=zPos] ~ ~ ~ tp @e[name=editor,type=armor_stand] ~ ~ ~-8

execute @e[name=node,type=armor_stand,tag=currentNode] ~ ~ ~ execute @s[tag=zNeg] ~ ~ ~ tp @e[name=editor,type=armor_stand] ~ ~ ~8

#Give editor the invalid_location tag if it can't build there
function dungeon_genorator:rooms/nodes/tag_handeling/check_availability

#if (valid_location) -> {place structure_block}
execute @e[name=editor,type=armor_stand,tag=!invalid_location] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"hiddenRoom",Tags:["roomBlock"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}

execute @e[name=editor,type=armor_stand,tag=!invalid_location] ~ ~ ~ execute @e[name=node,type=armor_stand,tag=currentNode] ~ ~ ~ execute @s[tag=xPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"hidden_room",rotation:"CLOCKWISE_180",posX:4,posY:-4,posZ:4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}

execute @e[name=editor,type=armor_stand,tag=!invalid_location] ~ ~ ~ execute @e[name=node,type=armor_stand,tag=currentNode] ~ ~ ~ execute @s[tag=xNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"hidden_room",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}

execute @e[name=editor,type=armor_stand,tag=!invalid_location] ~ ~ ~ execute @e[name=node,type=armor_stand,tag=currentNode] ~ ~ ~ execute @s[tag=zPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"hidden_room",rotation:"COUNTERCLOCKWISE_90",posX:-4,posY:-4,posZ:4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}

execute @e[name=editor,type=armor_stand,tag=!invalid_location] ~ ~ ~ execute @e[name=node,type=armor_stand,tag=currentNode] ~ ~ ~ execute @s[tag=zNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"hidden_room",rotation:"CLOCKWISE_90",posX:4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}

tp @a @e[name=editor,type=armor_stand,tag=invalid_location]
execute @e[name=editor,type=armor_stand,tag=invalid_location] ~ ~ ~ say invalid location

#tag handeling
execute @e[name=editor,type=armor_stand,tag=!invalid_location] ~ ~ ~ scoreboard players set @e[name=node,type=armor_stand,tag=currentNode] directionCount 3
execute @e[name=editor,type=armor_stand,tag=!invalid_location] ~ ~ ~ scoreboard players set @e[name=node,type=armor_stand,tag=hidden_room,r=1] directionCount 3
scoreboard players tag @e[name=editor,type=armor_stand,tag=!invalid_location] add hiddenRoomExists

#build and clean up item drops
execute @e[name=editor,type=armor_stand,tag=!invalid_location] ~ ~ ~ execute @e[name=node,type=armor_stand,tag=currentNode] ~ ~ ~ setblock ~ ~1 ~ redstone_block
function dungeon_genorator:block_placer/place_all_blocks
kill @e[type=item]

#clean up
scoreboard players tag @e[name=editor,type=armor_stand] remove invalid_location
scoreboard players tag @e[name=node,type=armor_stand,tag=currentNode] remove currentNode
scoreboard players operation @e[name=editor] floor = tempFloor floor