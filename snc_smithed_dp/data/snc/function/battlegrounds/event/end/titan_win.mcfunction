function snc:battlegrounds/event/title {title:["",{text:"\uF809", font:"snc:gui"},{text:"VICTORY", bold:true, color:gold}, {text:"\uF808\uE104", font:"snc:gui", color:aqua}], subtitle:[{text:"Humanity is ", color:yellow}, {text:"no", color:aqua}, " more"]}
function snc:shifters/function/unique {"pre":"function snc:shifters/human/timer/cd with storage minecraft:","post":""}
effect clear @s
tp @s -68 72 110
function snc:battlegrounds/event/reset_female
tag @s remove snc.battlegrounds.temp_female