######################################################################################
# Function:		Place All Blocks
# Created By:	Jordan Hoffmann
# Date:			5/22/18
# Version:		1.12
# Description:	Recursively Place all of the random blocks at their corresponding armor stands
######################################################################################

#### Will be added to UI, just for now... #######################

scoreboard players set block1PlacementRate controls 70
scoreboard players set block2PlacementRate controls 70
scoreboard players set block3PlacementRate controls 70
scoreboard players set block4PlacementRate controls 70
scoreboard players set block5PlacementRate controls 70
scoreboard players set block6PlacementRate controls 70
scoreboard players set block7PlacementRate controls 70
scoreboard players set block8PlacementRate controls 70
scoreboard players set block9PlacementRate controls 70
scoreboard players set block10PlacementRate controls 70

#############################################################

function dungeon_genorator:block_placer_helper/create/rPlaceBlocks
scoreboard players tag @r[type=armor_stand,name=rPlaceBlock,tag=block1] add selected
scoreboard players tag @r[type=armor_stand,name=rPlaceBlock,tag=block2] add selected
scoreboard players tag @r[type=armor_stand,name=rPlaceBlock,tag=block3] add selected
scoreboard players tag @r[type=armor_stand,name=rPlaceBlock,tag=block4] add selected
scoreboard players tag @r[type=armor_stand,name=rPlaceBlock,tag=block5] add selected
scoreboard players tag @r[type=armor_stand,name=rPlaceBlock,tag=block6] add selected
scoreboard players tag @r[type=armor_stand,name=rPlaceBlock,tag=block7] add selected
scoreboard players tag @r[type=armor_stand,name=rPlaceBlock,tag=block8] add selected
scoreboard players tag @r[type=armor_stand,name=rPlaceBlock,tag=block9] add selected
scoreboard players tag @r[type=armor_stand,name=rPlaceBlock,tag=block10] add selected

execute @e[type=armor_stand,name=rPlaceBlock,tag=block1] ~ ~ ~ execute @s[tag=true] ~ ~ ~ execute @s[tag=selected] ~ ~ ~ execute @r[type=armor_stand,name=block1,tag=random_block] ~ ~ ~ function dungeon_genorator:block_placer_helper/place_block
execute @e[type=armor_stand,name=rPlaceBlock,tag=block2] ~ ~ ~ execute @s[tag=true] ~ ~ ~ execute @s[tag=selected] ~ ~ ~ execute @r[type=armor_stand,name=block2,tag=random_block] ~ ~ ~ function dungeon_genorator:block_placer_helper/place_block
execute @e[type=armor_stand,name=rPlaceBlock,tag=block3] ~ ~ ~ execute @s[tag=true] ~ ~ ~ execute @s[tag=selected] ~ ~ ~ execute @r[type=armor_stand,name=block3,tag=random_block] ~ ~ ~ function dungeon_genorator:block_placer_helper/place_block
execute @e[type=armor_stand,name=rPlaceBlock,tag=block4] ~ ~ ~ execute @s[tag=true] ~ ~ ~ execute @s[tag=selected] ~ ~ ~ execute @r[type=armor_stand,name=block4,tag=random_block] ~ ~ ~ function dungeon_genorator:block_placer_helper/place_block
execute @e[type=armor_stand,name=rPlaceBlock,tag=block5] ~ ~ ~ execute @s[tag=true] ~ ~ ~ execute @s[tag=selected] ~ ~ ~ execute @r[type=armor_stand,name=block5,tag=random_block] ~ ~ ~ function dungeon_genorator:block_placer_helper/place_block
execute @e[type=armor_stand,name=rPlaceBlock,tag=block6] ~ ~ ~ execute @s[tag=true] ~ ~ ~ execute @s[tag=selected] ~ ~ ~ execute @r[type=armor_stand,name=block6,tag=random_block] ~ ~ ~ function dungeon_genorator:block_placer_helper/place_block
execute @e[type=armor_stand,name=rPlaceBlock,tag=block7] ~ ~ ~ execute @s[tag=true] ~ ~ ~ execute @s[tag=selected] ~ ~ ~ execute @r[type=armor_stand,name=block7,tag=random_block] ~ ~ ~ function dungeon_genorator:block_placer_helper/place_block
execute @e[type=armor_stand,name=rPlaceBlock,tag=block8] ~ ~ ~ execute @s[tag=true] ~ ~ ~ execute @s[tag=selected] ~ ~ ~ execute @r[type=armor_stand,name=block8,tag=random_block] ~ ~ ~ function dungeon_genorator:block_placer_helper/place_block
execute @e[type=armor_stand,name=rPlaceBlock,tag=block9] ~ ~ ~ execute @s[tag=true] ~ ~ ~ execute @s[tag=selected] ~ ~ ~ execute @r[type=armor_stand,name=block9,tag=random_block] ~ ~ ~ function dungeon_genorator:block_placer_helper/place_block
execute @e[type=armor_stand,name=rPlaceBlock,tag=block10] ~ ~ ~ execute @s[tag=true] ~ ~ ~ execute @s[tag=selected] ~ ~ ~ execute @r[type=armor_stand,name=block10,tag=random_block] ~ ~ ~ function dungeon_genorator:block_placer_helper/place_block

execute @e[type=armor_stand,name=rPlaceBlock,tag=block1] ~ ~ ~ execute @s[tag=false] ~ ~ ~ execute @s[tag=selected] ~ ~ ~ kill @r[type=armor_stand,name=block1,tag=random_block]
execute @e[type=armor_stand,name=rPlaceBlock,tag=block2] ~ ~ ~ execute @s[tag=false] ~ ~ ~ execute @s[tag=selected] ~ ~ ~ kill @r[type=armor_stand,name=block2,tag=random_block]
execute @e[type=armor_stand,name=rPlaceBlock,tag=block3] ~ ~ ~ execute @s[tag=false] ~ ~ ~ execute @s[tag=selected] ~ ~ ~ kill @r[type=armor_stand,name=block3,tag=random_block]
execute @e[type=armor_stand,name=rPlaceBlock,tag=block4] ~ ~ ~ execute @s[tag=false] ~ ~ ~ execute @s[tag=selected] ~ ~ ~ kill @r[type=armor_stand,name=block4,tag=random_block]
execute @e[type=armor_stand,name=rPlaceBlock,tag=block5] ~ ~ ~ execute @s[tag=false] ~ ~ ~ execute @s[tag=selected] ~ ~ ~ kill @r[type=armor_stand,name=block5,tag=random_block]
execute @e[type=armor_stand,name=rPlaceBlock,tag=block6] ~ ~ ~ execute @s[tag=false] ~ ~ ~ execute @s[tag=selected] ~ ~ ~ kill @r[type=armor_stand,name=block6,tag=random_block]
execute @e[type=armor_stand,name=rPlaceBlock,tag=block7] ~ ~ ~ execute @s[tag=false] ~ ~ ~ execute @s[tag=selected] ~ ~ ~ kill @r[type=armor_stand,name=block7,tag=random_block]
execute @e[type=armor_stand,name=rPlaceBlock,tag=block8] ~ ~ ~ execute @s[tag=false] ~ ~ ~ execute @s[tag=selected] ~ ~ ~ kill @r[type=armor_stand,name=block8,tag=random_block]
execute @e[type=armor_stand,name=rPlaceBlock,tag=block9] ~ ~ ~ execute @s[tag=false] ~ ~ ~ execute @s[tag=selected] ~ ~ ~ kill @r[type=armor_stand,name=block9,tag=random_block]
execute @e[type=armor_stand,name=rPlaceBlock,tag=block10] ~ ~ ~ execute @s[tag=false] ~ ~ ~ execute @s[tag=selected] ~ ~ ~ kill @r[type=armor_stand,name=block10,tag=random_block]

kill @e[name=rPlaceBlock]

function dungeon_genorator:block_placer_helper/place_all_blocks if @e[tag=random_block]
