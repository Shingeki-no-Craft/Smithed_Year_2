function animated_java:female/animations/swing_end/play
execute on vehicle run effect give @s slowness 2 6 true
execute on vehicle run attribute @s minecraft:scale base set 4
playsound minecraft:aot.beast_throw_big player @a ~ ~ ~ 3 1.5
scoreboard players set state female_vars 20