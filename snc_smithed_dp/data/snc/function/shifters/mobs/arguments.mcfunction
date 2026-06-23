data merge storage minecraft:cart {\    
    id:1, explosion_size:0, explosion_size_passive:0,explosion_size_colossal:0,\
    shifter:cart, \
    name:"Cart Titan", \
    color:light_purple, \
    bossbar_display:uFFF3, \
    bossbar_color:pink, \
    bossbar_style: notched_6, \
    hp:34, \
    walk_speed:0.34d, \
    run_speed:0.34d, \
    type:skeleton_horse, \
    jaw_damage: 20, hardening_damage: 10,\
    jump:1d, \
    step_height:3.6d, \
    explosion:4, \
    resistance:2, \
    regen_ticks:100, \
    scale_vehicle:1.5, \
    scale_player:2, \
    block_range:7, \
    entity_range:7, \
    energy_decrease: 1,\
    damage_bite: 24, knockback_bite: 0.02, energy_bite: 8, angle_bite: 10, cooldown_bite:4, \
    cooldown_hold:1, \
    energy_jump: 5, cooldown_jump:4, \
    energy_hold: 16, \
    damage_step: 1 \
}

data merge storage minecraft:colossal {\
    id:2, explosion_size:0, explosion_size_passive:0,explosion_size_colossal:0,\
    shifter:colossal, \
    name:"Colossal Titan", \
    color:aqua, \
    bossbar_display:uFFF0, \
    bossbar_color:blue, \
    bossbar_style: notched_12, \
    hp:80, \
    walk_speed:0.12d, \
    run_speed:0.12d, \
    type:skeleton_horse, \
    jaw_damage: 20, hardening_damage: 10,\
    jump:0d, \
    step_height:7d, \
    explosion:10, \
    resistance:2, \
    regen_ticks:160, \
    scale_vehicle:6, \
    scale_player:12, \
    block_range:0, \
    entity_range:0, \
    energy_decrease: 5,\
    damage_wall:220, knockback_wall:0.12, energy_wall:110, angle_wall: 25, cooldown_wall:10, \
    cooldown_steam:15, \
    damage_bite: 40, knockback_bite: 0.0, energy_bite: 40, angle_bite: 5, cooldown_bite:4, \
    damage_step: 15 \
}
## id : identifier of the shifter, never change.
## shifter : name of the shifter, never change.
## color : color of the shifter.
## bossbar_display : texture of the bossbar.
## bossbar_color : color of the bossbar.
## hp : how many hp the shifter has when transformed.
## walk_speed : speed of the titan when walking.
## run_speed : speed of the titan when running.
## jump : jump strength.
## resistance : resistance of the shifter to scale HP.
## regen_ticks : How much time in ticks takes the shifter to regen HP, the less value the stronger.

data merge storage minecraft:attack {\
    id:3, explosion_size:0, explosion_size_passive:0,explosion_size_colossal:0,\
    shifter:attack, \
    name:"Attack Titan", \
    color:dark_red, \
    bossbar_display:uFFF1, \
    bossbar_color:red, \
    bossbar_style: notched_10, \
    type:skeleton_horse, \
    jaw_damage: 20, hardening_damage: 10,\
    hp:40, \
    walk_speed:0.085d, \
    run_speed:0.42d, \
    jump:1.65d, \
    step_height:3.6d, \
    explosion:4, \
    resistance:2, \
    regen_ticks:100, berserk_regen_ticks:60, \
    scale_vehicle:6.3, \
    scale_player:4.6, \
    block_range:10, \
    entity_range:0, \
    energy_decrease: 2,\
    energy_block:20, cooldown_block:6, \
    damage_punch_1:20, knockback_punch_1:0.015, energy_punch_1:25, angle_punch_1: 5, \
    damage_punch_2:22, knockback_punch_2:0.015, energy_punch_2:20, angle_punch_2: 5, \
    damage_punch_3:26, knockback_punch_3:0.015, energy_punch_3:15, angle_punch_3: 90, cooldown_punch:5, \
    damage_kick_1:22, knockback_kick_1:0.015, energy_kick_1:20, angle_kick_1: 5, \
    damage_kick_2:26, knockback_kick_2:0.015, energy_kick_2:15, angle_kick_2: 5, \
    damage_kick_3:28, knockback_kick_3:0.01, energy_kick_3:10, angle_kick_3: 45, cooldown_kick:6, \
    damage_bite: 20, knockback_bite: 0.015, energy_bite: 5, angle_bite: 5, cooldown_bite:4, \
    damage_step: 3 \
}

data merge storage minecraft:beast {\
    id:4, explosion_size:0, explosion_size_passive:0,explosion_size_colossal:0,\
    shifter:beast, \
    name:"Beast Titan", \
    color:green, \
    bossbar_display:uFFF2, \
    bossbar_color:green, \
    bossbar_style: notched_10, \
    hp:58, \
    walk_speed:0.14d, \
    run_speed:0.32d, \
    type:skeleton_horse, \
    jaw_damage: 20, hardening_damage: 10,\
    jump:1.3d, \
    step_height:3.6d, \
    explosion:5, \
    resistance:2, \
    regen_ticks:150, berserk_regen_ticks:80, \
    scale_vehicle:9.2, \
    scale_player:6.4, \
    block_range:11, \
    entity_range:0, \
    energy_decrease: 2,\
    damage_focus: 80, knockback_focus: 0.025, energy_focus: 40, cooldown_focus:25, angle_focus:35, \
    damage_area: 50, knockback_area: 0.015, energy_area: 27, cooldown_area:15, \
    damage_slap: 32, knockback_slap: 0.07, energy_slap: 15, angle_slap: 25, cooldown_slap: 7, \
    damage_bite: 16, knockback_bite: 0.015, energy_bite: 10, angle_bite: 10, cooldown_bite:4, \
    cooldown_drop: 5, \
    damage_step: 1 \
}

data merge storage minecraft:armor {\
    id:5, explosion_size:0, explosion_size_passive:0,explosion_size_colossal:0,\
    shifter:armor, \
    name:"Armored Titan", \
    color:gold, \
    bossbar_display:uFFF4, \
    bossbar_color:yellow, \
    bossbar_style: notched_10, \
    hp:52, \
    walk_speed:0.13d, \
    run_speed:0.315d, \
    jump:1.6d, \
    type:skeleton_horse, \
    jaw_damage: 20, hardening_damage: 10,\
    step_height:3.6d, \
    explosion:4, \
    resistance:2, \
    regen_ticks:150, berserk_regen_ticks:80, \
    scale_vehicle:6.8, \
    scale_player:5.2, \
    block_range:10, \
    entity_range:0, \
    energy_decrease: 2,\
    damage_jabs:20, knockback_jabs:0.02, energy_jabs:20, angle_jabs: 5,\
    damage_rocket:50, knockback_rocket:0.04, energy_rocket:25, angle_rocket: 10, cooldown_rocket:10, \
    damage_fortified: 30, knockback_fortified: 0.04, energy_fortified: 50, angle_fortified: 10, cooldown_fortified:20,\
    damage_onslaught: 35, knockback_onslaught: 0.0, energy_onslaught: 35, angle_onslaught: 0, \
    damage_impale: 50, knockback_impale: 0.0, energy_impale: 35, angle_impale: 0, cooldown_impale:20,\
    damage_bite: 18, knockback_bite: 0.01, energy_bite: 10, angle_bite: 5, cooldown_bite:4, \
    damage_step: 4 \
}

# Also, scale is already good
data merge storage minecraft:jaw {\
    id:6, explosion_size:0, explosion_size_passive:0,explosion_size_colossal:0,\
    shifter:jaw, \
    name:"Jaw Titan", \
    color:yellow, \
    bossbar_display:uFFF5, \
    bossbar_color:yellow, \
    bossbar_style: notched_6, \
    hp:28, \
    walk_speed:0.13d, \
    run_speed:0.62d, \
    type:skeleton_horse, \
    jaw_damage: 20, hardening_damage: 10,\
    jump:0d, \
    step_height:5d, \
    explosion:4, \
    resistance:2, \
    regen_ticks:100, berserk_regen_ticks:60, \
    scale_vehicle:1.3, \
    scale_player:2.1, \
    block_range:7, \
    entity_range:7, \
    energy_decrease: 2,\
    damage_bite: 36, knockback_bite: 0.005, energy_bite: 20, angle_bite: 10, cooldown_bite:7, \
    damage_slash: 10, knockback_slash: 0.01, energy_slash: 10, angle_slash: 10, cooldown_slash:3, \
    damage_charge: 50, knockback_charge: 0.01, energy_charge: 30, angle_charge: 40, cooldown_charge:8, \
    energy_jump: 5, \
    energy_hold: 24, \
    damage_step: 1 \
}

data merge storage minecraft:female {\
    id:7, explosion_size:0, explosion_size_passive:0,explosion_size_colossal:0,\
    shifter:female, \
    name:"Female Titan", \
    color:dark_purple, \
    bossbar_display:uFFF6, \
    bossbar_color:purple, \
    bossbar_style: notched_10, \
    type:skeleton_horse, \
    jaw_damage: 20, hardening_damage: 10,\
    hp:32, \
    walk_speed:0.14d, \
    run_speed:0.54d, \
    jump:1.65d, \
    step_height:3.6d, \
    explosion:4, \
    resistance:2, \
    regen_ticks:140, berserk_regen_ticks:80, \
    scale_vehicle:4, \
    scale_player:8.3, \
    block_range:10, \
    entity_range:0, \
    energy_decrease: 2,\
    damage_bite: 26, knockback_bite: 0.015, energy_bite: 5, angle_bite: 5, cooldown_bite:20, \
    damage_strike_1: 40, knockback_strike_1: 0.015, energy_strike_1: 5, angle_strike_1: 5, cooldown_strike_1:8, \
    energy_ghost: 5, angle_ghost: 5, cooldown_ghost:6, damage_ghost_retribution:20, knockback_ghost_retribution:0.02, damage_ghost_targeted:40, knockback_ghost_targeted:0.01,\
    energy_counter: 5, damage_counter:130, knockback_counter: 0.04, angle_counter: 40, cooldown_counter:8, damage_scout:20, \
    damage_step: 3 \
}