#> snc:shifters/transfer/lose/shifter
# Kills the entity and gives inherits the shifter, if it can.
#
# @input
#   execute if score @s death matches 1..
#
# @output
#   Entity is killed and the shifter is given to an entity or the world
$execute as @s[tag=transform] run function snc:shifters/human/timer/cd {"shifter":$(shifter), "id":"$(id)"}

## Display who killed
# Fanfo
$execute if score $anonymity config matches 0 if score curse $(shifter)_vars matches ..0 run tellraw @a ["",{"translate":"aot.titan.$(shifter)","color":"$(color)"}," ",{"translate":"aot.curse.desc1","color":"red"}]
# Shifter
$execute if score $anonymity config matches 0 if score curse $(shifter)_vars matches 1.. run tellraw @a ["",{"selector":"@s","color":"white"}," ",{"translate":"aot.curse.desc2","color":"red"}," ",{"translate":"aot.titan.$(shifter)","color":"$(color)"}]

$bossbar remove $(shifter)_health
tag @s remove consume

team leave @s

## If detected 2 shifters then remove one from the vars
$execute if score prevent $(shifter)_vars matches 1 run scoreboard players reset @s $(shifter)_vars
$scoreboard players reset @s $(shifter)_vars

$execute unless score prevent $(shifter)_vars matches 1 run scoreboard players reset * $(shifter)_vars

$advancement revoke @s only snc:shifters/$(shifter)/get

$execute if score prevent $(shifter)_vars matches 1 run tellraw @a ["Warning: ",{"text":"Server count 2 shifters of the same type!","color":"yellow"}]
## Enable shifter spawning unless the shifter was counted 2 times
$execute unless score prevent $(shifter)_vars matches 1 if score $$(shifter).doesnt.exists shifter_vars matches ..0 run scoreboard players add $$(shifter).doesnt.exists shifter_vars 1
# Reset "prevent"
$scoreboard players reset prevent $(shifter)_vars