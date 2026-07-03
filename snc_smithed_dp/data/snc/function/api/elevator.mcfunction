$teleport @s $(coordinates)
execute at @s run playsound entity.enderman.teleport master @s
$title @s actionbar {"text":"$(text)", "color": "$(color)"}