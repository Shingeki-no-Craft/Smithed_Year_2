execute store result score @s snc.gamemode run data get entity @s playerGameType
tp @s ~ ~1000 ~
gamemode creative

$scoreboard players set @s snc.push $(power)
$function snc:player/odm/impulse/power {"x":"$(x)", "y":"$(y)", "z":"$(z)"}


function snc:logic/return_gamemode
tp @s ~ ~ ~