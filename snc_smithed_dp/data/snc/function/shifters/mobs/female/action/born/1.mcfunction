execute positioned ~ ~3 ~ run function snc:titans/volt/spawn
tag @a remove snc.female.swing
playsound minecraft:snc.shifters.lightning master @a -98 77 120 1.7
playsound minecraft:snc.shifters.lightning master @a -98 77 120 1.7
execute on vehicle run attribute @s minecraft:scale base set .1
playsound minecraft:snc.shifters.female.roar player @a -98 77 120 1.7
execute on vehicle run effect give @s levitation 2 2 true
execute on vehicle run effect give @s slowness 2 127 true
execute on vehicle on passengers if entity @s[tag=snc.titan] run effect give @s slowness infinite 4 true