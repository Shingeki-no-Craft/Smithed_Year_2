#> snc:shifters/human/regeneration
# Manages regeneration for the $(shifter) titan (Human form)
#
# @input
#   $(shifter) Titan
#
# @output
#   Regeneration every time is called

## Always reset absorption
effect clear @s absorption
# If regeneration is off, don't regenerate

$execute if score $regeneration $(shifter)_vars matches 0 run scoreboard players remove titan.health.bar $(shifter)_vars 4
$execute if score titan.health.bar $(shifter)_vars matches 16..20 run effect give @s absorption 20 4 true
$execute if score titan.health.bar $(shifter)_vars matches 12..15 run effect give @s absorption 20 3 true
$execute if score titan.health.bar $(shifter)_vars matches 8..11 run effect give @s absorption 20 2 true
$execute if score titan.health.bar $(shifter)_vars matches 4..7 run effect give @s absorption 20 1 true
$execute if score titan.health.bar $(shifter)_vars matches ..3 run effect give @s absorption 20 0 true

# Skip if regeneration is off
$execute if score $regeneration $(shifter)_vars matches 0 run return -1
effect give @s regeneration 3 0 true
# Only show particles if regeneration is enabled
$execute unless score titan.health.bar $(shifter)_vars matches 20 run particle minecraft:campfire_signal_smoke ~ ~1 ~ .1 1 .1 .005 5 force
$execute unless score titan.health.bar $(shifter)_vars matches 20 run playsound minecraft:aot.steam player @a ~ ~ ~ 1 1.3
# Titan Marks
$execute if score $titan_marks $(shifter)_vars matches 0 run function snc:shifters/human/inventory/remove_marks
$execute if score $titan_marks $(shifter)_vars matches 0 run return 1
$scoreboard players operation $titan_marks_perc $(shifter)_vars = $titan_marks $(shifter)_vars
$scoreboard players operation $titan_marks_perc $(shifter)_vars *= #100 snc.constant
$scoreboard players operation $titan_marks_perc $(shifter)_vars /= $titan_marks_time config
# 100%
$execute unless score $titan_marks_time config matches 0 if score $titan_marks_perc $(shifter)_vars matches 76..100 run item replace entity @s armor.head with mushroom_stew[minecraft:item_model="shifters/marks",custom_data={snc_blank:true, $(shifter)_marks:1b},equippable={'slot': 'head'},enchantments={"minecraft:binding_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={"hide_tooltip":true}]
# 75%
$execute unless score $titan_marks_time config matches 0 if score $titan_marks_perc $(shifter)_vars matches 51..75 run item replace entity @s armor.head with mushroom_stew[minecraft:item_model="shifters/marks",custom_data={snc_blank:true, $(shifter)_marks:1b, marks_75:1b},equippable={'slot': 'head'},enchantments={"minecraft:binding_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={"hide_tooltip":true}]
# 50%
$execute unless score $titan_marks_time config matches 0 if score $titan_marks_perc $(shifter)_vars matches 26..50 run item replace entity @s armor.head with mushroom_stew[minecraft:item_model="shifters/marks",custom_data={snc_blank:true, $(shifter)_marks:1b, marks_50:1b},equippable={'slot': 'head'},enchantments={"minecraft:binding_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={"hide_tooltip":true}]
# 25%
$execute unless score $titan_marks_time config matches 0 if score $titan_marks_perc $(shifter)_vars matches 1..25 run item replace entity @s armor.head with mushroom_stew[minecraft:item_model="shifters/marks",custom_data={snc_blank:true, $(shifter)_marks:1b, marks_25:1b},equippable={'slot': 'head'},enchantments={"minecraft:binding_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={"hide_tooltip":true}]

$scoreboard players remove $titan_marks $(shifter)_vars 4
#$tellraw @a {"score":{"name":"$titan_marks_perc","objective":"$(shifter)_vars"}}