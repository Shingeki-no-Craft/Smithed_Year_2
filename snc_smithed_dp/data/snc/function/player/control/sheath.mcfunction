# Disabling ODM outside the booth
# particle heart ^ ^1 ^1
execute if predicate snc:odm/has_gas_trigger unless entity @s[tag=summit.battlegrounds.player] positioned -70 60 122 unless predicate snc:in_booth run function snc:player/odm/disable/trigger
execute if predicate snc:odm/has_odm unless entity @s[tag=summit.battlegrounds.player] positioned -70 60 122 unless predicate snc:in_booth run function snc:player/odm/disable/gear