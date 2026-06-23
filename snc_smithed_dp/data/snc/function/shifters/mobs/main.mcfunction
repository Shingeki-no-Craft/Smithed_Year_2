$execute if entity @s[tag=aj.$(shifter).locator.consume] if score state $(shifter)_vars matches 9 run function snc:shifters/mobs/drop

$execute if entity @s[tag=aj.$(shifter).locator.consume] if score $hold $(shifter)_vars matches 1 unless data entity @s Passengers run ride @n[type=#snc:human,tag=snc.handcuffs,distance=..5] dismount
$execute if entity @s[tag=aj.$(shifter).locator.consume] if score $hold $(shifter)_vars matches 1 unless data entity @s Passengers run ride @n[type=#snc:human,tag=!transform,distance=..5] mount @s
$execute if entity @s[tag=aj.$(shifter).locator.consume] unless score $hold $(shifter)_vars matches 1 on passengers run ride @s dismount

# Deals with the physics mechanics
$execute as @s[tag=body] run function snc:shifters/mobs/vehicle with storage minecraft:$(shifter)
$execute as @s[tag=collision] run function snc:shifters/mobs/collision {"shifter":"$(shifter)", "id":"$(id)"}

# If it transforms
$execute if entity @s[tag=aj.$(shifter).locator.consume] on passengers run ride @s[tag=transform] dismount

## Model
$execute on passengers if entity @s[tag=aj.$(shifter).root] run function snc:shifters/mobs/$(shifter)/model