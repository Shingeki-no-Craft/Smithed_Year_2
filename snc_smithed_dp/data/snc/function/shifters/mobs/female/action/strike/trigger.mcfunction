advancement revoke @s only snc:shifters/female/strike
# Restart moves
give @s quartz[minecraft:custom_data={atk_shifter:1b,7_titan:1b},item_model="item/blank"]

# If config is enabled AND is in berserk mode then skip
execute if score $shifter_berserk config matches 1 if score $berserk female_vars matches 0 if function snc:shifters/mobs/female/action/strike/berserk/trigger run return -1

# Cancel if counter
execute if score state female_vars matches 14..15 run return -1

scoreboard players add $combo_strike female_vars 1
execute if score $combo_strike female_vars matches 4 run scoreboard players set $combo_strike female_vars 1

execute if score $combo_strike female_vars matches 1 on vehicle on passengers if entity @s[tag=aj.female.root,tag=!aj.female.animation.strike_1.playing] if function snc:shifters/mobs/female/animate/strike/1 run return -1
execute if score $combo_strike female_vars matches 2 on vehicle on passengers if entity @s[tag=aj.female.root,tag=!aj.female.animation.strike_1.playing] if function snc:shifters/mobs/female/animate/strike/2 run return -1
execute if score $combo_strike female_vars matches 3 on vehicle on passengers if entity @s[tag=aj.female.root,tag=!aj.female.animation.strike_1.playing] if function snc:shifters/mobs/female/animate/strike/3 run return -1