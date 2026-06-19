execute as @e at @s run function snc:ent/main

execute as 3ffc9084-50a9-4616-bf2e-0c267db28467 if score @s snc.animation_jump.zwei matches 1.. run function snc:dynamic/zwei/jump
execute as 3ffc9084-50a9-4616-bf2e-0c267db28467 unless score @s snc.animation_jump.zwei matches 1.. run function snc:dynamic/zwei/idle