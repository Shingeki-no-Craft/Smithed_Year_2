## Debug
#$execute if score $debug config matches 1 run function snc:logic/hitbox/focus {"distance":$(distance),"half_distance":$(half_distance)}
## Destroy
$execute rotated ~ 0 positioned ^ ^ ^$(half_distance) if function snc:shifters/combat/collision on passengers if entity @s[tag=snc.titan] run damage @s $(half_distance)0 player_attack by @s
$execute rotated ~ 0 positioned ^ ^ ^$(half_distance) if function snc:shifters/combat/collision run particle explosion ^ ^ ^ $(half_distance) $(half_distance) $(half_distance) 1 16 force
# Playsound
$execute positioned ~-$(half_distance).5 ~-$(half_distance).5 ~-$(half_distance).5 if entity @n[type=!#snc:pivot, dx=$(distance),dy=$(distance),dz=$(distance),tag=!$(shifter),predicate=!snc:shifters/$(shifter)/score] run playsound $(sound) player @a ~ ~ ~ 3
## Remove Energy
$scoreboard players remove $energy $(shifter)_vars $(energy)
## Apply Damage
$scoreboard players set #damage $(shifter)_vars $(damage)
# Add extra: (Jaw or Hardening)
$scoreboard players add #damage $(shifter)_vars $(extra_damage)
# Is berserk? Then multiply by 2
$execute if score $berserk $(shifter)_vars matches 0 run scoreboard players operation #damage $(shifter)_vars *= #2 snc.constant
$execute if score $berserk $(shifter)_vars matches 0 if predicate snc:chance/40 run playsound snc.shifters.$(shifter).hurt player @a ~ ~ ~ 8
# Save damage amount
$execute store result storage snc:$(shifter) damage.amount int 1 run scoreboard players get #damage $(shifter)_vars

#$tellraw @a ["Calc Damage: ",{"score":{"name":"#damage","objective":"$(shifter)_vars"}}]
# Save other parameters
$data merge storage snc:$(shifter) {damage:{shifter:$(shifter), angle:$(angle), knockback:$(knockback)}}

$execute positioned ~-$(half_distance).5 ~-$(half_distance).5 ~-$(half_distance).5 as @e[dx=$(distance),dy=$(distance),dz=$(distance),type=!#snc:pivot,predicate=!snc:shifters/$(shifter)/score] run function snc:shifters/combat/apply with storage snc:$(shifter) damage