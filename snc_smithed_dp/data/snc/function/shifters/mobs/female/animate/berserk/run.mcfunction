function animated_java:female/animations/berserk_run/play

execute on vehicle on passengers if entity @s[tag=transform] run effect give @s speed infinite 3 true
execute on vehicle run effect clear @s slowness
execute on vehicle run attribute @s minecraft:scale base set 2
execute on vehicle run effect give @s speed infinite 3 true