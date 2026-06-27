function snc:dynamic/odmtrack_starter/particles/tick

execute if score @s snc.quest.odmtrack.progress matches 1 run title @s actionbar {"text":"Target (0/4)", "color":"yellow"}
execute if score @s snc.quest.odmtrack.progress matches 2 run title @s actionbar {"text":"Target (1/4)", "color":"yellow"}
execute if score @s snc.quest.odmtrack.progress matches 3 run title @s actionbar {"text":"Target (2/4)", "color":"yellow"}
execute if score @s snc.quest.odmtrack.progress matches 4 run title @s actionbar {"text":"Target (3/4)", "color":"yellow"}
execute if score @s snc.quest.odmtrack.progress matches 5 run title @s actionbar [{"text":"Target (4/4)", "color":"yellow"}, {"text":" - ", "color":"gray"}, {"text":"Completed!", "color":"green"}]