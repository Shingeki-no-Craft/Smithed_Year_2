

$execute positioned ~ ~$(sizeY) ~ rotated 0 0 run function snc:logic/hitbox/line with storage rc:box
$execute positioned ~ ~$(sizeY) ~ rotated 180 0 run function snc:logic/hitbox/line with storage rc:box
$execute positioned ~ ~$(sizeY) ~ rotated 90 0 run function snc:logic/hitbox/line with storage rc:box
$execute positioned ~ ~$(sizeY) ~ rotated -90 0 run function snc:logic/hitbox/line with storage rc:box

$execute positioned ~$(5) ~$(5Y) ~$(5) run function snc:logic/hitbox/line_y with storage rc:box
$execute positioned ~-$(5) ~$(5Y) ~$(5) run function snc:logic/hitbox/line_y with storage rc:box
$execute positioned ~-$(5) ~$(5Y) ~-$(5) run function snc:logic/hitbox/line_y with storage rc:box
$execute positioned ~$(5) ~$(5Y) ~-$(5) run function snc:logic/hitbox/line_y with storage rc:box
