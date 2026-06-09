execute as @s[tag=ai] run scoreboard players reset @s snc.despawn
execute as @s[tag=model] run scoreboard players reset @s walk
execute as @s[tag=model] run scoreboard players reset @s atk
execute as @s[tag=model] run scoreboard players reset @s idle

tp @s ~ ~-256 ~
kill
return 1