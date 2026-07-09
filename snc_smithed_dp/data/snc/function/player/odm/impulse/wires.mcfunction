playsound minecraft:snc.odm.impulse player @a ~ ~ ~ 2 1.0

execute if score @s snc.odm_push matches 0..8 run function snc:player/odm/impulse/push {"power":2, "x":"^", "y":"^", "z":"^-1.5"}
execute if score @s snc.odm_push matches 9..15 run function snc:player/odm/impulse/push {"power":3, "x":"^", "y":"^", "z":"^-1.7"}
execute if score @s snc.odm_push matches 16.. run function snc:player/odm/impulse/push {"power":4, "x":"^", "y":"^", "z":"^-2.2"}
#execute if score @s snc.odm_push matches 16..31 run function snc:player/odm/impulse/push {"power":4, "x":"^", "y":"^", "z":"^-2.2"}
#execute if score @s snc.odm_push matches 32.. run function snc:player/odm/impulse/push {"power":5, "x":"^", "y":"^", "z":"^-2.5"}

return 1