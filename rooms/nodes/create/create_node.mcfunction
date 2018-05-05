######################################################################################
# Function:		create node
# Created By:	Jordan Hoffmann
# Date:			6/15/17
# Version:		1.12
# Description:	create node @s; give it a new ID
######################################################################################

scoreboard players add currentID ID 1
summon armor_stand ~ ~ ~ {CustomName:"node",NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
scoreboard players operation @e[name=node,type=armor_stand,r=1] ID = currentID ID
scoreboard players operation @e[name=node,type=armor_stand,r=1] branch = currentBranch branch
scoreboard players operation @e[name=node,type=armor_stand,r=1] floor = @e[name=editor,type=armor_stand] floor
execute @s[name=editor,type=armor_stand,tag=trunk] ~ ~ ~ scoreboard players tag @e[name=node,type=armor_stand,r=1] add trunk

#tag handeling (point to last node)
execute @e[name=rDirection,type=armor_stand,tag=xPos] ~ ~ ~ execute @s[tag=nextDirection] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[name=node,type=armor_stand,r=1] add xNeg
execute @e[name=rDirection,type=armor_stand,tag=xNeg] ~ ~ ~ execute @s[tag=nextDirection] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[name=node,type=armor_stand,r=1] add xPos
execute @e[name=rDirection,type=armor_stand,tag=yPos] ~ ~ ~ execute @s[tag=nextDirection] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[name=node,type=armor_stand,r=1] add yNeg
execute @e[name=rDirection,type=armor_stand,tag=yNeg] ~ ~ ~ execute @s[tag=nextDirection] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[name=node,type=armor_stand,r=1] add yPos
execute @e[name=rDirection,type=armor_stand,tag=zPos] ~ ~ ~ execute @s[tag=nextDirection] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[name=node,type=armor_stand,r=1] add zNeg
execute @e[name=rDirection,type=armor_stand,tag=zNeg] ~ ~ ~ execute @s[tag=nextDirection] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[name=node,type=armor_stand,r=1] add zPos
