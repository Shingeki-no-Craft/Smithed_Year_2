$particle minecraft:$(particle) ~ ~-.5 ~ .25 0 .25 0 1 force @s
execute positioned ~ ~-.5 ~ unless entity @s[distance=...5] run return -1
playsound block.copper_door.close master @a
$tag @s add snc.elevator.$(id)

scoreboard players set @s snc.elevator 170