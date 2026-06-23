## If is using parry
$execute if score #parry $(shifter)_vars matches 1 if function snc:shifters/mobs/$(shifter)/parry run return -1
## If is not using parry
$execute unless score #parry $(shifter)_vars matches 1 run function snc:shifters/combat/hurt {"shifter":$(shifter)}
$execute unless score #parry $(shifter)_vars matches 1 if score $op.hardening $(shifter)_vars matches 1.. run function snc:shifters/mobs/armor/action/hardening/hit {"shifter":$(shifter)}