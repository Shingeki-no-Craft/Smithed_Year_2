execute positioned ~ ~3 ~ run function snc:titans/volt/spawn
tag @a remove snc.female.swing
playsound minecraft:snc.shifters.lightning master @a ~ ~ ~ 24
playsound minecraft:snc.shifters.lightning master @a ~ ~ ~ 24
execute on vehicle run attribute @s minecraft:scale base set .1
playsound minecraft:snc.shifters.female.roar player @a ~ ~ ~ 24
execute on vehicle run effect give @s levitation 2 2 true
execute on vehicle run effect give @s slowness 2 127 true
execute on vehicle on passengers if entity @s[tag=transform] run effect give @s slowness infinite 4 true