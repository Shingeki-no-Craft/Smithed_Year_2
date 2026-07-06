#execute unless predicate snc:is_riding run 
function snc:logic/earthquake/move
execute if score @s snc.earthquake matches 0 run scoreboard players reset @s snc.earthquake
scoreboard players remove @s snc.earthquake 1 