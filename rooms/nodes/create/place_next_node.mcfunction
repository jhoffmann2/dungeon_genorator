######################################################################################
# Function:		place_next_node
# Created By:	Jordan Hoffmann
# Date:			6/15/17
# Version:		1.12
# Description:	place a new node in the web
######################################################################################

#pick random direction
scoreboard players tag @r[type=armor_stand,name=rDirection] add nextDirection

#move editor
execute @e[name=rDirection,type=armor_stand,tag=xPos] ~ ~ ~ execute @s[tag=nextDirection] ~ ~ ~ tp @e[name=editor,type=armor_stand] ~8 ~ ~

execute @e[name=rDirection,type=armor_stand,tag=xNeg] ~ ~ ~ execute @s[tag=nextDirection] ~ ~ ~ tp @e[name=editor,type=armor_stand] ~-8 ~ ~

execute @e[name=rDirection,type=armor_stand,tag=yPos] ~ ~ ~ execute @s[tag=nextDirection] ~ ~ ~ tp @e[name=editor,type=armor_stand] ~ ~8 ~

execute @e[name=rDirection,type=armor_stand,tag=yNeg] ~ ~ ~ execute @s[tag=nextDirection] ~ ~ ~ tp @e[name=editor,type=armor_stand] ~ ~-8 ~

execute @e[name=rDirection,type=armor_stand,tag=zPos] ~ ~ ~ execute @s[tag=nextDirection] ~ ~ ~ tp @e[name=editor,type=armor_stand] ~ ~ ~8

execute @e[name=rDirection,type=armor_stand,tag=zNeg] ~ ~ ~ execute @s[tag=nextDirection] ~ ~ ~ tp @e[name=editor,type=armor_stand] ~ ~ ~-8

#Give editor the invalid_location tag if it can't build there
function dungeon_genorator:rooms/nodes/tag_handeling/check_availability

#if (!invalid_location && yNeg|yPos) -> {change floor}
execute @e[name=rDirection,type=armor_stand,tag=yPos] ~ ~ ~ execute @s[tag=nextDirection] ~ ~ ~ scoreboard players add @e[name=editor,type=armor_stand,tag=!invalid_location] floor 1
execute @e[name=rDirection,type=armor_stand,tag=yNeg] ~ ~ ~ execute @s[tag=nextDirection] ~ ~ ~ scoreboard players remove @e[name=editor,type=armor_stand,tag=!invalid_location] floor 1

#if (invalid_location) -> {undo}, else -> {place node}
execute @e[name=editor,type=armor_stand,tag=!invalid_location] ~ ~ ~ function dungeon_genorator:rooms/nodes/create/create_node
execute @e[name=editor,type=armor_stand,tag=invalid_location] ~ ~ ~ function dungeon_genorator:rooms/nodes/last
execute @e[name=editor,type=armor_stand,tag=invalid_location] ~ ~ ~ execute @s[tag=startBranchHead] ~ ~ ~ function dungeon_genorator:rooms/nodes/return
scoreboard players tag @e[name=editor,type=armor_stand,tag=!invalid_location] remove startBranchHead

#clean up
scoreboard players tag @e[type=armor_stand,name=rDirection] remove nextDirection
scoreboard players tag @e[name=editor,type=armor_stand] remove invalid_location