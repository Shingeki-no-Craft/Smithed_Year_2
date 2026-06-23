particle minecraft:electric_spark ~ ~1 ~ .2 .5 .2 1 10 force
effect give @s resistance 1 127 true

## Save Boots
$execute if score @s atk matches 266 if items entity @s armor.feet * run data modify storage minecraft:$(shifter) Boots set from entity @s equipment.feet
$execute if score @s atk matches 266 if items entity @s armor.feet * run data modify storage minecraft:$(shifter) Boots merge value {Slot:0b}
$execute if score @s atk matches 266 unless items entity @s armor.feet * run data remove storage minecraft:$(shifter) Boots
# Give muscle
execute if score @s atk matches 266 run item replace entity @s armor.feet with minecraft:mushroom_stew[!minecraft:consumable,minecraft:equippable={slot:feet,asset_id:"snc:muscle_gold"},enchantments={"minecraft:binding_curse":1},minecraft:enchantment_glint_override=false,custom_data={snc_blank:true}]

## Save Leggings
$execute if score @s atk matches 265 if items entity @s armor.legs * run data modify storage minecraft:$(shifter) Leggings set from entity @s equipment.legs
$execute if score @s atk matches 265 if items entity @s armor.legs * run data modify storage minecraft:$(shifter) Leggings merge value {Slot:0b}
$execute if score @s atk matches 265 unless items entity @s armor.legs * run data remove storage minecraft:$(shifter) Leggings
# Give muscle
execute if score @s atk matches 265 run item replace entity @s armor.feet with minecraft:mushroom_stew[!minecraft:consumable,minecraft:equippable={slot:feet,asset_id:"snc:muscle"},enchantments={"minecraft:binding_curse":1},minecraft:enchantment_glint_override=false,custom_data={snc_blank:true}]
execute if score @s atk matches 265 run item replace entity @s armor.legs with minecraft:mushroom_stew[!minecraft:consumable,minecraft:equippable={slot:legs,asset_id:"snc:muscle_gold"},enchantments={"minecraft:binding_curse":1},minecraft:enchantment_glint_override=false,custom_data={snc_blank:true}]

## Save Chest
$execute if score @s atk matches 264 if items entity @s armor.chest * run data modify storage minecraft:$(shifter) Chestplate set from entity @s equipment.chest
$execute if score @s atk matches 264 if items entity @s armor.chest * run data modify storage minecraft:$(shifter) Chestplate merge value {Slot:0b}
$execute if score @s atk matches 264 unless items entity @s armor.chest * run data remove storage minecraft:$(shifter) Chestplate
# Give muscle
execute if score @s atk matches 264 run item replace entity @s armor.legs with minecraft:mushroom_stew[!minecraft:consumable,minecraft:equippable={slot:legs,asset_id:"snc:muscle"},enchantments={"minecraft:binding_curse":1},minecraft:enchantment_glint_override=false,custom_data={snc_blank:true}]
execute if score @s atk matches 264 run item replace entity @s armor.chest with minecraft:mushroom_stew[!minecraft:consumable,minecraft:equippable={slot:chest,asset_id:"snc:muscle_gold"},enchantments={"minecraft:binding_curse":1},minecraft:enchantment_glint_override=false,custom_data={snc_blank:true}]
# Give Boots
execute if score @s atk matches 264 run setblock ~ ~2 ~ chest
$execute if score @s atk matches 264 run data modify block ~ ~2 ~ Items append from storage minecraft:$(shifter) Boots
execute if score @s atk matches 264 run item replace entity @s armor.feet from block ~ ~2 ~ container.0
execute if score @s atk matches 264 run setblock ~ ~2 ~ air replace

## Save Helmet
$execute if score @s atk matches 263 if items entity @s armor.head * run data modify storage minecraft:$(shifter) Helmet set from entity @s equipment.head
$execute if score @s atk matches 263 if items entity @s armor.head * run data modify storage minecraft:$(shifter) Helmet merge value {Slot:0b}
$execute if score @s atk matches 263 unless items entity @s armor.head * run data remove storage minecraft:$(shifter) Helmet
# Give muscle
execute if score @s atk matches 263 run item replace entity @s armor.chest with minecraft:mushroom_stew[!minecraft:consumable,minecraft:equippable={slot:chest,asset_id:"snc:muscle"},enchantments={"minecraft:binding_curse":1},minecraft:enchantment_glint_override=false,custom_data={snc_blank:true}]
execute if score @s atk matches 263 run item replace entity @s armor.head with minecraft:mushroom_stew[!minecraft:consumable,minecraft:equippable={slot:head,asset_id:"snc:muscle_gold"},enchantments={"minecraft:binding_curse":1},minecraft:enchantment_glint_override=false,custom_data={snc_blank:true}]
# Give Leggings
execute if score @s atk matches 263 run setblock ~ ~2 ~ chest
$execute if score @s atk matches 263 run data modify block ~ ~2 ~ Items append from storage minecraft:$(shifter) Leggings
execute if score @s atk matches 263 run item replace entity @s armor.legs from block ~ ~2 ~ container.0
execute if score @s atk matches 263 run setblock ~ ~2 ~ air replace

# Give muscle
execute if score @s atk matches 262 run item replace entity @s armor.head with minecraft:mushroom_stew[!minecraft:consumable,minecraft:equippable={slot:head,asset_id:"snc:muscle"},enchantments={"minecraft:binding_curse":1},minecraft:enchantment_glint_override=false,custom_data={snc_blank:true}]
# Give Chestplate
execute if score @s atk matches 262 run setblock ~ ~2 ~ chest
$execute if score @s atk matches 262 run data modify block ~ ~2 ~ Items append from storage minecraft:$(shifter) Chestplate
execute if score @s atk matches 262 run item replace entity @s armor.chest from block ~ ~2 ~ container.0
execute if score @s atk matches 262 run setblock ~ ~2 ~ air replace

# Give Helmet
execute if score @s atk matches 261 run setblock ~ ~2 ~ chest
$execute if score @s atk matches 261 run data modify block ~ ~2 ~ Items append from storage minecraft:$(shifter) Helmet
execute if score @s atk matches 261 run item replace entity @s armor.head from block ~ ~2 ~ container.0
execute if score @s atk matches 261 run setblock ~ ~2 ~ air replace

# Prepare explosion
$execute if score @s atk matches 257 run scoreboard players set @s snc.titan.explosion $(explosion)
# Explosion offset
execute if score @s atk matches 257 run scoreboard players operation @s snc.titan.explosion += $titan_explosion config
execute if score @s atk matches 257 if score @s snc.titan.explosion matches ..-1 run scoreboard players set @s snc.titan.explosion 0
# Save explosion size
$execute if score @s atk matches 257 run execute store result storage minecraft:$(shifter) explosion_size int 1 run scoreboard players get @s snc.titan.explosion
execute if score @s atk matches 257 run scoreboard players add @s snc.titan.explosion 1
$execute if score @s atk matches 257 run execute store result storage minecraft:$(shifter) explosion_size_passive int 1 run scoreboard players get @s snc.titan.explosion
execute if score @s atk matches 257 run scoreboard players add @s snc.titan.explosion 2
$execute if score @s atk matches 257 run execute store result storage minecraft:$(shifter) explosion_size_colossal int 1 run scoreboard players get @s snc.titan.explosion
execute if score @s atk matches 257 run scoreboard players reset @s snc.titan.explosion

execute if score @s atk matches 256 run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0 0 0 1 1 force
$execute if score @s atk matches 256 run function snc:shifters/human/transform/titan {"shifter":$(shifter),"name":"$(name)", "explosion_size":$(explosion_size), "explosion_size_passive":$(explosion_size_passive), "explosion_size_colossal":$(explosion_size_colossal)}
## Spawn
$execute if score @s atk matches 256 run \
    function snc:shifters/mobs/init {\
        "id":"$(id)", \
        "shifter":"$(shifter)", \
        "bossbar_display":"$(bossbar_display)", \
        "bossbar_color":$(bossbar_color), \
        "bossbar_style":$(bossbar_style), \
        "hp":$(hp), \
        "walk_speed":$(walk_speed), \
        "type":$(type), \
        "step_height":$(step_height), \
        "scale_vehicle":$(scale_vehicle), \
        "scale_player":$(scale_player), \
        "entity_range":$(entity_range) \
        }

execute if score @s atk matches 256 run scoreboard players reset @s atk