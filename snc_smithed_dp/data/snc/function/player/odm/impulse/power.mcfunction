#$execute if score @s snc.push.dir matches 1 at @s anchored eyes positioned ^.4 ^ ^ positioned $(x) $(y) $(z) summon end_crystal run damage @s 0
#$execute if score @s snc.push.dir matches -1 at @s anchored eyes positioned ^-.4 ^ ^ positioned $(x) $(y) $(z) summon end_crystal run damage @s 0
#$execute if score @s snc.push.dir matches 0 at @s anchored eyes positioned $(x) $(y) $(z) summon end_crystal run damage @s 0
$execute at @s anchored eyes positioned $(x) $(y) $(z) summon end_crystal run damage @s 0

scoreboard players remove @s snc.push 1
$execute if score @s snc.push matches 1.. run function snc:player/odm/impulse/power {"x":"$(x)", "y":"$(y)", "z":"$(z)"}