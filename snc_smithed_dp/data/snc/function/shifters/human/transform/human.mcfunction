$execute as 0000007f-0000-007f-0000-007f0000000$(id) on passengers if entity @s[tag=aj.$(shifter).root] run function snc:shifters/mobs/$(shifter)/animate/death
$bossbar remove $(shifter)_health
function snc:eldia/gene/apply
$function snc:shifters/human/inventory/spawn/all {"shifter":"$(shifter)"}