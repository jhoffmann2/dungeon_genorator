######################################################################################
# Function:		setup
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	set up objects and scores
######################################################################################
gamerule commandBlockOutput false

execute @e[type=armor_stand,name=editor] ~ ~ ~ scoreboard players tag @a add editor_exists
execute @a[tag=!editor_exists] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"editor",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
scoreboard players tag @a remove editor_exists

scoreboard objectives add controls dummy
scoreboard objectives add ZERO dummy
scoreboard objectives add ID dummy
scoreboard objectives add branch dummy

scoreboard players set zero ZERO 0

kill @e[name=rDirection]
function dungeon_genorator:rooms/msc/create/rdirections

kill @e[name=rVariation]
function dungeon_genorator:rooms/msc/create/rVariations

execute @e[type=armor_stand,name=block1] ~ ~ ~ scoreboard players tag @a add block1_exists
execute @e[type=armor_stand,name=block2] ~ ~ ~ scoreboard players tag @a add block2_exists
execute @e[type=armor_stand,name=block3] ~ ~ ~ scoreboard players tag @a add block3_exists
execute @e[type=armor_stand,name=block4] ~ ~ ~ scoreboard players tag @a add block4_exists
execute @e[type=armor_stand,name=block5] ~ ~ ~ scoreboard players tag @a add block5_exists
execute @e[type=armor_stand,name=block6] ~ ~ ~ scoreboard players tag @a add block6_exists
execute @e[type=armor_stand,name=block7] ~ ~ ~ scoreboard players tag @a add block7_exists
execute @e[type=armor_stand,name=block8] ~ ~ ~ scoreboard players tag @a add block8_exists
execute @e[type=armor_stand,name=block9] ~ ~ ~ scoreboard players tag @a add block9_exists
execute @e[type=armor_stand,name=block10] ~ ~ ~ scoreboard players tag @a add block10_exists

execute @a[tag=!block1_exists] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"block1",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @a[tag=!block2_exists] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"block2",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @a[tag=!block3_exists] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"block3",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @a[tag=!block4_exists] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"block4",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @a[tag=!block5_exists] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"block5",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @a[tag=!block6_exists] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"block6",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @a[tag=!block7_exists] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"block7",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @a[tag=!block8_exists] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"block8",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @a[tag=!block9_exists] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"block9",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @a[tag=!block10_exists] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"block10",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}

scoreboard players tag @a remove block1_exists
scoreboard players tag @a remove block2_exists
scoreboard players tag @a remove block3_exists
scoreboard players tag @a remove block4_exists
scoreboard players tag @a remove block5_exists
scoreboard players tag @a remove block6_exists
scoreboard players tag @a remove block7_exists
scoreboard players tag @a remove block8_exists
scoreboard players tag @a remove block9_exists
scoreboard players tag @a remove block10_exists