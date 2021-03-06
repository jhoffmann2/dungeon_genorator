###################################################################################### 
# Function:     build_branches 
# Created By:   Jordan Hoffmann 
# Date:         6/15/17 
# Version:      1.12 
# Description:  build the rooms in the branches 
###################################################################################### 

scoreboard players tag @e[name=editor,type=armor_stand] remove trunk 

#set maxFloor to maximum floor in build thus far 
scoreboard players reset maxFloor floor 
scoreboard players operation maxFloor floor > @e[name=node,type=armor_stand] floor 

#set editors currentFloor score to one less than the minimum floor 
scoreboard objectives add currentFloor dummy 
scoreboard players reset @e[name=editor,type=armor_stand] currentFloor 
execute @e[name=node] ~ ~ ~ scoreboard players operation @e[name=editor,type=armor_stand] currentFloor < @s floor 
tellraw @a[tag=debug] ["",{"text":"Min Floor: "},{"score":{"name":"@e[name=editor]","objective":"currentFloor"},"insertion":"tellraw @s %s"}] 
scoreboard players remove @e[name=editor,type=armor_stand] currentFloor 1 

tellraw @a[tag=debug] ["",{"text":"Max Floor: "},{"score":{"name":"maxFloor","objective":"floor"},"insertion":"tellraw @s %s"}] 

function dungeon_genorator:rooms/build_branches_helper

#execute @e[type=armor_stand,name=editor,tag=place_random_blocks] ~ ~ ~ function dungeon_genorator:tellraw/run/place_random_blocks