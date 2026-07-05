playsound minecraft:snc.shifters.jaw.smash player @a ^ ^ ^ 3 1
$execute if score $air_frame $(shifter)_vars matches 0..19 on vehicle anchored feet as @e[distance=..16,tag=!$(shifter)] run function snc:shifters/combat/slam {"distance":6, "damage":8}
$execute if score $air_frame $(shifter)_vars matches 0..19 on vehicle anchored feet run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^ ^ 2 .5 2 1 100 force
$execute if score $air_frame $(shifter)_vars matches 0..19 on vehicle anchored feet run particle white_smoke ^ ^ ^ 1 .5 1 .1 50 force
$execute if score $air_frame $(shifter)_vars matches 0..19 on vehicle anchored feet run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^ ^ 1 .5 1 1 50 force

$execute if score $air_frame $(shifter)_vars matches 20..39 on vehicle anchored feet as @e[distance=..16,tag=!$(shifter)] run function snc:shifters/combat/slam {"distance":10, "damage":16}
$execute if score $air_frame $(shifter)_vars matches 20..39 on vehicle anchored feet run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^ ^ 2.5 .5 2.5 1 125 force
$execute if score $air_frame $(shifter)_vars matches 20..39 on vehicle anchored feet run particle white_smoke ^ ^ ^ 2 .5 2 .1 75 force
$execute if score $air_frame $(shifter)_vars matches 20..39 on vehicle anchored feet run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^ ^ 1.5 .5 1.5 1 75 force

$execute if score $air_frame $(shifter)_vars matches 31.. run playsound minecraft:snc.shifters.smash player @a ^ ^ ^ 4 1
$execute if score $air_frame $(shifter)_vars matches 31.. on vehicle anchored feet as @e[distance=..16,tag=!$(shifter)] run function snc:shifters/combat/slam {"distance":12, "damage":32}
$execute if score $air_frame $(shifter)_vars matches 31.. on vehicle anchored feet run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^ ^ 3 .5 3 1 150 force
$execute if score $air_frame $(shifter)_vars matches 31.. on vehicle anchored feet run particle white_smoke ^ ^ ^ 3 .5 3 .1 100 force
$execute if score $air_frame $(shifter)_vars matches 31.. on vehicle anchored feet run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^ ^ 2 .5 2 1 100 force

$scoreboard players set $air_frame $(shifter)_vars 0
#$tellraw @a {"score":{"name":"$air_frame","objective":"$(shifter)_vars"}}