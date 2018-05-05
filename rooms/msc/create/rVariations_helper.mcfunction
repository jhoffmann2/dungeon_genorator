######################################################################################
# Function:		rVariations_helper
# Created By:	Jordan Hoffmann
# Date:			6/17/17
# sersion:		1.12
# Description:	the recursive part of rVariations
######################################################################################

#subtract 1
scoreboard players remove @e[name=editor,type=armor_stand] bails1 1
scoreboard players remove @e[name=editor,type=armor_stand] bails2 1
scoreboard players remove @e[name=editor,type=armor_stand] bails3 1
scoreboard players remove @e[name=editor,type=armor_stand] bails4 1
scoreboard players remove @e[name=editor,type=armor_stand] bails5 1
scoreboard players remove @e[name=editor,type=armor_stand] bails6 1


#MAIN COMMAND
execute @e[name=editor,type=armor_stand,score_bails1_min=0] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"rVariation",Tags:["s1"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @e[name=editor,type=armor_stand,score_bails2_min=0] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"rVariation",Tags:["s2"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @e[name=editor,type=armor_stand,score_bails3_min=0] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"rVariation",Tags:["s3"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @e[name=editor,type=armor_stand,score_bails4_min=0] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"rVariation",Tags:["s4"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @e[name=editor,type=armor_stand,score_bails5_min=0] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"rVariation",Tags:["s5"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @e[name=editor,type=armor_stand,score_bails6_min=0] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"rVariation",Tags:["s6"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}

#recursion
function dungeon_genorator:rooms/msc/create/rVariations_helper unless @e[name=editor,type=armor_stand,score_bails1=0,score_bails2=0,score_bails3=0,score_bails4=0,score_bails5=0,score_bails6=0]