######################################################################################
# Function:		block_2
# Created By:	Jordan Hoffmann
# Date:			5/22/18
# Version:		1.12
# Description:	launcher for the block update ui as block2
################################

scoreboard players tag @s add editBlock2

execute @S ~ ~ ~ function block_placer:tags/inventorytest/clear_hotbar_slot_tags
scoreboard players tag @e[name=block2Memory] add copySlotTags
scoreboard players tag @s add pasteSlotTags
function dungeon_genorator:block_placer_helper/copy_slot_tags/copy_hotbar_tags

function dungeon_genorator:tellraw/random_blocks/block_update_ui