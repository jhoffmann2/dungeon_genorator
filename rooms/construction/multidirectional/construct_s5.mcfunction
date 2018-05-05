######################################################################################
# Function:		construct_s5
# Created By:	Jordan Hoffmann
# Date:			6/17/17
# Version:		1.12
# Description:	construct a SMALL room of variation 5 at @s
######################################################################################


#name:"updown",rotation:"NONE",posX:-4,posY:-4,posZ:-4,
#mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9

#	Rotation Friendly
execute @s[tag=xPos] ~ ~ ~ execute @s[tag=xNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"XX_s5",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
execute @s[tag=zPos] ~ ~ ~ execute @s[tag=zNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"XX_s5",rotation:"CLOCKWISE_90",posX:4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}

execute @s[tag=xPos] ~ ~ ~ execute @s[tag=zPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"XZ_s5",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
execute @s[tag=zPos] ~ ~ ~ execute @s[tag=xNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"XZ_s5",rotation:"CLOCKWISE_90",posX:4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
execute @s[tag=xNeg] ~ ~ ~ execute @s[tag=zNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"XZ_s5",rotation:"CLOCKWISE_180",posX:4,posY:-4,posZ:4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
execute @s[tag=zNeg] ~ ~ ~ execute @s[tag=xPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"XZ_s5",rotation:"COUNTERCLOCKWISE_90",posX:-4,posY:-4,posZ:4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}

#	Not Rotation Friendly
execute @s[tag=yPos] ~ ~ ~ execute @s[tag=yNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"YY_s5",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}

execute @s[tag=yPos] ~ ~ ~ execute @s[tag=xPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yPos-xPos_s5",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
execute @s[tag=yPos] ~ ~ ~ execute @s[tag=xNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yPos-xNeg_s5",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
execute @s[tag=yPos] ~ ~ ~ execute @s[tag=zPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yPos-zPos_s5",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
execute @s[tag=yPos] ~ ~ ~ execute @s[tag=zNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yPos-zNeg_s5",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}

execute @s[tag=yNeg] ~ ~ ~ execute @s[tag=xPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yNeg-xPos_s5",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
execute @s[tag=yNeg] ~ ~ ~ execute @s[tag=xNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yNeg-xNeg_s5",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
execute @s[tag=yNeg] ~ ~ ~ execute @s[tag=zPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yNeg-zPos_s5",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
execute @s[tag=yNeg] ~ ~ ~ execute @s[tag=zNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yNeg-zNeg_s5",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}


setblock ~ ~1 ~ redstone_block