advancement revoke @s only snc:shifters/female/ghost

scoreboard players operation $reset_ghost female_vars *= #-1 constant
scoreboard players add $group_strike female_vars 1
execute if score $group_strike female_vars matches 4 run scoreboard players set $group_strike female_vars 1
# Restart moves
give @s quartz[minecraft:custom_data={atk_shifter:1b,7_titan:1b},item_model="item/blank"]
# Cancel if counter
execute if score state female_vars matches 14..15 run return -1

function snc:shifters/mobs/female/action/ghost/step
#execute on vehicle on passengers if entity @s[tag=aj.female.root,tag=!aj.female.animation.strike_1.playing] if function snc:shifters/mobs/female/animate/strike/1 run return -1