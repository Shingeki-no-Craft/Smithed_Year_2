$execute as @n[type=skeleton_horse, tag=snc.body] on passengers if entity @s[tag=animated_java.$(shifter).root] run function snc:shifters/mobs/$(shifter)/animate/death

bossbar remove snc:female_health
attribute @s scale base set 1
$function snc:shifters/human/inventory/spawn/all {"shifter":"$(shifter)"}