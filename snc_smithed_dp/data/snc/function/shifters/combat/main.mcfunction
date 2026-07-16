attribute @s minecraft:block_interaction_range base set 0

## Detect Roar
$execute \
    if predicate snc:shifters/has_roar run \
        function snc:shifters/mobs/roar {"shifter":"$(shifter)","id":"$(id)"}
## UNIQUE: ARMOR
#$execute if score @s armor_vars matches 1 unless score $hardening $(shifter)_vars = $op.hardening $(shifter)_vars run function snc:shifters/mobs/armor/action/hardening/main {"shifter":$(shifter)}