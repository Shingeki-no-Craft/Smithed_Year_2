execute store result score @s snc.bullets run \
    data get entity @s equipment.offhand.components."minecraft:custom_data".snc_odm_blades

tag @s remove snc.reload.blade

execute if score @s snc.bullets matches 1.. run item modify entity @s weapon.offhand snc:gear/reload
execute if score @s snc.bullets matches 1.. run playsound minecraft:item.armor.equip_chain player @s ~ ~ ~ 1 .7