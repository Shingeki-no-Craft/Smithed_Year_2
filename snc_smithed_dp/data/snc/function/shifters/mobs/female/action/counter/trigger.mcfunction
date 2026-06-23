advancement revoke @s only snc:shifters/female/counter
# Restart moves
give @s quartz[minecraft:custom_data={atk_shifter:1b,7_titan:1b},minecraft:item_model="item/blank"]
effect give @s resistance 1 3 true
playsound minecraft:block.bell.resonate master @a ~ ~ ~ 4 2

execute unless score state female_vars matches 18..19 on vehicle on passengers if entity @s[tag=aj.female.root,tag=!aj.female.animation.counter_ready.playing] run function snc:shifters/mobs/female/animate/counter/ready
execute if score state female_vars matches 19 on vehicle on passengers if entity @s[tag=aj.female.root,tag=!aj.female.animation.counter_ready.playing] run function snc:shifters/mobs/female/animate/swing/end