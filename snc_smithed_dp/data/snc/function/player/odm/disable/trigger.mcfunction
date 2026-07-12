execute if items entity @s weapon.mainhand carrot_on_a_stick[item_model="snc:gear/trigger",custom_data~{out:0b}] run return 1
item modify entity @s weapon.mainhand snc:gas_trigger/sheath
execute at @s run playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 2
return 1