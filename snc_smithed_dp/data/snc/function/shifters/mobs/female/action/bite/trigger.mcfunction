advancement revoke @s only snc:shifters/female/bite
# Restart moves
give @s quartz[minecraft:custom_data={atk_shifter:1b,7_titan:1b},minecraft:item_model="item/blank"]
# Cancel if counter
execute if score state female_vars matches 14..15 run return -1
# Bite while Sneak
execute if score state female_vars matches 2 on vehicle positioned as @s rotated ~ 0 positioned ^ ^-.9 ^4 if entity @e[distance=..3,type=#snc:human,tag=!transform,predicate=!snc:shifters/female/score] on passengers if entity @s[tag=animated_java.female.root,tag=!animated_java.female.animation.bite.playing] if function snc:shifters/mobs/female/animate/consume run return -1
# Bite standing
execute unless score state female_vars matches 2 on vehicle on passengers if entity @s[tag=animated_java.female.root,tag=!animated_java.female.animation.bite.playing] if function snc:shifters/mobs/female/animate/bite run return -1
# Regular Bite
execute if score state female_vars matches 2 on passengers if entity @s[tag=animated_java.female.root,tag=!animated_java.female.animation.consume.playing] run function snc:shifters/mobs/sight