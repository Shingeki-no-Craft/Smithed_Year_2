title @s times 0 60 20
$title @s title $(title)
$title @s subtitle $(subtitle)

# $playsound $(sound) ?
# $effect $(effect) ?

# Propossals by Fanfo
## Scouts win
# Scout POV
#function snc:battlegrounds/event/title {title:["",{text:"\uF805", font:"snc:gui"},{text:"VICTORY", bold:true, color:gold}, {text:"\uF804\uE103", font:"snc:gui", color:aqua}], subtitle:[{text:"You ", color:yellow}, {text:"live", color:aqua}, " to see another day"]}

# Titan POV
#execute as FanfoYT run function snc:battlegrounds/event/title {title:["",{text:"\uF807", font:"snc:gui"},{text:"DEFEAT", bold:true, color:dark_red}, {text:"\uF806\uE103", font:"snc:gui", color:gray}], subtitle:[{text:"The ", color:red}, {text:"Titan", color:gray}, " has fallen"]}

## Titan Win
# Scout POV
#function snc:battlegrounds/event/title {title:["",{text:"\uF809", font:"snc:gui"},{text:"VICTORY", bold:true, color:gold}, {text:"\uF808\uE104", font:"snc:gui", color:aqua}], subtitle:[{text:"Humanity is ", color:yellow}, {text:"no", color:aqua}, " more"]}

# Titan POV
#function snc:battlegrounds/event/title {title:["",{text:"\uF802", font:"snc:gui"},{text:"DEFEAT", bold:true, color:dark_red}, {text:"\uF810\uE104", font:"snc:gui", color:gray}], subtitle:[{text:"Captain... ", color:red}, {text:"I miss", color:gray}, " my home..."]}