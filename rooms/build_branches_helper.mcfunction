######################################################################################
# Function:		build_branches_helper
# Created By:	Jordan Hoffmann
# Date:			6/15/17
# Version:		1.12
# Description:	the recursive part of build_branches
######################################################################################


#tag handeling
scoreboard players tag @e[name=editor,type=armor_stand] remove repeatBuildHelper
scoreboard players tag @e[name=editor,type=armor_stand] remove repeat1
scoreboard players add currentBranch branch 1
scoreboard players set currentID ID 0

#increment currentFloor (durring first itteration, this should start 1 lower than min floor so this will zero it out)
scoreboard players add @e[name=editor,type=armor_stand] currentFloor 1
tellraw @a[tag=debug] ["",{"text":"Current Floor: "},{"score":{"name":"@e[name=editor]","objective":"currentFloor"}}]


#update loading screen
tellraw @a[tag=ui7] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n  LOADING... PLEASE BE PATIENT  \n","color":"aqua","bold":true,"underlined":true}]
tellraw @a[tag=ui7] ["",{"text":"Building Floor: ","color":"light_purple"},{"score":{"name":"@e[name=editor,type=armor_stand]","objective":"currentFloor"},"color":"yellow"}]
tellraw @a[tag=ui7] ["",{"text":" ########################### ","color":"aqua","bold":true,"underlined":true,"italic":false}]


#teleport editor to random node on current floor
scoreboard players operation @e[name=node,type=armor_stand] floor -= @e[name=editor,type=armor_stand] currentFloor
scoreboard players tag @e[name=editor,type=armor_stand] add skipFloor
execute @e[name=node,type=armor_stand,score_floor_min=0,score_floor=0,score_directionCount=2,tag=!keepRoom] ~ ~ ~ scoreboard players tag @e[name=editor,type=armor_stand] remove skipFloor
tp @e[name=editor,type=armor_stand,tag=!skipFloor] @r[name=node,type=armor_stand,score_floor_min=0,score_floor=0,score_directionCount=2,tag=!keepRoom]
scoreboard players operation @e[name=node,type=armor_stand] floor += @e[name=editor,type=armor_stand] currentFloor

execute @e[name=editor,type=armor_stand,tag=skipFloor] ~ ~ ~ playsound minecraft:block.anvil.break ambient sugarjoe8

#copy direction counts to temp
execute @e[name=editor,type=armor_stand,tag=!skipFloor] ~ ~ ~ scoreboard objectives add temp dummy
execute @e[name=editor,type=armor_stand,tag=!skipFloor] ~ ~ ~ execute @e[name=node] ~ ~ ~ scoreboard players operation @s temp = @s directionCount

#update the floor score for editor to new location
scoreboard players operation @e[name=editor,type=armor_stand,tag=!skipFloor] floor = @e[name=editor,type=armor_stand] currentFloor


#placing nodes
function dungeon_genorator:rooms/nodes/create/place_nodes unless @e[name=editor,type=armor_stand,tag=skipFloor]
execute @e[name=editor,type=armor_stand,tag=!skipFloor] ~ ~ ~ scoreboard objectives remove bailRooms   #  clean up temp variable for place_nodes itteration
function dungeon_genorator:rooms/nodes/tag_handeling/add_next_tags unless @e[name=editor,type=armor_stand,tag=skipFloor]
execute @e[name=editor,type=armor_stand,tag=!skipFloor] ~ ~ ~ scoreboard players tag @e[tag=multidirectional,name=node,type=armor_stand] add buildMultiRoom
function dungeon_genorator:rooms/nodes/tag_handeling/update_multidirectional_nodes unless @e[name=editor,type=armor_stand,tag=skipFloor]

#test if anything was actually built
execute @e[name=editor,type=armor_stand,tag=!skipFloor] ~ ~ ~ execute @e[name=node] ~ ~ ~ scoreboard players operation @s temp -= @s directionCount
execute @e[name=editor,type=armor_stand,tag=!skipFloor] ~ ~ ~ scoreboard players tag @e[name=node,type=armor_stand,score_temp_min=0] remove buildMultiRoom


#construct
execute @e[name=editor,type=armor_stand,tag=!skipFloor] ~ ~ ~ function dungeon_genorator:rooms/nodes/tag_handeling/add_variation_tags if @r[name=node,type=armor_stand,score_temp=-1]
execute @e[name=editor,type=armor_stand,tag=!skipFloor] ~ ~ ~ function dungeon_genorator:rooms/construction/construct if @r[name=node,type=armor_stand,score_temp=-1]
execute @e[name=editor,type=armor_stand,tag=!skipFloor] ~ ~ ~ function dungeon_genorator:rooms/construction/multidirectional/construct if @r[name=node,type=armor_stand,score_temp=-1]
execute @e[name=editor,type=armor_stand,tag=!skipFloor] ~ ~ ~ scoreboard players tag @e[name=node,type=armor_stand] remove buildMultiRoom if @r[name=node,type=armor_stand,score_temp=-1]
execute @e[name=editor,type=armor_stand,tag=!skipFloor] ~ ~ ~ scoreboard objectives remove temp

#repeat if currentFloor is less than maxFloor
scoreboard players operation @e[name=editor,type=armor_stand] currentFloor -= maxFloor floor
scoreboard players tag @e[name=editor,type=armor_stand,score_currentFloor=-1] add repeatBuildHelper
scoreboard players operation @e[name=editor,type=armor_stand] currentFloor += maxFloor floor

scoreboard players tag @e[name=editor,type=armor_stand,tag=repeatBuildHelper] add repeat1


execute @e[name=editor,type=armor_stand,tag=!repeatBuildHelper] ~ ~ ~ execute @s[tag=place_random_blocks] ~ ~ ~ function dungeon_genorator:tellraw/run/place_random_blocks
execute @e[name=editor,type=armor_stand,tag=!repeatBuildHelper] ~ ~ ~ execute @s[tag=!place_random_blocks] ~ ~ ~ execute @a[tag=ui7] ~ ~ ~ function dungeon_genorator:tellraw/build_functions
#execute @e[name=editor,type=armor_stand,tag=repeatBuildHelper] ~ ~ ~ function dungeon_genorator:rooms/build_branches_helper