## Debug
$execute if score $debug config matches 1 run function snc:logic/hitbox/focus {"distance":$(distance),"half_distance":$(half_distance)}
## Destroy
# Enabled
$execute if score $shifter_griefing config matches 1 if block ^ ^ ^$(half_distance) #snc:tangible run playsound entity.wither.break_block player @a ~ ~ ~ 3 1
$execute if score $shifter_griefing config matches 1 rotated ~ 0 positioned ^ ^ ^$(half_distance) if function snc:shifters/combat/collision run summon tnt ^ ^ ^ {fuse:0,explosion_power:$(distance),block_state:{Name:"minecraft:air"}}
# Disabled
$execute if score $shifter_griefing config matches 0 rotated ~ 0 positioned ^ ^ ^$(half_distance) if function snc:shifters/combat/collision on passengers if entity @s[tag=transform] run damage @s $(half_distance)0 player_attack by @s
$execute if score $shifter_griefing config matches 0 rotated ~ 0 positioned ^ ^ ^$(half_distance) if function snc:shifters/combat/collision run particle explosion ^ ^ ^ $(half_distance) $(half_distance) $(half_distance) 1 16 force
# Playsound
$execute positioned ~-$(half_distance).5 ~-$(half_distance).5 ~-$(half_distance).5 if entity @n[dx=$(distance),dy=$(distance),dz=$(distance),tag=!$(shifter),type=!#snc:pivot,predicate=!snc:shifters/$(shifter)/score] run playsound $(sound) player @a ~ ~ ~ 3
## Remove Energy
$scoreboard players remove $energy $(shifter)_vars $(energy)
## Apply Damage
$scoreboard players set #damage $(shifter)_vars $(damage)
# Add extra: (Jaw or Hardening)
$scoreboard players add #damage $(shifter)_vars $(extra_damage)
# Is berserk? Then multiply by 2
$execute if score $berserk $(shifter)_vars matches 0 run scoreboard players operation #damage $(shifter)_vars *= #2 constant
$execute if score $berserk $(shifter)_vars matches 0 if predicate snc:chance/40 run playsound snc.shifters.$(shifter).hurt player @a ~ ~ ~ 8
# Save damage amount
$execute store result storage $(shifter) damage.amount int 1 run scoreboard players get #damage $(shifter)_vars

#$tellraw @a ["Calc Damage: ",{"score":{"name":"#damage","objective":"$(shifter)_vars"}}]
# Save other parameters
$data merge storage $(shifter) {damage:{shifter:$(shifter), angle:$(angle), knockback:$(knockback)}}

$execute positioned ~-$(half_distance).5 ~-$(half_distance).5 ~-$(half_distance).5 as @e[dx=$(distance),dy=$(distance),dz=$(distance),type=!#snc:pivot,predicate=!snc:shifters/$(shifter)/score] run function snc:shifters/combat/apply with storage $(shifter) damage