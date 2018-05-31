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
scoreboard objectives add directionCount dummy

scoreboard players set zero ZERO 0

kill @e[name=rDirection]
function dungeon_genorator:rooms/msc/create/rdirections

kill @e[name=rVariation]
function dungeon_genorator:rooms/msc/create/rVariations

function dungeon_genorator:block_placer/create/blockmemory