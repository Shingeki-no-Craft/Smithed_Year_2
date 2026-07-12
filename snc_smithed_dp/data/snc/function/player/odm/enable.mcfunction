# TODO: the item model doesn't actually determine the gear state, some component(out:1b) determines it

execute if items entity @s weapon.offhand warped_fungus_on_a_stick[item_model="snc:gear/gear",custom_data={out:0b}] run return 1
item modify entity @s weapon.offhand snc:gear/unsheath
item modify entity @s weapon.mainhand snc:gear/unsheath
execute at @s run playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 1
return 1