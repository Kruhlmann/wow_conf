---@type l10n
local l10n = QuestieLoader:ImportModule("l10n")

local dungeonLocales = {
    ["Dire Maul"] = {
        ["ptBR"] = "Gládio Cruel",
        ["ruRU"] = "Забытый Город",
        ["deDE"] = "Düsterbruch",
        ["koKR"] = "혈투의 전장",
        ["esMX"] = "La Masacre",
        ["enUS"] = true,
        ["frFR"] = "Hache-tripes",
        ["esES"] = "La Masacre",
        ["zhTW"] = "厄運之槌",
        ["zhCN"] = "厄运之槌",
    },
    ["Auchenai Crypts"] = {
        ["ptBR"] = "Catacumbas Auchenai",
        ["ruRU"] = "Аукенайские гробницы",
        ["deDE"] = "Auchenaikrypta",
        ["koKR"] = "아키나이 납골당",
        ["esMX"] = "Criptas Auchenai",
        ["enUS"] = true,
        ["frFR"] = "Cryptes Auchenaï",
        ["esES"] = "Criptas Auchenai",
        ["zhTW"] = "奧奇奈地穴",
        ["zhCN"] = "奥金尼地穴",
    },
    ["Blackrock Spire"] = {
        ["ptBR"] = "Pico da Rocha Negra",
        ["ruRU"] = "Вершина Черной Горы",
        ["deDE"] = "Blackrock Spitze",
        ["koKR"] = "검은바위 첨탑",
        ["esMX"] = "Cumbre de Roca Negra",
        ["enUS"] = true,
        ["frFR"] = "Pic Blackrock",
        ["esES"] = "Cumbre de Roca Negra",
        ["zhTW"] = "黑石塔",
        ["zhCN"] = "黑石塔",
    },
    ["Old Hillsbrad Foothills"] = {
        ["ptBR"] = "Antigo Contraforte de Eira dos Montes",
        ["ruRU"] = "Старые предгорья Хилсбрада",
        ["deDE"] = "Vorgebirge des Alten Hügellands",
        ["koKR"] = "옛 힐스브래드 구릉지",
        ["esMX"] = "Antiguas Laderas de Trabalomas",
        ["enUS"] = true,
        ["frFR"] = "Contreforts de Hautebrande d'antan",
        ["esES"] = "Antiguas Laderas de Trabalomas",
        ["zhTW"] = "希爾斯布萊德丘陵舊址",
        ["zhCN"] = "旧希尔斯布莱德丘陵",
    },
    ["Scarlet Monastery"] = {
        ["ptBR"] = "Monastério Escarlate",
        ["ruRU"] = "Монастырь Алого Ордена",
        ["deDE"] = "Das Scharlachrote Kloster",
        ["koKR"] = "붉은십자군 수도원",
        ["esMX"] = "Monasterio Escarlata",
        ["enUS"] = true,
        ["frFR"] = "Monastère écarlate",
        ["esES"] = "Monasterio Escarlata",
        ["zhTW"] = "血色修道院",
        ["zhCN"] = "血色修道院",
    },
    ["The Underbog"] = {
        ["ptBR"] = "Brejo Oculto",
        ["ruRU"] = "Нижетопь",
        ["deDE"] = "Der Tiefensumpf",
        ["koKR"] = "지하수렁",
        ["esMX"] = "La Sotiénaga",
        ["enUS"] = true,
        ["frFR"] = "La Basse-tourbière",
        ["esES"] = "La Sotiénaga",
        ["zhTW"] = "深幽泥沼",
        ["zhCN"] = "幽暗沼泽",
    },
    ["The Black Morass"] = {
        ["ptBR"] = "Lamaçal Negro",
        ["ruRU"] = "Черные топи",
        ["deDE"] = "Der schwarze Morast",
        ["koKR"] = "검은늪",
        ["esMX"] = "La Ciénaga Negra",
        ["enUS"] = true,
        ["frFR"] = "Le Noir Marécage",
        ["esES"] = "La Ciénaga Negra",
        ["zhTW"] = "黑色沼澤",
        ["zhCN"] = "黑色沼泽",
    },
    ["Maraudon"] = {
        ["ptBR"] = "Maraudon",
        ["ruRU"] = "Марадон",
        ["deDE"] = "Maraudon",
        ["koKR"] = "마라우돈",
        ["esMX"] = "Maraudon",
        ["enUS"] = true,
        ["frFR"] = "Maraudon",
        ["esES"] = "Maraudon",
        ["zhTW"] = "瑪拉頓",
        ["zhCN"] = "玛拉顿",
    },
    ["Hellfire Ramparts"] = {
        ["ptBR"] = "Muralha Fogo do Inferno",
        ["ruRU"] = "Бастионы Адского Пламени",
        ["deDE"] = "Höllenfeuerbollwerk",
        ["koKR"] = "지옥불 성루",
        ["esMX"] = "Murallas del Fuego Infernal",
        ["enUS"] = true,
        ["frFR"] = "Remparts des Flammes infernales",
        ["esES"] = "Murallas del Fuego Infernal",
        ["zhTW"] = "地獄火壁壘",
        ["zhCN"] = "地狱火城墙",
    },
    ["Stratholme"] = {
        ["ptBR"] = "Stratholme",
        ["ruRU"] = "Стратхольм",
        ["deDE"] = "Stratholme",
        ["koKR"] = "스트라솔룸",
        ["esMX"] = "Stratholme",
        ["enUS"] = true,
        ["frFR"] = "Stratholme",
        ["esES"] = "Stratholme",
        ["zhTW"] = "斯坦索姆",
        ["zhCN"] = "斯坦索姆",
    },
    ["Mana-Tombs"] = {
        ["ptBR"] = "Tumbas de Mana",
        ["ruRU"] = "Гробницы маны",
        ["deDE"] = "Managruft",
        ["koKR"] = "마나 무덤",
        ["esMX"] = "Tumbas de Maná",
        ["enUS"] = true,
        ["frFR"] = "Tombes-mana",
        ["esES"] = "Tumbas de Maná",
        ["zhTW"] = "法力墓地",
        ["zhCN"] = "法力陵墓",
    },
    ["Wailing Caverns"] = {
        ["ptBR"] = "Caverna Ululante",
        ["ruRU"] = "Пещеры Стенаний",
        ["deDE"] = "Die Höhlen des Wehklagens",
        ["koKR"] = "통곡의 동굴",
        ["esMX"] = "Cuevas de los Lamentos",
        ["enUS"] = true,
        ["frFR"] = "Cavernes des lamentations",
        ["esES"] = "Cuevas de los Lamentos",
        ["zhTW"] = "哀嚎洞穴",
        ["zhCN"] = "哀嚎洞穴",
    },
    ["Shadow Labyrinth"] = {
        ["ptBR"] = "Labirinto Soturno",
        ["ruRU"] = "Темный лабиринт",
        ["deDE"] = "Schattenlabyrinth",
        ["koKR"] = "어둠의 미궁",
        ["esMX"] = "Laberinto de las Sombras",
        ["enUS"] = true,
        ["frFR"] = "Labyrinthe des ombres",
        ["esES"] = "Laberinto de las Sombras",
        ["zhTW"] = "暗影迷宮",
        ["zhCN"] = "暗影迷宫",
    },
    ["Coilfang Reservoir"] = {
        ["ptBR"] = "Reservatório Presacurva",
        ["ruRU"] = "Резервуар Кривого Клыка",
        ["deDE"] = "Der Echsenkessel",
        ["koKR"] = "갈퀴송곳니 저수지",
        ["esMX"] = "Reserva Colmillo Torcido",
        ["enUS"] = true,
        ["frFR"] = "Réservoir de Glissecroc",
        ["esES"] = "Reserva Colmillo Torcido",
        ["zhTW"] = "盤牙蓄湖",
        ["zhCN"] = "盘牙水库",
    },
    ["Uldaman"] = {
        ["ptBR"] = "Uldaman",
        ["ruRU"] = "Ульдаман",
        ["deDE"] = "Uldaman",
        ["koKR"] = "울다만",
        ["esMX"] = "Uldaman",
        ["enUS"] = true,
        ["frFR"] = "Uldaman",
        ["esES"] = "Uldaman",
        ["zhTW"] = "奧達曼",
        ["zhCN"] = "奥达曼",
    },
    ["The Deadmines"] = {
        ["ptBR"] = "Minas Mortas",
        ["ruRU"] = "Мертвые Копи",
        ["deDE"] = "Die Todesminen",
        ["koKR"] = "죽음의 폐광",
        ["esMX"] = "Las Minas de la Muerte",
        ["enUS"] = true,
        ["frFR"] = "Les Mortemines",
        ["esES"] = "Las Minas de la Muerte",
        ["zhTW"] = "死亡礦坑",
        ["zhCN"] = "死亡矿井",
    },
    ["Sethekk Halls"] = {
        ["ptBR"] = "Salões dos Sethekk",
        ["ruRU"] = "Сетеккские залы",
        ["deDE"] = "Sethekkhallen",
        ["koKR"] = "세데크 전당",
        ["esMX"] = "Salas Sethekk",
        ["enUS"] = true,
        ["frFR"] = "Les salles des Sethekk",
        ["esES"] = "Salas Sethekk",
        ["zhTW"] = "塞司克大廳",
        ["zhCN"] = "塞泰克大厅",
    },
    ["Razorfen Downs"] = {
        ["ptBR"] = "Urzal dos Mortos",
        ["ruRU"] = "Курганы Иглошкурых",
        ["deDE"] = "Die Hügel von Razorfen",
        ["koKR"] = "가시덩굴 구릉",
        ["esMX"] = "Zahúrda Rajacieno",
        ["enUS"] = true,
        ["frFR"] = "Souilles de Tranchebauge",
        ["esES"] = "Zahúrda Rajacieno",
        ["zhTW"] = "剃刀高地",
        ["zhCN"] = "剃刀高地",
    },
    ["Scholomance"] = {
        ["ptBR"] = "Scolomântia",
        ["ruRU"] = "Некроситет",
        ["deDE"] = "Scholomance",
        ["koKR"] = "스칼로맨스",
        ["esMX"] = "Scholomance",
        ["enUS"] = true,
        ["frFR"] = "Scholomance",
        ["esES"] = "Scholomance",
        ["zhTW"] = "通靈學院",
        ["zhCN"] = "通灵学院",
    },
    ["Ragefire Chasm"] = {
        ["ptBR"] = "Cavernas Ígneas",
        ["ruRU"] = "Огненная пропасть",
        ["deDE"] = "Flammenschlund",
        ["koKR"] = "성난불길 협곡",
        ["esMX"] = "Sima Ígnea",
        ["enUS"] = true,
        ["frFR"] = "Gouffre de Ragefeu",
        ["esES"] = "Sima Ígnea",
        ["zhTW"] = "怒焰裂谷",
        ["zhCN"] = "怒焰裂谷",
    },
    ["The Steamvault"] = {
        ["ptBR"] = "Câmara dos Vapores",
        ["ruRU"] = "Паровое подземелье",
        ["deDE"] = "Die Dampfkammer",
        ["koKR"] = "증기 저장고",
        ["esMX"] = "La Cámara de Vapor",
        ["enUS"] = true,
        ["frFR"] = "Le Caveau de la vapeur",
        ["esES"] = "La Cámara de Vapor",
        ["zhTW"] = "蒸汽洞窟",
        ["zhCN"] = "蒸汽地窟",
    },
    ["Blackfathom Deeps"] = {
        ["ptBR"] = "Profundezas Negras",
        ["ruRU"] = "Непроглядная Пучина",
        ["deDE"] = "Tiefschwarze Grotte",
        ["koKR"] = "검은심연의 나락",
        ["esMX"] = "Cavernas de Brazanegra",
        ["enUS"] = true,
        ["frFR"] = "Profondeurs de Brassenoire",
        ["esES"] = "Cavernas de Brazanegra",
        ["zhTW"] = "黑澗深淵",
        ["zhCN"] = "黑暗深渊",
    },
    ["The Temple of Atal'Hakkar"] = {
        ["ptBR"] = "Templo de Atal'Hakkar",
        ["ruRU"] = "Храм Атал'Хаккар",
        ["deDE"] = "Der Tempel von Atal'Hakkar",
        ["koKR"] = "아탈학카르 신전",
        ["esMX"] = "El Templo de Atal'Hakkar",
        ["enUS"] = true,
        ["frFR"] = "Le temple d'Atal'Hakkar",
        ["esES"] = "Templo de Atal'Hakkar",
        ["zhTW"] = "阿塔哈卡神廟",
        ["zhCN"] = "阿塔哈卡神庙",
    },
    ["Caverns of Time"] = {
        ["ptBR"] = "Cavernas do Tempo",
        ["ruRU"] = "Пещеры Времени",
        ["deDE"] = "Höhlen der Zeit",
        ["koKR"] = "시간의 동굴",
        ["esMX"] = "Cavernas del Tiempo",
        ["enUS"] = true,
        ["frFR"] = "Grottes du temps",
        ["esES"] = "Cavernas del Tiempo",
        ["zhTW"] = "時光之穴",
        ["zhCN"] = "时光之穴",
    },
    ["The Blood Furnace"] = {
        ["ptBR"] = "Fornalha de Sangue",
        ["ruRU"] = "Кузня Крови",
        ["deDE"] = "Der Blutkessel",
        ["koKR"] = "피의 용광로",
        ["esMX"] = "El Horno de Sangre",
        ["enUS"] = true,
        ["frFR"] = "La Fournaise du sang",
        ["esES"] = "El Horno de Sangre",
        ["zhTW"] = "血熔爐",
        ["zhCN"] = "鲜血熔炉",
    },
    ["Shadowfang Keep"] = {
        ["ptBR"] = "Bastilha da Presa Negra",
        ["ruRU"] = "Крепость Темного Клыка",
        ["deDE"] = "Burg Shadowfang",
        ["koKR"] = "그림자송곳니 성채",
        ["esMX"] = "Castillo de Colmillo Oscuro",
        ["enUS"] = true,
        ["frFR"] = "Donjon d'Ombrecroc",
        ["esES"] = "Castillo de Colmillo Oscuro",
        ["zhTW"] = "影牙城堡",
        ["zhCN"] = "影牙城堡",
    },
    ["The Stockade"] = {
        ["ptBR"] = "O Cárcere",
        ["ruRU"] = "Тюрьма",
        ["deDE"] = "Das Verlies",
        ["koKR"] = "스톰윈드 지하감옥",
        ["esMX"] = "Las Mazmorras",
        ["enUS"] = true,
        ["frFR"] = "La Prison",
        ["esES"] = "Las Mazmorras",
        ["zhTW"] = "暴風城監獄",
        ["zhCN"] = "监狱",
    },
    ["Razorfen Kraul"] = {
        ["ptBR"] = "Urzal dos Tuscos",
        ["ruRU"] = "Лабиринты Иглошкурых",
        ["deDE"] = "Der Kral von Razorfen",
        ["koKR"] = "가시덩굴 우리",
        ["esMX"] = "Horado Rajacieno",
        ["enUS"] = true,
        ["frFR"] = "Kraal de Tranchebauge",
        ["esES"] = "Horado Rajacieno",
        ["zhTW"] = "剃刀沼澤",
        ["zhCN"] = "剃刀沼泽",
    },
    ["The Slave Pens"] = {
        ["ptBR"] = "Pátio dos Escravos",
        ["ruRU"] = "Узилище",
        ["deDE"] = "Die Sklavenunterkünfte",
        ["koKR"] = "강제 노역소",
        ["esMX"] = "Recinto de los Esclavos",
        ["enUS"] = true,
        ["frFR"] = "Les enclos aux esclaves",
        ["esES"] = "Recinto de los Esclavos",
        ["zhTW"] = "奴隸監獄",
        ["zhCN"] = "奴隶围栏",
    },
    ["The Mechanar"] = {
        ["ptBR"] = "Mecanar",
        ["ruRU"] = "Механар",
        ["deDE"] = "Die Mechanar",
        ["koKR"] = "메카나르",
        ["esMX"] = "El Mechanar",
        ["enUS"] = true,
        ["frFR"] = "Le Méchanar",
        ["esES"] = "El Mechanar",
        ["zhTW"] = "麥克納爾",
        ["zhCN"] = "能源舰",
    },
    ["Gnomeregan"] = {
        ["ptBR"] = "Gnomeregan",
        ["ruRU"] = "Гномреган",
        ["deDE"] = "Gnomeregan",
        ["koKR"] = "놈리건",
        ["esMX"] = "Gnomeregan",
        ["enUS"] = true,
        ["frFR"] = "Gnomeregan",
        ["esES"] = "Gnomeregan",
        ["zhTW"] = "諾姆瑞根",
        ["zhCN"] = "诺莫瑞根",
    },
    ["Zul'Farrak"] = {
        ["ptBR"] = "Zul'Farrak",
        ["ruRU"] = "Зул'Фаррак",
        ["deDE"] = "Zul'Farrak",
        ["koKR"] = "줄파락",
        ["esMX"] = "Zul'Farrak",
        ["enUS"] = true,
        ["frFR"] = "Zul'Farrak",
        ["esES"] = "Zul'Farrak",
        ["zhTW"] = "祖爾法拉克",
        ["zhCN"] = "祖尔法拉克",
    },
    ["Hellfire Citadel"] = {
        ["ptBR"] = "Cidadela Fogo do Inferno",
        ["ruRU"] = "Цитадель Адского Пламени",
        ["deDE"] = "Höllenfeuerzitadelle",
        ["koKR"] = "지옥불 성채",
        ["esMX"] = "Ciudadela del Fuego Infernal",
        ["enUS"] = true,
        ["frFR"] = "Citadelle des Flammes infernales",
        ["esES"] = "Ciudadela del Fuego Infernal",
        ["zhTW"] = "地獄火堡壘",
        ["zhCN"] = "地狱火堡垒",
    },
    ["The Shattered Halls"] = {
        ["ptBR"] = "Salões Despedaçados",
        ["ruRU"] = "Разрушенные залы",
        ["deDE"] = "Die Zerschmetterten Hallen",
        ["koKR"] = "으스러진 손의 전당",
        ["esMX"] = "Las Salas Arrasadas",
        ["enUS"] = true,
        ["frFR"] = "Les Salles brisées",
        ["esES"] = "Las Salas Arrasadas",
        ["zhTW"] = "地獄火堡壘",
        ["zhCN"] = "破碎大厅",
    },
    ["Blackrock Depths"] = {
        ["ptBR"] = "Abismo Rocha Negra",
        ["ruRU"] = "Глубины Черной Горы",
        ["deDE"] = "Blackrock Tiefen",
        ["koKR"] = "검은바위 나락",
        ["esMX"] = "Profundidades de Roca Negra",
        ["enUS"] = true,
        ["frFR"] = "Profondeurs de Blackrock",
        ["esES"] = "Profundidades de Roca Negra",
        ["zhTW"] = "黑石深淵",
        ["zhCN"] = "黑石深渊",
    },
    ["The Botanica"] = {
        ["ptBR"] = "Jardim Botânico",
        ["ruRU"] = "Ботаника",
        ["deDE"] = "Die Botanika",
        ["koKR"] = "신록의 정원",
        ["esMX"] = "El Invernáculo",
        ["enUS"] = true,
        ["frFR"] = "La Botanica",
        ["esES"] = "El Invernáculo",
        ["zhTW"] = "波塔尼卡",
        ["zhCN"] = "生态船",
    },
    ["The Arcatraz"] = {
        ["ptBR"] = "Arcatraz",
        ["ruRU"] = "Аркатрац",
        ["deDE"] = "Die Arkatraz",
        ["koKR"] = "알카트라즈",
        ["esMX"] = "El Arcatraz",
        ["enUS"] = true,
        ["frFR"] = "L'Arcatraz",
        ["esES"] = "El Arcatraz",
        ["zhTW"] = "亞克崔茲",
        ["zhCN"] = "禁魔监狱",
    },
    ["Magisters' Terrace"] = {
        ["ptBR"] = "Terraço dos Magísteres",
        ["ruRU"] = "Терраса Магистров",
        ["deDE"] = "Terrasse der Magister",
        ["koKR"] = "마법학자의 정원",
        ["esMX"] = "Bancal del Magister",
        ["enUS"] = true,
        ["frFR"] = "Terrasse des Magistères",
        ["esES"] = "Bancal del Magister",
        ["zhTW"] = "博學者殿堂",
        ["zhCN"] = "魔导师平台",
    },
}

for k, v in pairs(dungeonLocales) do
    l10n.translations[k] = v
end
