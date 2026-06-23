$execute if entity @s[tag=transform] if score $berserk $(shifter)_vars matches 1 run return -1

tag @s add snc.injured
$execute if score $trigger_transform config matches 1 if entity @s[tag=!transform,tag=!snc.handcuffs] run scoreboard players remove $energy $(shifter)_vars 2300
$execute if score $trigger_transform config matches 1 if entity @s[tag=!transform,tag=!snc.handcuffs] if score $energy $(shifter)_vars matches ..-1 run scoreboard players set $energy $(shifter)_vars 0

$execute if score $trigger_transform config matches 1 if entity @s[tag=!transform,tag=!snc.handcuffs] if score $energy $(shifter)_vars matches 720.. run effect give @s absorption 10 5 true
# Prevent explode when trigger_transform
$execute if score $trigger_transform config matches 1 if entity @s[tag=!transform,tag=!snc.handcuffs] if score $energy $(shifter)_vars matches 720.. run scoreboard players set $explosion $(shifter)_vars 0
$execute if score $trigger_transform config matches 1 if entity @s[tag=!transform,tag=!snc.handcuffs] if score $energy $(shifter)_vars matches 720.. run tag @s remove snc.injured
$execute if score $trigger_transform config matches 1 if entity @s[tag=!transform,tag=!snc.handcuffs] if score $energy $(shifter)_vars matches 720.. run scoreboard players set @s atk 266