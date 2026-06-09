## ODM
execute if entity @s[tag=snc.hook] run function snc:player/odm/hook/arrow
execute if entity @s[tag=snc.wire] run function snc:player/odm/hook/main with entity @s equipment.head.components."minecraft:custom_data"
return 1