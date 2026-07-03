$data modify storage rc:box size set value $(size)
$data modify storage rc:box sizeY set value $(sizeY)

execute store result storage rc:box 1 float 0.1 run data get storage rc:box size
execute store result storage rc:box 2 float 0.2 run data get storage rc:box size
execute store result storage rc:box 3 float 0.3 run data get storage rc:box size
execute store result storage rc:box 4 float 0.4 run data get storage rc:box size
execute store result storage rc:box 5 float 0.5 run data get storage rc:box size

execute store result storage rc:box 1Y float 0.1 run data get storage rc:box sizeY
execute store result storage rc:box 2Y float 0.2 run data get storage rc:box sizeY
execute store result storage rc:box 3Y float 0.3 run data get storage rc:box sizeY
execute store result storage rc:box 4Y float 0.4 run data get storage rc:box sizeY
execute store result storage rc:box 5Y float 0.5 run data get storage rc:box sizeY

execute rotated 0 0 run function snc:logic/hitbox/line with storage rc:box
execute rotated 180 0 run function snc:logic/hitbox/line with storage rc:box
execute rotated 90 0 run function snc:logic/hitbox/line with storage rc:box
execute rotated -90 0 run function snc:logic/hitbox/line with storage rc:box

function snc:logic/hitbox/up with storage rc:box