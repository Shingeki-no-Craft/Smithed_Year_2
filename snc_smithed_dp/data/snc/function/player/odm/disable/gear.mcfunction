execute if items entity @s weapon.offhand warped_fungus_on_a_stick[item_model="snc:gear/gear",custom_data~{out:0b}] run return 1
item modify entity @s weapon.offhand snc:gear/sheath
execute at @s run playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 2
return 1