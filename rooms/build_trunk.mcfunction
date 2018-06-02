######################################################################################
# Function:		build_trunk
# Created By:	Jordan Hoffmann
# Date:			6/15/17
# Version:		1.12
# Description:	build the rooms in the main trunk
######################################################################################
scoreboard players tag @e[name=editor,type=armor_stand] remove repeat2
scoreboard objectives add buildTrunkStep dummy
scoreboard players add @e[name=editor,type=armor_stand] buildTrunkStep 0
scoreboard players add @e[name=editor,type=armor_stand] buildTrunkStep 1

#Build Trunk Step 1
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=1,score_buildTrunkStep_min=1] ~ ~ ~ tellraw @a[tag=ui7] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   LOADING... PLEASE BE PATIENT   \n","color":"aqua","bold":true,"underlined":true}]
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=1,score_buildTrunkStep_min=1] ~ ~ ~ tellraw @a[tag=ui7] ["",{"text":"Initiating Variables","color":"light_purple"}]
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=1,score_buildTrunkStep_min=1] ~ ~ ~ tellraw @a[tag=ui7] ["",{"text":" ########################### ","color":"aqua","bold":true,"underlined":true,"italic":false}]

execute @e[name=editor,type=armor_stand,score_buildTrunkStep=1,score_buildTrunkStep_min=1] ~ ~ ~ scoreboard players set currentID ID 0
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=1,score_buildTrunkStep_min=1] ~ ~ ~ scoreboard players reset currentBranch branch
scoreboard players tag @e[name=editor,type=armor_stand,score_buildTrunkStep=1,score_buildTrunkStep_min=1] add trunk
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=1,score_buildTrunkStep_min=1] ~ ~ ~ scoreboard objectives add floor dummy
scoreboard players set @e[name=editor,type=armor_stand,score_buildTrunkStep=1,score_buildTrunkStep_min=1] floor 0

#Build Trunk Step 2
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=2,score_buildTrunkStep_min=2] ~ ~ ~ tellraw @a[tag=ui7] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   LOADING... PLEASE BE PATIENT   \n","color":"aqua","bold":true,"underlined":true}]
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=2,score_buildTrunkStep_min=2] ~ ~ ~ tellraw @a[tag=ui7] ["",{"text":"Deleting Last Build","color":"light_purple"}]
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=2,score_buildTrunkStep_min=2] ~ ~ ~ tellraw @a[tag=ui7] ["",{"text":" ########################### ","color":"aqua","bold":true,"underlined":true,"italic":false}]

execute @e[name=editor,type=armor_stand,score_buildTrunkStep=2,score_buildTrunkStep_min=2] ~ ~ ~ function dungeon_genorator:rooms/construction/clean_up

#Build Trunk Step 3
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=3,score_buildTrunkStep_min=3] ~ ~ ~ tellraw @a[tag=ui7] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   LOADING... PLEASE BE PATIENT   \n","color":"aqua","bold":true,"underlined":true}]
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=3,score_buildTrunkStep_min=3] ~ ~ ~ tellraw @a[tag=ui7] ["",{"text":"Updating Coordinates","color":"light_purple"}]
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=3,score_buildTrunkStep_min=3] ~ ~ ~ tellraw @a[tag=ui7] ["",{"text":" ########################### ","color":"aqua","bold":true,"underlined":true,"italic":false}]

execute @e[name=editor,type=armor_stand,score_buildTrunkStep=3,score_buildTrunkStep_min=3] ~ ~ ~ function dungeon_genorator:rooms/nodes/first
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=3,score_buildTrunkStep_min=3] ~ ~ ~ kill @e[type=armor_stand,name=node]
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=3,score_buildTrunkStep_min=3] ~ ~ ~ function dungeon_genorator:rooms/nodes/create/create_node
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=3,score_buildTrunkStep_min=3] ~ ~ ~ execute @e[name=node,type=armor_stand,score_ID=1,score_ID_min=1] ~ ~ ~ function dungeon_genorator:rooms/msc/scoreboard/update_coordinates

#Build Trunk Step 4
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=4,score_buildTrunkStep_min=4] ~ ~ ~ tellraw @a[tag=ui7] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   LOADING... PLEASE BE PATIENT   \n","color":"aqua","bold":true,"underlined":true}]
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=4,score_buildTrunkStep_min=4] ~ ~ ~ tellraw @a[tag=ui7] ["",{"text":"Placing Nodes","color":"light_purple"}]
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=4,score_buildTrunkStep_min=4] ~ ~ ~ tellraw @a[tag=ui7] ["",{"text":" ########################### ","color":"aqua","bold":true,"underlined":true,"italic":false}]

execute @e[name=editor,type=armor_stand,score_buildTrunkStep=4,score_buildTrunkStep_min=4] ~ ~ ~ function dungeon_genorator:rooms/nodes/create/place_nodes
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=4,score_buildTrunkStep_min=4] ~ ~ ~ scoreboard objectives remove bailRooms

execute @e[name=editor,type=armor_stand,score_buildTrunkStep=4,score_buildTrunkStep_min=4] ~ ~ ~ function dungeon_genorator:rooms/nodes/tag_handeling/add_next_tags
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=4,score_buildTrunkStep_min=4] ~ ~ ~ function dungeon_genorator:rooms/nodes/tag_handeling/add_variation_tags

#Build Trunk Step 5
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=5,score_buildTrunkStep_min=5] ~ ~ ~ tellraw @a[tag=ui7] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   LOADING... PLEASE BE PATIENT   \n","color":"aqua","bold":true,"underlined":true}]
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=5,score_buildTrunkStep_min=5] ~ ~ ~ tellraw @a[tag=ui7] ["",{"text":"Building Rooms","color":"light_purple"}]
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=5,score_buildTrunkStep_min=5] ~ ~ ~ tellraw @a[tag=ui7] ["",{"text":" ########################### ","color":"aqua","bold":true,"underlined":true,"italic":false}]

execute @e[name=editor,type=armor_stand,score_buildTrunkStep=5,score_buildTrunkStep_min=5] ~ ~ ~ function dungeon_genorator:rooms/construction/construct

execute @e[type=armor_stand,name=editor,score_buildTrunkStep=5,score_buildTrunkStep_min=5,tag=place_random_blocks] ~ ~ ~ function dungeon_genorator:tellraw/run/place_random_blocks
execute @e[name=editor,type=armor_stand,score_buildTrunkStep=5,score_buildTrunkStep_min=5,tag=!place_random_block] ~ ~ ~ execute @a[tag=ui7] ~ ~ ~ function dungeon_genorator:tellraw/build_functions

execute @e[name=editor,type=armor_stand,score_buildTrunkStep=5,score_buildTrunkStep_min=5] ~ ~ ~ scoreboard objectives remove buildTrunkStep

scoreboard players tag @e[name=editor,type=armor_stand,score_buildTrunkStep=4] add repeat2