######################################################################################
# Function:		level1
# Created By:	Jordan Hoffmann
# Date:			6/3/18
# Version:		1.12
# Description:	start level1
######################################################################################
scoreboard players set @a[m=!3] levelLoading 2
effect @a[m=!3] minecraft:resistance 5 5
kill @e[type=item]

title @a actionbar ["",{"text":"Stage ","color":"white","bold":true},{"score":{"name":"@a[c=1]","objective":"level"},"color":"white","bold":true}]

function game1:lastPlayerPosition



scoreboard players tag @e[type=armor_stand,name=node] remove checkpoint
execute @a[m=!3,c=1] ~ ~ ~ scoreboard players tag @e[type=armor_stand,name=node,c=-1] add checkpoint
execute @e[tag=checkpoint] ~ ~ ~ setworldspawn ~ ~ ~

