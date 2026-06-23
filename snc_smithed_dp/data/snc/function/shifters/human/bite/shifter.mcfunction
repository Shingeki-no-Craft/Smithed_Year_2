$execute if score $master $(shifter)_vars matches 0..3 if score @s random matches 1..10 run function snc:shifters/human/bite/transform
$execute if score $master $(shifter)_vars matches 0..3 unless score @s random matches 1..10 run function snc:shifters/human/bite/damage

$execute if score $master $(shifter)_vars matches 4..9 if score @s random matches 1..30 run function snc:shifters/human/bite/transform
$execute if score $master $(shifter)_vars matches 4..9 unless score @s random matches 1..30 run function snc:shifters/human/bite/damage

$execute if score $master $(shifter)_vars matches 10..18 if score @s random matches 1..50 run function snc:shifters/human/bite/transform
$execute if score $master $(shifter)_vars matches 10..18 unless score @s random matches 1..50 run function snc:shifters/human/bite/damage

$execute if score $master $(shifter)_vars matches 19..30 if score @s random matches 1..80 run function snc:shifters/human/bite/transform
$execute if score $master $(shifter)_vars matches 19..30 unless score @s random matches 1..80 run function snc:shifters/human/bite/damage

$execute if score $master $(shifter)_vars matches 31.. run function snc:shifters/human/bite/transform