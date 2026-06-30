## Effects
execute if block ~ ~1 ~ water run attribute @s minecraft:gravity base set -0.1
execute unless block ~ ~1 ~ water run attribute @s minecraft:gravity base set 0.08

$execute if score state $(shifter)_vars matches 2 run effect give @s slowness 1 6 true
# Health System
$execute if score $bossbar config matches 1 if score snc.ticks clock matches 6 run bossbar set minecraft:$(shifter)_health players @a[distance=..128]
execute on passengers if entity @s[tag=transform] at @s on vehicle run rotate @s ~ ~

## Move!
$execute if score state $(shifter)_vars matches 2..5 run \
    function snc:shifters/mobs/move {\
        "shifter":"$(shifter)", "walk_speed":$(walk_speed), "run_speed":$(run_speed) \
    }

## Stepping on
#$execute if score $air $(shifter)_vars matches 0 run say floor
# Prevent insta detection
$scoreboard players set $air $(shifter)_vars 0
$execute unless predicate snc:stepping_on run scoreboard players set $air $(shifter)_vars 1

$execute store result score #snc.mot_y $(shifter)_vars run data get entity @s Motion[1] 1000
$execute if score $air $(shifter)_vars matches 0 if score $air_frame $(shifter)_vars matches 1.. run scoreboard players remove $air_frame $(shifter)_vars 2
$execute if score #snc.mot_y $(shifter)_vars matches ..-1 if score $air_frame $(shifter)_vars matches ..59 run scoreboard players add $air_frame $(shifter)_vars 1

$execute unless items entity @s saddle saddle if score $air_frame $(shifter)_vars matches ..0 run function snc:shifters/mobs/saddle
#$execute if score $air $(shifter)_vars matches 1 run tellraw @a {"score":{"name":"$air_frame","objective":"$(shifter)_vars"}}
#$tellraw @a {"score":{"name":"$air","objective":"$(shifter)_vars"}}

## Prevent shifter leaved the world
$execute on passengers if entity @s[tag=transform] on vehicle run scoreboard players set @s $(shifter)_vars 20
$scoreboard players remove @s $(shifter)_vars 1

$execute if score @s $(shifter)_vars matches ..0 on passengers if entity @s[tag=animated_java.$(shifter).root] run function snc:shifters/mobs/$(shifter)/animate/death