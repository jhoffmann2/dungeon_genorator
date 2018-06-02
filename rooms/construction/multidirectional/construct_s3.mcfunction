######################################################################################
# Function:		construct_s3
# Created By:	Jordan Hoffmann
# Date:			6/17/17
# Version:		1.12
# Description:	construct a SMALL room of variation 1 at @s
######################################################################################


#name:"updown",rotation:"NONE",posX:-4,posY:-4,posZ:-4,
#mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9

##1 DOOR
    #	Rotation Friendly
    execute @s[tag=xNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"X_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=zNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"X_s3",rotation:"CLOCKWISE_90",posX:4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=xPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"X_s3",rotation:"CLOCKWISE_180",posX:4,posY:-4,posZ:4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=zPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"X_s3",rotation:"COUNTERCLOCKWISE_90",posX:-4,posY:-4,posZ:4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}

    #	Not Rotation Friendly
    execute @s[tag=yPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yPos_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=yNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yNeg_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    
##2 DOORS
    #	Rotation Friendly
    execute @s[tag=xPos] ~ ~ ~ execute @s[tag=xNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"XX_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=zPos] ~ ~ ~ execute @s[tag=zNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"XX_s3",rotation:"CLOCKWISE_90",posX:4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}

    execute @s[tag=xPos] ~ ~ ~ execute @s[tag=zPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"XZ_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=zPos] ~ ~ ~ execute @s[tag=xNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"XZ_s3",rotation:"CLOCKWISE_90",posX:4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=xNeg] ~ ~ ~ execute @s[tag=zNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"XZ_s3",rotation:"CLOCKWISE_180",posX:4,posY:-4,posZ:4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=zNeg] ~ ~ ~ execute @s[tag=xPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"XZ_s3",rotation:"COUNTERCLOCKWISE_90",posX:-4,posY:-4,posZ:4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}

    #	Not Rotation Friendly
    execute @s[tag=yPos] ~ ~ ~ execute @s[tag=yNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"YY_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}

    execute @s[tag=yPos] ~ ~ ~ execute @s[tag=xPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yPos-xPos_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=yPos] ~ ~ ~ execute @s[tag=xNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yPos-xNeg_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=yPos] ~ ~ ~ execute @s[tag=zPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yPos-zPos_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=yPos] ~ ~ ~ execute @s[tag=zNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yPos-zNeg_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}

    execute @s[tag=yNeg] ~ ~ ~ execute @s[tag=xPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yNeg-xPos_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=yNeg] ~ ~ ~ execute @s[tag=xNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yNeg-xNeg_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=yNeg] ~ ~ ~ execute @s[tag=zPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yNeg-zPos_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=yNeg] ~ ~ ~ execute @s[tag=zNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yNeg-zNeg_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}

##3 DOORS
    #not rotation friendly
    execute @s[tag=yPos] ~ ~ ~ execute @s[tag=xPos] ~ ~ ~ execute @s[tag=xNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yPos-xx_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=yPos] ~ ~ ~ execute @s[tag=xPos] ~ ~ ~ execute @s[tag=zPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yPos-xPos-zPos_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=yPos] ~ ~ ~ execute @s[tag=xPos] ~ ~ ~ execute @s[tag=zNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yPos-xPos-zNeg_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=yPos] ~ ~ ~ execute @s[tag=xNeg] ~ ~ ~ execute @s[tag=zPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yPos-xNeg-zPos_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=yPos] ~ ~ ~ execute @s[tag=xNeg] ~ ~ ~ execute @s[tag=zNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yPos-xNeg-zNeg_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=yPos] ~ ~ ~ execute @s[tag=zPos] ~ ~ ~ execute @s[tag=zNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yPos-zz_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=yPos] ~ ~ ~ execute @s[tag=yNeg] ~ ~ ~ execute @s[tag=xPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yy-xPos_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=yPos] ~ ~ ~ execute @s[tag=yNeg] ~ ~ ~ execute @s[tag=xNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yy-xNeg_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=yPos] ~ ~ ~ execute @s[tag=yNeg] ~ ~ ~ execute @s[tag=zPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yy-zPos_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=yPos] ~ ~ ~ execute @s[tag=yNeg] ~ ~ ~ execute @s[tag=zNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yy-zNeg_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}

    execute @s[tag=yNeg] ~ ~ ~ execute @s[tag=xPos] ~ ~ ~ execute @s[tag=xNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yNeg-xx_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=yNeg] ~ ~ ~ execute @s[tag=xPos] ~ ~ ~ execute @s[tag=zPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yNeg-xPos-zPos_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=yNeg] ~ ~ ~ execute @s[tag=xPos] ~ ~ ~ execute @s[tag=zNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yNeg-xPos-zNeg_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=yNeg] ~ ~ ~ execute @s[tag=xNeg] ~ ~ ~ execute @s[tag=zPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yNeg-xNeg-zPos_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=yNeg] ~ ~ ~ execute @s[tag=xNeg] ~ ~ ~ execute @s[tag=zNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yNeg-xNeg-zNeg_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=yNeg] ~ ~ ~ execute @s[tag=zPos] ~ ~ ~ execute @s[tag=zNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"yNeg-zz_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}

    #rotation friendly
    execute @s[tag=xPos] ~ ~ ~ execute @s[tag=xNeg] ~ ~ ~ execute @s[tag=zPos] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"xzx_s3",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=xPos] ~ ~ ~ execute @s[tag=xNeg] ~ ~ ~ execute @s[tag=zNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"xzx_s3",rotation:"CLOCKWISE_180",posX:4,posY:-4,posZ:4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=xPos] ~ ~ ~ execute @s[tag=zPos] ~ ~ ~ execute @s[tag=zNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"xzx_s3",rotation:"COUNTERCLOCKWISE_90",posX:-4,posY:-4,posZ:4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
    execute @s[tag=xNeg] ~ ~ ~ execute @s[tag=zPos] ~ ~ ~ execute @s[tag=zNeg] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"xzx_s3",rotation:"CLOCKWISE_90",posX:4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}


setblock ~ ~1 ~ redstone_block