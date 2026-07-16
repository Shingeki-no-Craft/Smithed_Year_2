particle end_rod ~ ~ ~ .1 1 .1 .1 2 force
particle flame ~ ~ ~ .1 1 .1 .1 7 force
particle wax_on ~ ~ ~ .1 1 .1 .1 5 force
particle minecraft:electric_spark ~ ~3 ~ .1 1 .1 .1 3 force
#tellraw @a ["snc.volt_range: ",{"score":{"name":"@s","objective":"snc.volt_range"}}," - snc.volt_spread: ",{"score":{"name":"@s","objective":"snc.volt_spread"}}]
scoreboard players remove @s snc.volt_range 1
execute if score @s snc.volt_range matches 1 if score @s snc.volt_spread matches 1.. positioned ^ ^ ^3 run function snc:titans/volt/change
execute if score @s snc.volt_range matches 1.. positioned ^ ^ ^3 run function snc:titans/volt/raycast