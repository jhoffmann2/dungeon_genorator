######################################################################################
# Function:		construct
# Created By:	Jordan Hoffmann
# Date:			6/17/17
# Version:		1.12
# Description:	after the web is built, construct the physical rooms for that spacific branch/trunk
######################################################################################
execute @e[name=node,type=armor_stand,tag=buildMultiRoom] ~ ~ ~ function dungeon_genorator:block_placer_helper/delete_block_stands

execute @e[name=node,type=armor_stand,tag=s1] ~ ~ ~ execute @s[tag=buildMultiRoom] ~ ~ ~ function dungeon_genorator:rooms/construction/multidirectional/construct_s1
execute @e[name=node,type=armor_stand,tag=s2] ~ ~ ~ execute @s[tag=buildMultiRoom] ~ ~ ~ function dungeon_genorator:rooms/construction/multidirectional/construct_s2
execute @e[name=node,type=armor_stand,tag=s3] ~ ~ ~ execute @s[tag=buildMultiRoom] ~ ~ ~ function dungeon_genorator:rooms/construction/multidirectional/construct_s3
execute @e[name=node,type=armor_stand,tag=s4] ~ ~ ~ execute @s[tag=buildMultiRoom] ~ ~ ~ function dungeon_genorator:rooms/construction/multidirectional/construct_s4
execute @e[name=node,type=armor_stand,tag=s5] ~ ~ ~ execute @s[tag=buildMultiRoom] ~ ~ ~ function dungeon_genorator:rooms/construction/multidirectional/construct_s5
execute @e[name=node,type=armor_stand,tag=s6] ~ ~ ~ execute @s[tag=buildMultiRoom] ~ ~ ~ function dungeon_genorator:rooms/construction/multidirectional/construct_s6
