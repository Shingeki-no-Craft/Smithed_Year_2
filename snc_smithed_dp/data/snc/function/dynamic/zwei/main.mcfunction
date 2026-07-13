execute if score @s snc.animation_jump.zwei matches 0.. run function snc:dynamic/zwei/jump
execute unless score @s snc.animation_jump.zwei matches 0.. run function snc:dynamic/zwei/idle

#Trigger 
execute unless score @s snc.animation_jump.zwei matches 0.. positioned -67 80 101 if entity @p[dx=4, dy=4, dz=4, advancements={snc:odm_get=false}] run function snc:dynamic/zwei/trigger

return 1