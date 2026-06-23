# Restart moves
# give @s quartz[minecraft:custom_data={atk_shifter:1b,2_titan:1b},item_model="item/blank"]
function snc:shifters/function/unique {"pre":"scoreboard players operation $gamemode ","post":"_vars *= #-1 constant"}
item replace entity @s hotbar.7 with air
function snc:shifters/function/unique {"pre":"function snc:shifters/mobs/","post":"/abilities/give"}
advancement revoke @s only snc:shifters/gamemode