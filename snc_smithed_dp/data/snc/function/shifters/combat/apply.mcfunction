## Damage
$execute if entity @s[tag=!$(shifter)] run damage @s $(amount) player_attack by @p[scores={$(shifter)_vars=1}]

## Knockback
execute if entity @s[tag=snc.titan] run function snc:shifters/function/unique {"pre":"scoreboard players set $air_frame ","post":"_vars 3"}
$execute if entity @s[tag=snc.titan] on vehicle positioned as @s rotated ~ -$(angle) run function snc:logic/motion/generic {"score":"$(shifter)_vars","strength":$(knockback), "unstoppable":"true"}

## Kill Titans
effect give @s[tag=hurtbox] unluck 1 0 true