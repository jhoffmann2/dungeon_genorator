######################################################################################
# Function:		build_branches_helper
# Created By:	Jordan Hoffmann
# Date:			6/15/17
# Version:		1.12
# Description:	the recursive part of build_branches
######################################################################################

#tag handeling
scoreboard players tag @e[name=editor,type=armor_stand] remove repeatBuildHelper
scoreboard players add currentBranch branch 1
scoreboard players set currentID ID 0

#increment currentFloor (durring first itteration, this should start 1 lower than min floor so this will zero it out)
scoreboard players add @e[name=editor,type=armor_stand] currentFloor 1
tellraw @a[tag=debug] ["",{"text":"Current Floor: "},{"score":{"name":"@e[name=editor]","objective":"currentFloor"}}]

#teleport editor to random node on current floor
scoreboard players operation @e[name=node,type=armor_stand] floor -= @e[name=editor,type=armor_stand] currentFloor
tp @e[name=editor,type=armor_stand] @r[name=node,type=armor_stand,score_floor_min=0,score_floor=0,score_directionCount=2]
scoreboard players operation @e[name=node,type=armor_stand] floor += @e[name=editor,type=armor_stand] currentFloor

#update the floor score for editor to new location
scoreboard players operation @e[name=editor,type=armor_stand] floor = @e[name=editor,type=armor_stand] currentFloor
tellraw @a[tag=debug] ["",{"text":"Floor: "},{"score":{"name":"@e[name=editor]","objective":"floor"},"insertion":"tellraw @s %s"}]


#construct branch
execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[name=node,type=armor_stand,r=1] add branchStart
function dungeon_genorator:rooms/nodes/create/place_nodes
scoreboard objectives remove bailRooms      #   clean up temp variable for place_nodes itteration

execute @e[name=editor,type=armor_stand] ~ ~ ~ function dungeon_genorator:rooms/nodes/tag_handeling/add_next_tags unless @e[name=node,type=armor_stand,r=1,tag=branchStart]
execute @e[name=editor,type=armor_stand] ~ ~ ~ function dungeon_genorator:rooms/nodes/tag_handeling/add_variation_tags unless @e[name=node,type=armor_stand,r=1,tag=branchStart]
execute @e[name=editor,type=armor_stand] ~ ~ ~ function dungeon_genorator:rooms/construction/construct unless @e[name=node,type=armor_stand,r=1,tag=branchStart]

execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[name=node,type=armor_stand,tag=branchStart,r=1] remove multidirectional
scoreboard players tag @e[name=node,type=armor_stand] remove branchStart


#repeat if currentFloor is less than maxFloor
scoreboard players operation @e[name=editor,type=armor_stand] currentFloor -= maxFloor floor
scoreboard players tag @e[name=editor,type=armor_stand,score_currentFloor=-1] add repeatBuildHelper
scoreboard players operation @e[name=editor,type=armor_stand] currentFloor += maxFloor floor
execute @e[name=editor,type=armor_stand,tag=repeatBuildHelper] ~ ~ ~ function dungeon_genorator:rooms/build_branches_helper