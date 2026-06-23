effect give @s invisibility infinite 0 true
effect give @s fire_resistance infinite 0 true

## Apply damage then carrier is hurt
$execute at 0000007f-0000-007f-0000-007f0000000$(id) rotated ~ 0 run function snc:shifters/mobs/$(shifter)/hitbox
$execute unless entity 0000007f-0000-007f-0000-007f0000000$(id) run kill