advancement revoke @s only snc:interface/discord


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
        "More ",\
        {\
          "text": "Shingeki no Craft",\
          "color": "red"\
        },\
        "?\n\n",\
        "Join us on ",\
        {text:"Discord", color:gold},\
        ", support the project on ",\
        {text:"Patreon", color:gold},\
        ", or buy us a coffee on ",\
        {text:"Ko-fi", color:gold},\
        ".\n\n",\
        "Dedicate your heart!"\
      ]\
    }\
  ],\
  "actions": [\
    {\
      "label": [\
        {"text": "Ko-Fi " },\
        {font: "summit_icons:icons", translate: "summit_icons.kofi"}\
    ],\
      "action": {\
        "type": "minecraft:open_url",\
        "url": "https://ko-fi.com/fanfo/tiers"\
      }\
    },\
    {\
      "label": [\
        {"text": "Patreon " },\
        {font: "summit_icons:icons", translate: "summit_icons.patreon"}\
    ],\
      "action": {\
        "type": "minecraft:open_url",\
        "url": "https://www.patreon.com/Fanfo"\
      }\
    },\
    {\
      "label": [\
        {"text": "Discord " },\
        {font: "summit_icons:icons", translate: "summit_icons.discord"}\
    ],\
      "action": {\
        "type": "minecraft:open_url",\
        "url": "https://discord.gg/shingeki-no-craft"\
      }\
    }\
  ]\
}