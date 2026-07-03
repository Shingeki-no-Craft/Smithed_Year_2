execute if items entity @s contents *[custom_data~{atk_shifter:1b, summit: {droppable: {callback: true}}}] if data entity @s Item.components."minecraft:custom_data".7_titan as @p[scores={female_vars=1},tag=snc.titan] run function snc:shifters/mobs/female/abilities/give

kill