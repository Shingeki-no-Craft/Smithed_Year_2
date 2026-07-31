execute if score $female snc.battlegrounds matches 1 run scoreboard players set $win snc.battlegrounds 1

execute as @a[tag=summit.battlegrounds.player] at @s run function snc:battlegrounds/event/end
scoreboard players reset $female snc.battlegrounds
scoreboard players reset $win snc.battlegrounds