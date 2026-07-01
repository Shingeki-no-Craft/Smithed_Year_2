# Restart moves
function snc:shifters/function/unique {"pre":"scoreboard players operation $gamemode ","post":"_vars *= #-1 snc.constant"}
item replace entity @s hotbar.7 with air
function snc:shifters/function/unique {"pre":"function snc:shifters/mobs/","post":"/abilities/give"}
advancement revoke @s only snc:shifters/gamemode