advancement revoke @s only snc:interface/modrinth

dialog show @s {\
  "type": "minecraft:multi_action",\
  "title": [\
    "",\
    "",\
  ],\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": [\
        "Interested in ",\
        {\
          "text": "Shingeki no Craft",\
          "color": "red"\
        },\
        "?\n\n",\
        "Drop Attack on Titan straight into your world. ",\
        {text:"Datapack", color:gold},\
        ",",\
        {text:" Mod ", color:gold},\
        "and even",\
        {text:" Modpack", color:gold},\
        "! up to 1.21.11, 21.2 incoming!"\
      ]\
    }\
  ],\
  "actions": [\
    {\
      "label": [\
        {"text": "Datapack/Mod " },\
        {font: "summit_icons:icons", translate: "summit_icons.modrinth"}\
    ],\
      "action": {\
        "type": "minecraft:open_url",\
        "url": "https://modrinth.com/datapack/shingeki-no-craft"\
      }\
    },\
    {\
      "label": [\
        {"text": "Modpack " },\
        {font: "summit_icons:icons", translate: "summit_icons.modrinth"}\
    ],\
      "action": {\
        "type": "minecraft:open_url",\
        "url": "https://modrinth.com/modpack/shingeki-no-craft-modpack"\
      }\
    }\
  ]\
}