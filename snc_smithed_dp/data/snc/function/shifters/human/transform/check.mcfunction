execute unless score @s atk matches 256..300 unless predicate snc:player/is_sneaking run damage @s 5 generic

tellraw @s[tag=snc.injured] [{translate:"snc.injured.1",color:gray}," ",{translate:"snc.injured.2",color:red}]

execute if entity @s[tag=!snc.injured,tag=!transform] unless score @s atk matches 256..289 unless score @s atk matches 294..300 run function snc:shifters/function/unique {"pre":"execute if score $energy ","post":"_vars matches 720.. run scoreboard players set @s atk 300"}