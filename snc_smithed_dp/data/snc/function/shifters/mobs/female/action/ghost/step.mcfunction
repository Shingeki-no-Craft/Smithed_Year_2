scoreboard players set $fight female_vars 2
tag @s remove snc.kb.forward
tag @s remove snc.kb.left
tag @s remove snc.kb.right
tag @s remove snc.kb.backward
execute if predicate snc:player/keybinds/forward run tag @s add snc.kb.forward
execute if predicate snc:player/keybinds/left run tag @s add snc.kb.left
execute if predicate snc:player/keybinds/right run tag @s add snc.kb.right
execute if predicate snc:player/keybinds/backward run tag @s add snc.kb.backward

execute on vehicle run rotate @s ~ ~
execute on vehicle run effect give @s slowness 2 127 true
# Run as vehicle
# AWD
execute if entity @s[tag=snc.kb.left,tag=snc.kb.forward,tag=snc.kb.right] on vehicle at @s rotated ~ 0 if function snc:shifters/mobs/female/action/ghost/kick/run/move run return -1
# ASD
execute if entity @s[tag=snc.kb.left,tag=snc.kb.backward,tag=snc.kb.right] on vehicle at @s rotated ~180 0 if function snc:shifters/mobs/female/action/ghost/back run return -1
## Add more?

# AW
execute if entity @s[tag=snc.kb.left,tag=snc.kb.forward] on vehicle at @s rotated ~-45 0 if function snc:shifters/mobs/female/action/ghost/kick/walk/move run return -1
# AS
execute if entity @s[tag=snc.kb.left,tag=snc.kb.backward] on vehicle at @s rotated ~-135 0 if function snc:shifters/mobs/female/action/ghost/back run return -1
# WD
execute if entity @s[tag=snc.kb.right,tag=snc.kb.forward] on vehicle at @s rotated ~45 0 if function snc:shifters/mobs/female/action/ghost/kick/walk/move run return -1
# SD
execute if entity @s[tag=snc.kb.right,tag=snc.kb.backward] on vehicle at @s rotated ~135 0 if function snc:shifters/mobs/female/action/ghost/back run return -1

# A
execute if entity @s[tag=snc.kb.left] on vehicle at @s rotated ~-90 0 if function snc:shifters/mobs/female/action/ghost/left run return -1
# D
execute if entity @s[tag=snc.kb.right] on vehicle at @s rotated ~90 0 if function snc:shifters/mobs/female/action/ghost/right run return -1
# S
execute if entity @s[tag=snc.kb.backward] on vehicle at @s rotated ~180 0 if function snc:shifters/mobs/female/action/ghost/back run return -1
# Fallback up
execute on vehicle at @s rotated ~ 0 run function snc:shifters/mobs/female/action/ghost/kick/run/move