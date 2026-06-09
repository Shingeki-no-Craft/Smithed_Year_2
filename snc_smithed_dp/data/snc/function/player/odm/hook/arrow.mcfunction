execute on origin unless entity @s[tag=snc.wire.shifter] rotated as @s run tp ~ ~ ~
execute on origin unless entity @s[tag=snc.wire.shifter] run tag @s add snc.wire.air
execute on origin if entity @s[tag=snc.wire.retract] as @n[tag=snc.hook] if function snc:logic/kill_mob run return -1
execute on origin if entity @s[tag=snc.wire.shifter] as @n[tag=snc.hook] if function snc:logic/kill_mob run return -1
execute unless data entity @s {life:0s} run kill