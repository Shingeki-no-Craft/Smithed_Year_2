$execute as 0000007f-0000-007f-0000-007f0000000$(id) on passengers if entity @s[tag=animated_java.$(shifter).root] run function snc:shifters/mobs/$(shifter)/animate/death

$bossbar remove $(shifter)_health
attribute @s scale base set 1
$function snc:shifters/human/inventory/spawn/all {"shifter":"$(shifter)"}