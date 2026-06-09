playsound minecraft:aot.odm.pull player @s ~ ~ ~ 2 1
playsound minecraft:item.shield.break player @s ~ ~ ~ 2 1
particle minecraft:cloud ^1 ^1 ^1 0 0 0 0 1 force
particle minecraft:cloud ^-1 ^1 ^1 0 0 0 0 1 force
effect clear @s levitation
execute unless score @s snc.earthquake matches 5.. run scoreboard players set @s snc.earthquake 4