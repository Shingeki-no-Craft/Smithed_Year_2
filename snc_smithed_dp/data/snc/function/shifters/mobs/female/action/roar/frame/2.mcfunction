playsound minecraft:snc.shifters.female.roar player @a ~ ~ ~ 24
execute on vehicle on passengers if entity @s[tag=snc.titan] run function snc:shifters/mobs/female/head {"frame":4, "rotate":0}
execute on vehicle run attribute @s minecraft:scale base set 3.1