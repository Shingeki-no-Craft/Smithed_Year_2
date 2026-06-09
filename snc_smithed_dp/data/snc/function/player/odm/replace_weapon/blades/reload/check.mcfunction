execute store result score @s snc.bullets run \
    data get entity @s equipment.offhand.components."minecraft:custom_data".snc_odm_blades
    
execute if score @s snc.bullets matches 1.. run tag @s add snc.reload.blade
execute if score @s snc.bullets matches 1.. run scoreboard players set @s snc.recoil 0