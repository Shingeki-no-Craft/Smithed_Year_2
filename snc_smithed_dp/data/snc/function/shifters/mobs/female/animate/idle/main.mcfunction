execute if score $berserk female_vars matches 0 if function snc:shifters/mobs/female/animate/berserk/idle run return -1

execute unless score $fight female_vars matches 1..2 if entity @s[tag=!aj.female.animation.idle.playing] run function snc:shifters/mobs/female/animate/idle/relax
execute if score $fight female_vars matches 1 if entity @s[tag=!aj.female.animation.idle_fight_to_idle.playing] run function animated_java:female/animations/idle_fight_to_idle/play
execute if score $fight female_vars matches 2 if entity @s[tag=!aj.female.animation.idle_fight.playing] run function snc:shifters/mobs/female/animate/idle/fight