#NoAI:1b,
$data merge entity @s {UUID:[I;127,127,127,1],Team:"nocol",Silent:1b,Invulnerable:1b,CustomNameVisible:0b,PersistenceRequired:1b,Tame:1b,Tags:["snc.body","snc.shifter","snc.shifter.$(shifter)","snc.hook.titan"],CustomName:{"translate":"aot.titan.$(shifter)"},Health:1024f,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:resistance",amplifier:127,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:1024},{id:"minecraft:movement_speed",base:$(walk_speed)},{id:"minecraft:jump_strength",base:0d},{id:"minecraft:safe_fall_distance",base:13d},{id:"minecraft:step_height",base:$(step_height)},{id:"minecraft:scale",base:$(scale_vehicle)},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:air_drag_modifier",base:2}],equipment:{saddle:{id:"minecraft:saddle",components:{"minecraft:item_model":"minecraft:shifters/item/saddle","minecraft:tooltip_display":{"hide_tooltip":true},"minecraft:custom_data":{"atk_shifter":1b, summit: {droppable: {callback: true}}}, equippable:{"slot": "saddle", "asset_id": "snc:blank"}}}}}
# ,body:{}


$function snc:shifters/mobs/$(shifter)/spawn
$scoreboard players set @s $(shifter)_vars 20

$ride @n[tag=animated_java.$(shifter).root] mount @s
$ride @p[scores={$(shifter)_vars=1},tag=snc.titan] mount @s

# execute if score $variant female_vars matches 2 on passengers run function snc:shifters/mobs/hardening

execute on passengers run data modify entity @s item.components."minecraft:custom_data".berserk set value 1b
execute on passengers unless entity @s[type=player] run rotate @s ~ 0