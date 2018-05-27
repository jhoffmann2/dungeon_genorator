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

execute @e[type=armor_stand,name=block1Memory] ~ ~ ~ scoreboard players tag @a add block1Memory_exists
execute @e[type=armor_stand,name=block2Memory] ~ ~ ~ scoreboard players tag @a add block2Memory_exists
execute @e[type=armor_stand,name=block3Memory] ~ ~ ~ scoreboard players tag @a add block3Memory_exists
execute @e[type=armor_stand,name=block4Memory] ~ ~ ~ scoreboard players tag @a add block4Memory_exists
execute @e[type=armor_stand,name=block5Memory] ~ ~ ~ scoreboard players tag @a add block5Memory_exists
execute @e[type=armor_stand,name=block6Memory] ~ ~ ~ scoreboard players tag @a add block6Memory_exists
execute @e[type=armor_stand,name=block7Memory] ~ ~ ~ scoreboard players tag @a add block7Memory_exists
execute @e[type=armor_stand,name=block8Memory] ~ ~ ~ scoreboard players tag @a add block8Memory_exists
execute @e[type=armor_stand,name=block9Memory] ~ ~ ~ scoreboard players tag @a add block9Memory_exists
execute @e[type=armor_stand,name=block10Memory] ~ ~ ~ scoreboard players tag @a add block10Memory_exists

execute @a[tag=!block1Memory_exists] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"block1Memory",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @a[tag=!block2Memory_exists] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"block2Memory",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @a[tag=!block3Memory_exists] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"block3Memory",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @a[tag=!block4Memory_exists] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"block4Memory",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @a[tag=!block5Memory_exists] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"block5Memory",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @a[tag=!block6Memory_exists] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"block6Memory",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @a[tag=!block7Memory_exists] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"block7Memory",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @a[tag=!block8Memory_exists] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"block8Memory",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @a[tag=!block9Memory_exists] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"block9Memory",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @a[tag=!block10Memory_exists] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"block10Memory",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}

scoreboard players tag @a remove block1Memory_exists
scoreboard players tag @a remove block2Memory_exists
scoreboard players tag @a remove block3Memory_exists
scoreboard players tag @a remove block4Memory_exists
scoreboard players tag @a remove block5Memory_exists
scoreboard players tag @a remove block6Memory_exists
scoreboard players tag @a remove block7Memory_exists
scoreboard players tag @a remove block8Memory_exists
scoreboard players tag @a remove block9Memory_exists
scoreboard players tag @a remove block10Memory_exists