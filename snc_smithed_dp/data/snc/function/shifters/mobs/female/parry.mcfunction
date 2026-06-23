## If is using parry
#playsound minecraft:item.shield.block player @a ~ ~ ~ 3 .5
#execute anchored eyes run particle minecraft:totem_of_undying ^ ^-1 ^ .2 .2 .2 .7 100 force
#effect clear @s resistance
execute on vehicle on passengers if entity @s[tag=aj.female.root] run function snc:shifters/mobs/female/animate/counter/kick

return 1