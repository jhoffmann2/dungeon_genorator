######################################################################################
# Function:		add_variation_tags_helper
# Created By:	Jordan Hoffmann
# Date:			6/16/17
# sersion:		1.12
# Description:	Recursive part of add_variation_tags
######################################################################################

scoreboard objectives add bail dummy
scoreboard players add @e[name=editor,type=armor_stand] bail 0
scoreboard players operation @e[name=editor,type=armor_stand,score_bail=0] bail = currentID ID
scoreboard players remove @e[name=editor,type=armor_stand] bail 1

	scoreboard players tag @r[type=armor_stand,name=rVariation] add nextVariation
	
	execute @e[name=rVariation,type=armor_stand,tag=s1] ~ ~ ~ execute @s[tag=nextVariation] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[r=1,name=node,type=armor_stand] add s1
	execute @e[name=rVariation,type=armor_stand,tag=s2] ~ ~ ~ execute @s[tag=nextVariation] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[r=1,name=node,type=armor_stand] add s2
	execute @e[name=rVariation,type=armor_stand,tag=s3] ~ ~ ~ execute @s[tag=nextVariation] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[r=1,name=node,type=armor_stand] add s3
	execute @e[name=rVariation,type=armor_stand,tag=s4] ~ ~ ~ execute @s[tag=nextVariation] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[r=1,name=node,type=armor_stand] add s4
	execute @e[name=rVariation,type=armor_stand,tag=s5] ~ ~ ~ execute @s[tag=nextVariation] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[r=1,name=node,type=armor_stand] add s5
	execute @e[name=rVariation,type=armor_stand,tag=s6] ~ ~ ~ execute @s[tag=nextVariation] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[r=1,name=node,type=armor_stand] add s6
	
	scoreboard players tag @e[type=armor_stand,name=rVariation] remove nextVariation
	execute @e[name=editor,type=armor_stand] ~ ~ ~ function dungeon_genorator:rooms/nodes/next
	
function dungeon_genorator:rooms/nodes/tag_handeling/add_variation_tags_helper unless @e[name=editor,type=armor_stand,score_bail=0]
execute @e[name=editor,type=armor_stand,score_bail=0] ~ ~ ~ scoreboard objectives remove bail