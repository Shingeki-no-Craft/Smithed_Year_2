#function snc:battlegrounds/event/reset_female
function summit.battlegrounds:api/end_session {booth_id:"snc"}
#/execute as @a run function summit.battlegrounds:api/assign_kit {booth_id:"snc", kit_id: "snc:default", kit_function:"snc:battlegrounds/kit/main"}
scoreboard players reset $active snc.battlegrounds