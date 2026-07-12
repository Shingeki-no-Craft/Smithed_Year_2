advancement revoke @s only snc:interface/youtube

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
        "Enjoying ",\
        {\
          "text": "Shingeki no Craft",\
          "color": "red"\
        },\
        "?\n\n",\
        "See it in action on ",\
        {text:"YouTube", color:gold},\
        " and vibe to the OST on ",\
        {text:"Spotify", color:gold},\
        ".\n\n",\
        {text:" Subscribe", color:gold},\
        "! A world beyond awaits."\
      ]\
    }\
  ],\
  "actions": [\
    {\
      "label": [\
        {"text": "Youtube " },\
        {font: "summit_icons:icons", translate: "summit_icons.youtube"}\
    ],\
      "action": {\
        "type": "minecraft:open_url",\
        "url": "https://www.youtube.com/@FanfoYT"\
      }\
    },\
    {\
      "label": [\
        {"text": "Spotify " },\
        {font: "summit_icons:icons", translate: "summit_icons.smithed"}\
    ],\
      "action": {\
        "type": "minecraft:open_url",\
        "url": "https://open.spotify.com/intl-es/artist/1Vzc1wLS2rxHcSGQkOD4Ep"\
      }\
    }\
  ]\
}