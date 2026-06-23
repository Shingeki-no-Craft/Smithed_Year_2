execute as @s[tag=!dead] run function snc:shifters/mobs/type
execute as @s[tag=snc.nuke, type=fireball] run kill
execute as @s[tag=snc.nuke] run function snc:shifters/mobs/colossal/action/explosion/main with entity @s item.components."minecraft:custom_data"
#Kill helmet
execute as @s[tag=dead] run function snc:shifters/mobs/dead

return 1