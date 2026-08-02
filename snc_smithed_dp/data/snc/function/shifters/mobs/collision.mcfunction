effect give @s invisibility infinite 0 true
effect give @s fire_resistance infinite 0 true

## Apply damage then carrier is hurt
$execute at @n[type=skeleton_horse, tag=snc.body] rotated ~ 0 run function snc:shifters/mobs/$(shifter)/hitbox
execute unless entity @n[type=skeleton_horse, tag=snc.body] run kill