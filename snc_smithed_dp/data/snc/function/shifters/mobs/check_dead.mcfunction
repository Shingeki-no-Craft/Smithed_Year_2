execute as @s[tag=!snc.dead] run function snc:shifters/mobs/main with storage snc:female

execute as @s[tag=snc.dead] run function snc:shifters/mobs/female/action/death/corpse

return 1