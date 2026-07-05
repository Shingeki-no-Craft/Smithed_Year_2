## Variants
scoreboard players operation $prev_variant female_vars = $variant female_vars
execute if score $health female_vars matches 28.. run scoreboard players set $variant female_vars 0
execute if score $health female_vars matches 24..27 run scoreboard players set $variant female_vars 1
execute if score $health female_vars matches 15..23 run scoreboard players set $variant female_vars 2
execute if score $health female_vars matches 9..14 run scoreboard players set $variant female_vars 3
execute if score $health female_vars matches 0..8 run scoreboard players set $variant female_vars 4

# Prevent re-apply variant
execute if score $prev_variant female_vars = $variant female_vars run return -1

# If current health is more than previous
execute unless score $health female_vars < $prev_health female_vars run particle minecraft:dust_color_transition{from_color:[1f, 0.941f, 0.098f],to_color:[1f, 1f, 1f], scale:2f} ~ ~2 ~ 2 3 2 1 128 force
execute unless score $health female_vars < $prev_health female_vars run playsound minecraft:snc.shifters.steam player @a ~ ~4 ~ 4 2

# Apply Variant
execute if score $variant female_vars matches 0 if function animated_java:female/variants/default/apply run return -1
execute if score $variant female_vars matches 1 if function animated_java:female/variants/skin_1/apply run return -1
execute if score $variant female_vars matches 2 if function animated_java:female/variants/skin_2/apply run return -1
execute if score $variant female_vars matches 3 if function animated_java:female/variants/skin_3/apply run return -1
execute if score $variant female_vars matches 4 if function animated_java:female/variants/skin_4/apply run return -1