STRINGS.NAMES.BERRYBLUE = "蓝莓果树丛"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BERRYBLUE = "噢，竟然是蓝莓."
STRINGS.NAMES.DUG_BERRYBLUE = "蓝莓果树丛"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.DUG_BERRYBLUE = "让我种下它吧."
STRINGS.NAMES.BERRYBLU2 = "蓝莓果树丛"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BERRYBLU2 = "是蓝色的."
STRINGS.NAMES.DUG_BERRYBLU2 = "蓝莓果树丛"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.DUG_BERRYBLU2 = "我真想吃了它们."
STRINGS.NAMES.BERRYBL = "蓝莓"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BERRYBL = "多吃蓝莓对身体好!"
STRINGS.NAMES.BERRYBL_COOKED = "烤蓝莓"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BERRYBL_COOKED = "多么甜美多汁."

STRINGS.NAMES.PINEAPPLE = "菠萝丛"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.PINEAPPLE = "这是我自己的点心"
STRINGS.NAMES.DUG_PINEAPPLE = "菠萝丛"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.DUG_PINEAPPLE = "快点，让我种下它"
STRINGS.NAMES.PAPPFRUIT = "菠萝"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.PAPPFRUIT = "酸酸甜甜"
STRINGS.NAMES.PAPPFRUIT_COOKED = "烤菠萝"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.PAPPFRUIT_COOKED = "闻起来像是夏天的味道"
STRINGS.NAMES.PAPPDISH = "菠萝杂烩"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.PAPPDISH = "吃完就睡觉吧"
STRINGS.NAMES.TREEAPPLE = "青苹果"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.TREEAPPLE = "不是我最喜欢的点心"
STRINGS.NAMES.TREEAPPLEPIE = "苹果派"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.TREEAPPLEPIE = "真好吃"
STRINGS.NAMES.APPLETREE = "苹果树"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.APPLETREE = "这长的多么高大啊"

STRINGS.NAMES.BERRYGREE = "绿梅丛"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BERRYGREE = "它能吃吗."
STRINGS.NAMES.DUG_BERRYGREE = "绿梅丛"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.DUG_BERRYGREE = "怎么办呢."
STRINGS.NAMES.BERRYGRE2 = "绿梅丛"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BERRYGRE2 = "好吃吗."
STRINGS.NAMES.DUG_BERRYGRE2 = "绿梅丛"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.DUG_BERRYGRE2 = "毒药."
STRINGS.NAMES.BERRYGR = "绿梅"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BERRYGR = "闻起来不是很棒."
STRINGS.NAMES.BERRYGR_COOKED = "烤绿梅"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BERRYGR_COOKED = "也许可以吃了吧."

STRINGS.NAMES.BLUER = "蓝鸟"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BLUER = "我最喜欢蓝色"
STRINGS.NAMES.ROBYE = "绿鸟"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.ROBYE = "森林的颜色"
STRINGS.NAMES.ROBGR = "黄鸟"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.ROBGR = "他看起来生病了"
STRINGS.NAMES.TUCAN = "巨嘴鸟"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.TUCAN = "热带的美好"
STRINGS.NAMES.NTPIE = "彩虹鸟"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.NTPIE = "神秘怪物"
STRINGS.NAMES.SICKV = "脏鸟"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.SICKV = "不要靠近他"

local function ForceTranslate()
  STRINGS.NAMES.TREEAPPLE = "苹果"
  STRINGS.CHARACTERS.GENERIC.DESCRIBE.TREEAPPLE = {
      "一天一苹果，医生远离你",
      "有点光泽，像新的一样好。",
  }
  STRINGS.NAMES.TREEAPPLEPIE = "苹果派"
  STRINGS.CHARACTERS.GENERIC.DESCRIBE.TREEAPPLEPIE = {
      "哦哦哦~，又黏又热！",
      "和祖母通常做的一样。",
      "像是回家的味道！",
  }
  STRINGS.NAMES.PAPPDISH = "菠萝什锦"
  STRINGS.CHARACTERS.GENERIC.DESCRIBE.PAPPDISH = {
      "哦哦哦~，好冰！",
      "炎热的夏天来一个最好。",
      "异国情调的东西让我感到迷糊。",
  }

end

table.insert(ForceTranslateList, ForceTranslate)