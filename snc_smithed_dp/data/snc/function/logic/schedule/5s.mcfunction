scoreboard players set 5s snc.clock 0

execute store result score count female_vars if entity @e[type=#snc:eldian,scores={female_vars=1}]
execute if score count female_vars matches 0 run bossbar remove snc:female_health
execute if score count female_vars matches 2.. run execute as @n[type=#snc:eldian, scores={female_vars=1},tag=!snc.titan,sort=arbitrary] run function snc:shifters/transfer/cheat with storage snc:female