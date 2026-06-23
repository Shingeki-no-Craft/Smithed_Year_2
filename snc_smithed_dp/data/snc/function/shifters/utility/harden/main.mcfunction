advancement revoke @s only snc:shifters/armor/harden

execute unless items entity @s weapon.offhand #minecraft:trimmable_armor if function snc:shifters/utility/harden/error run return -1
execute if items entity @s weapon.offhand #minecraft:trimmable_armor unless items entity @s weapon.offhand *[trim={material:"minecraft:hardening",pattern:"minecraft:armored"}] run function snc:shifters/utility/harden/transform