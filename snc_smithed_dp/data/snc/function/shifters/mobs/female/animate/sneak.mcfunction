# Dismount player from everything
ride @s dismount
# Mount vehicle, direct reference
ride @s mount 0000007f-0000-007f-0000-007f00000007
execute if score state female_vars matches 3..5 unless predicate snc:player/keybinds/move on vehicle on passengers \
        if entity @s[tag=animated_java.female.root] if entity @s[tag=!animated_java.female.animation.sneak.playing] run \
            scoreboard players set #sneak female_vars 1

execute if score #sneak female_vars matches 1 on vehicle on passengers if entity @s[tag=animated_java.female.root] run function animated_java:female/animations/pause_all
execute if score #sneak female_vars matches 1 on vehicle on passengers if entity @s[tag=animated_java.female.root] run function animated_java:female/animations/sneak/play
execute if score #sneak female_vars matches 1 run scoreboard players set $moving female_vars -1
execute if score #sneak female_vars matches 1 run scoreboard players set state female_vars 2

scoreboard players reset #sneak female_vars