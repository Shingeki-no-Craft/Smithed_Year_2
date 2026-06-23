## Default
$execute if entity @s[tag=!snc.shifter.jaw] run function snc:shifters/mobs/head {"shifter":"female", "type":"default", "custom_data":{shift_rot:$(rotate)}, "frame":$(frame)}
# Berserk
$execute if entity @s[tag=!snc.shifter.jaw,tag=snc.shifter.attack] if score $berserk female_vars matches 0 run function snc:shifters/mobs/head {"shifter":"female", "type":"default", "custom_data":{shift_rot:$(rotate),berserk:1b}, "frame":$(frame)}

## Jaw
$execute if entity @s[tag=snc.shifter.jaw] run function snc:shifters/mobs/head {"shifter":"female", "type":"default", "custom_data":{shift_rot:$(rotate),jaw_half:1b, jaw_full:1b}, "frame":$(frame)}
# Berserk
$execute if entity @s[tag=snc.shifter.jaw,tag=snc.shifter.attack] if score $berserk female_vars matches 0 run function snc:shifters/mobs/head {"shifter":"female", "type":"default", "custom_data":{shift_rot:$(rotate),jaw_half:1b, jaw_full:1b,berserk:1b}, "frame":$(frame)}