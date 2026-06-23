execute on passengers run rotate @s ~ ~
execute store result score @s snc.mot_x0 run data get entity @s Pos[0] 1000
execute store result score @s snc.mot_y0 run data get entity @s Pos[1] 1000
execute store result score @s snc.mot_z0 run data get entity @s Pos[2] 1000

tp @s ^ ^ ^.1

execute store result score @s snc.mot_x1 run data get entity @s Pos[0] 1000
execute store result score @s snc.mot_y1 run data get entity @s Pos[1] 1000
execute store result score @s snc.mot_z1 run data get entity @s Pos[2] 1000

execute store result entity @s Motion[0] double 0.04 run scoreboard players operation @s snc.mot_x1 -= @s snc.mot_x0
execute store result entity @s Motion[1] double 0.04 run scoreboard players operation @s snc.mot_y1 -= @s snc.mot_y0
execute store result entity @s Motion[2] double 0.04 run scoreboard players operation @s snc.mot_z1 -= @s snc.mot_z0

scoreboard players reset @s snc.mot_x0
scoreboard players reset @s snc.mot_y0
scoreboard players reset @s snc.mot_z0
scoreboard players reset @s snc.mot_x1
scoreboard players reset @s snc.mot_y1
scoreboard players reset @s snc.mot_z1