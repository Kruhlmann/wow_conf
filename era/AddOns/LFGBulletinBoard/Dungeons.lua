local TOCNAME,GBB=...

function GBB.GetDungeonNames()
	local DefaultEnGB={
		["RFC"] = 	"Ragefire Chasm",
		["DM"] = 	"The Deadmines",
		["WC"] = 	"Wailing Caverns",	
		["SFK"] = 	"Shadowfang Keep",
		["STK"] = 	"The Stockade",
		["BFD"] = 	"Blackfathom Deeps",
		["GNO"] = 	"Gnomeregan",
		["RFK"] = 	"Razorfen Kraul",
		["SM2"] =	"Scarlet Monastery",
		["SMG"] = 	"Scarlet Monastery: Graveyard",
		["SML"] = 	"Scarlet Monastery: Library",
		["SMA"] = 	"Scarlet Monastery: Armory",
		["SMC"] = 	"Scarlet Monastery: Cathedral",
		["RFD"] = 	"Razorfen Downs",
		["ULD"] = 	"Uldaman",
		["ZF"] = 	"Zul'Farrak",
		["MAR"] = 	"Maraudon",
		["ST"] = 	"The Sunken Temple",
		["BRD"] = 	"Blackrock Depths",
		["DM2"] = 	"Dire Maul",
		["DME"] = 	"Dire Maul: East",
		["DMN"] = 	"Dire Maul: North",
		["DMW"] = 	"Dire Maul: West",
		["STR"] = 	"Stratholme",
		["SCH"] = 	"Scholomance",
		["LBRS"] = 	"Lower Blackrock Spire",
		["UBRS"] = 	"Upper Blackrock Spire (10)",
		["RAMPS"] = "Hellfire Citadel: Ramparts",
		["BF"] = 	"Hellfire Citadel: Blood Furnace",
		["SP"] = 	"Coilfang Reservoir: Slave Pens",
		["UB"] = 	"Coilfang Reservoir: Underbog",
		["MT"] = 	"Auchindoun: Mana Tombs",
		["CRYPTS"] = "Auchindoun: Auchenai Crypts",
		["SETH"] = 	"Auchindoun: Sethekk Halls",
		["OHB"] = 	"Caverns of Time: Old Hillsbrad",
		["MECH"] = 	"Tempest Keep: The Mechanar",
		["BM"] = 	"Caverns of Time: Black Morass",
		["MGT"] = 	"Magisters' Terrace",
		["SH"] = 	"Hellfire Citadel: Shattered Halls",
		["BOT"] = 	"Tempest Keep: Botanica",
		["SL"] = 	"Auchindoun: Shadow Labyrinth",
		["SV"] = 	"Coilfang Reservoir: Steamvault",
		["ARC"] = 	"Tempest Keep: The Arcatraz",
		["KARA"] = 	"Karazhan",
		["GL"] = 	"Gruul's Lair",
		["MAG"] = 	"Hellfire Citadel: Magtheridon's Lair",
		["SSC"] = 	"Coilfang Reservoir: Serpentshrine Cavern",
		["EYE"] = 	"The Eye",
		["ZA"] = 	"Zul-Aman",
		["HYJAL"] = "The Battle For Mount Hyjal",
		["BT"] = 	"Black Temple",
		["SWP"] = 	"Sunwell Plateau",
		["ONY"] = 	"Onyxia's Lair (40)",
		["MC"] = 	"Molten Core (40)",
		["ZG"] = 	"Zul'Gurub (20)",
		["AQ20"] = 	"Ruins of Ahn'Qiraj (20)",
		["BWL"] = 	"Blackwing Lair (40)",
		["AQ40"] = 	"Temple of Ahn'Qiraj (40)",
		["NAX"] = 	"Naxxramas (40)",
		["WSG"] = 	"Warsong Gulch (PvP)",
		["AB"] = 	"Arathi Basin (PvP)",
		["AV"] = 	"Alterac Valley (PvP)",
		["EOTS"] =  "Eye of the Storm (PvP)",
		["MISC"] = 	"Miscellaneous",
		["TRADE"] =	"Trade",
		["DEBUG"] = "DEBUG INFO",
		["BAD"] =	"DEBUG BAD WORDS - REJECTED",
		}
		
	local dungeonNamesLocales={ 
		deDE ={
			["RFC"] = 	"Ragefireabgrund",
			["DM"] = 	"Die Todesminen",
			["WC"] = 	"Die H??hlen des Wehklagens",		
			["SFK"] = 	"Burg Shadowfang",
			["STK"] = 	"Das Verlies",
			["BFD"] = 	"Blackfathom-Tiefe",
			["GNO"] = 	"Gnomeregan",
			["RFK"] = 	"Der Kral von Razorfen",
			["SM2"] =	"Scharlachrotes Kloster",
			["SMG"] = 	"Scharlachrotes Kloster: Friedhof",
			["SML"] = 	"Scharlachrotes Kloster: Bibliothek",
			["SMA"] = 	"Scharlachrotes Kloster: Waffenkammer",
			["SMC"] = 	"Scharlachrotes Kloster: Kathedrale",
			["RFD"] = 	"Die H??gel von Razorfen",
			["ULD"] = 	"Uldaman",
			["ZF"] = 	"Zul'Farrak",
			["MAR"] = 	"Maraudon",
			["ST"] = 	"Versunkener Tempel",
			["BRD"] = 	"Blackrocktiefen",
			["DM2"] = 	"D??sterbruch",
			["DME"] = 	"D??sterbruch: Ost",
			["DMN"] = 	"D??sterbruch: Nord",
			["DMW"] = 	"D??sterbruch: West",
			["STR"] = 	"Stratholme",
			["SCH"] = 	"Scholomance",
			["LBRS"] = 	"Untere Blackrockspitze",
			["UBRS"] = 	"Obere Blackrockspitze (10)",
			["RAMPS"] = "Hellfire Citadel: Ramparts",
			["BF"] = 	"Hellfire Citadel: Blood Furnace",
			["SP"] = 	"Coilfang Reservoir: Slave Pens",
			["UB"] = 	"Coilfang Reservoir: Underbog",
			["MT"] = 	"Auchindoun: Mana Tombs",
			["CRYPTS"] = "Auchindoun: Auchenai Crypts",
			["SETH"] = 	"Auchindoun: Sethekk Halls",
			["OHB"] = 	"Caverns of Time: Old Hillsbrad",
			["MECH"] = 	"Tempest Keep: The Mechanar",
			["BM"] = 	"Caverns of Time: Black Morass",
			["MGT"] = 	"Magisters' Terrace",
			["SH"] = 	"Hellfire Citadel: Shattered Halls",
			["BOT"] = 	"Tempest Keep: Botanica",
			["SL"] = 	"Auchindoun: Shadow Labyrinth",
			["SV"] = 	"Coilfang Reservoir: Steamvault",
			["ARC"] = 	"Tempest Keep: The Arcatraz",
			["KARA"] = 	"Karazhan",
			["GL"] = 	"Gruul's Lair",
			["MAG"] = 	"Hellfire Citadel: Magtheridon's Lair",
			["SSC"] = 	"Coilfang Reservoir: Serpentshrine Cavern",
			["EYE"] = 	"The Eye",
			["ZA"] = 	"Zul-Aman",
			["HYJAL"] = "The Battle For Mount Hyjal",
			["BT"] = 	"Black Temple",
			["SWP"] = 	"Sunwell Plateau",
			["ONY"] = 	"Onyxias Hort (40)",
			["MC"] = 	"Geschmolzener Kern (40)",
			["ZG"] = 	"Zul'Gurub (20)",
			["AQ20"] = 	"Ruinen von Ahn'Qiraj (20)",
			["BWL"] = 	"Pechschwingenhort (40)",
			["AQ40"] = 	"Tempel von Ahn'Qiraj (40)",
			["NAX"] = 	"Naxxramas (40)",
			["WSG"] = 	"Warsongschlucht (PVP)",
			["AV"] = 	"Alteractal (PVP)",
			["AB"] = 	"Arathibecken (PVP)",
			["EOTS"] =  "Eye of the Storm (PvP)",
			["MISC"] = 	"Verschiedenes",
			["TRADE"] =	"Handel",
			
		},
		frFR ={
			["RFC"] = 	"Gouffre de Ragefeu",
			["DM"] = 	"Les Mortemines",
			["WC"] = 	"Cavernes des lamentations",	
			["SFK"] = 	"Donjon d'Ombrecroc",
			["STK"] = 	"La Prison",
			["BFD"] = 	"Profondeurs de Brassenoire",
			["GNO"] = 	"Gnomeregan",
			["RFK"] = 	"Kraal de Tranchebauge",
			["SM2"] =	"Monast??re ??carlate",
			["SMG"] = 	"Monast??re ??carlate: Graveyard",
			["SML"] = 	"Monast??re ??carlate: Library",
			["SMA"] = 	"Monast??re ??carlate: Armory",
			["SMC"] = 	"Monast??re ??carlate: Cathedral",
			["RFD"] = 	"Souilles de Tranchebauge",
			["ULD"] = 	"Uldaman",
			["ZF"] = 	"Zul'Farrak",
			["MAR"] = 	"Maraudon",
			["ST"] = 	"Le temple d'Atal'Hakkar",
			["BRD"] = 	"Profondeurs de Blackrock",
			["DM2"] = 	"Hache-tripes",
			["DME"] = 	"Hache-tripes: East",
			["DMN"] = 	"Hache-tripes: North",
			["DMW"] = 	"Hache-tripes: West",
			["STR"] = 	"Stratholme",
			["SCH"] = 	"Scholomance",
			["LBRS"] = 	"Pic Blackrock",
			["UBRS"] = 	"Pic Blackrock (10)",
			["RAMPS"] = "Hellfire Citadel: Ramparts",
			["BF"] = 	"Hellfire Citadel: Blood Furnace",
			["SP"] = 	"Coilfang Reservoir: Slave Pens",
			["UB"] = 	"Coilfang Reservoir: Underbog",
			["MT"] = 	"Auchindoun: Mana Tombs",
			["CRYPTS"] = "Auchindoun: Auchenai Crypts",
			["SETH"] = 	"Auchindoun: Sethekk Halls",
			["OHB"] = 	"Caverns of Time: Old Hillsbrad",
			["MECH"] = 	"Tempest Keep: The Mechanar",
			["BM"] = 	"Caverns of Time: Black Morass",
			["MGT"] = 	"Magisters' Terrace",
			["SH"] = 	"Hellfire Citadel: Shattered Halls",
			["BOT"] = 	"Tempest Keep: Botanica",
			["SL"] = 	"Auchindoun: Shadow Labyrinth",
			["SV"] = 	"Coilfang Reservoir: Steamvault",
			["ARC"] = 	"Tempest Keep: The Arcatraz",
			["KARA"] = 	"Karazhan",
			["GL"] = 	"Gruul's Lair",
			["MAG"] = 	"Hellfire Citadel: Magtheridon's Lair",
			["SSC"] = 	"Coilfang Reservoir: Serpentshrine Cavern",
			["EYE"] = 	"The Eye",
			["ZA"] = 	"Zul-Aman",
			["HYJAL"] = "The Battle For Mount Hyjal",
			["BT"] = 	"Black Temple",
			["SWP"] = 	"Sunwell Plateau",
			["ONY"] = 	"Repaire d'Onyxia (40)",
			["MC"] = 	"C??ur du Magma (40)",
			["ZG"] = 	"Zul'Gurub (20)",
			["AQ20"] = 	"Ruines d'Ahn'Qiraj (20)",
			["BWL"] = 	"Repaire de l'Aile noire (40)",
			["AQ40"] = 	"Ahn'Qiraj (40)",
			["NAX"] = 	"Naxxramas (40)",
		
		},
		esMX ={
			["RFC"] = 	"Sima ??gnea",
			["DM"] = 	"Las Minas de la Muerte",
			["WC"] = 	"Cuevas de los Lamentos",		
			["SFK"] = 	"Castillo de Colmillo Oscuro",
			["STK"] = 	"Las Mazmorras",
			["BFD"] = 	"Cavernas de Brazanegra",
			["GNO"] = 	"Gnomeregan",
			["RFK"] = 	"Horado Rajacieno",
			["SM2"] =	"Monasterio Escarlata",
			["SMG"] = 	"Monasterio Escarlata: Friedhof",
			["SML"] = 	"Monasterio Escarlata: Bibliothek",
			["SMA"] = 	"Monasterio Escarlata: Waffenkammer",
			["SMC"] = 	"Monasterio Escarlata: Kathedrale",
			["RFD"] = 	"Zah??rda Rojocieno",
			["ULD"] = 	"Uldaman",
			["ZF"] = 	"Zul'Farrak",
			["MAR"] = 	"Maraudon",
			["ST"] = 	"El Templo de Atal'Hakkar",
			["BRD"] = 	"Profundidades de Roca Negra	",
			["DM2"] = 	"La Masacre",
			["DME"] = 	"La Masacre: Ost",
			["DMN"] = 	"La Masacre: Nord",
			["DMW"] = 	"La Masacre: West",
			["STR"] = 	"Stratholme",
			["SCH"] = 	"Scholomance",
			["LBRS"] = 	"Cumbre de Roca Negra",
			["UBRS"] = 	"Cumbre de Roca Negra (10)",
			["RAMPS"] = "Hellfire Citadel: Ramparts",
			["BF"] = 	"Hellfire Citadel: Blood Furnace",
			["SP"] = 	"Coilfang Reservoir: Slave Pens",
			["UB"] = 	"Coilfang Reservoir: Underbog",
			["MT"] = 	"Auchindoun: Mana Tombs",
			["CRYPTS"] = "Auchindoun: Auchenai Crypts",
			["SETH"] = 	"Auchindoun: Sethekk Halls",
			["OHB"] = 	"Caverns of Time: Old Hillsbrad",
			["MECH"] = 	"Tempest Keep: The Mechanar",
			["BM"] = 	"Caverns of Time: Black Morass",
			["MGT"] = 	"Magisters' Terrace",
			["SH"] = 	"Hellfire Citadel: Shattered Halls",
			["BOT"] = 	"Tempest Keep: Botanica",
			["SL"] = 	"Auchindoun: Shadow Labyrinth",
			["SV"] = 	"Coilfang Reservoir: Steamvault",
			["ARC"] = 	"Tempest Keep: The Arcatraz",
			["KARA"] = 	"Karazhan",
			["GL"] = 	"Gruul's Lair",
			["MAG"] = 	"Hellfire Citadel: Magtheridon's Lair",
			["SSC"] = 	"Coilfang Reservoir: Serpentshrine Cavern",
			["EYE"] = 	"The Eye",
			["ZA"] = 	"Zul-Aman",
			["HYJAL"] = "The Battle For Mount Hyjal",
			["BT"] = 	"Black Temple",
			["SWP"] = 	"Sunwell Plateau",
			["ONY"] = 	"Guarida de Onyxia (40)",
			["MC"] = 	"N??cleo de Magma (40)",
			["ZG"] = 	"Zul'Gurub (20)",
			["AQ20"] = 	"Ruinas de Ahn'Qiraj (20)",
			["BWL"] = 	"Guarida Alanegra (40)",
			["AQ40"] = 	"Ahn'Qiraj (40)",
			["NAX"] = 	"Naxxramas (40)",

		},
		ruRU = {
			["AB"] = "???????????? ?????????? (PvP)",
			["AQ20"] = "?????????? ????'???????????? (20)",
			["AQ40"] = "????'?????????? (40)",
			["AV"] = "???????????????????????? ???????????? (PvP)",
			["BAD"] = "?????????????? ???????????? ?????????? - ????????????????",
			["BFD"] = "???????????????????????? ????????????",
			["BRD"] = "?????????????? ???????????? ????????",
			["BWL"] = "???????????? ?????????? ???????? (40)",
			["DEBUG"] = "???????????????????? ?? ????????????????",
			["DM"] = "?????????????? ????????",
			["DM2"] = "?????????????? ??????????",
			["DME"] = "?????????????? ??????????: ????????????",
			["DMN"] = "?????????????? ??????????: ??????????",
			["DMW"] = "?????????????? ??????????: ??????????",
			["GNO"] = "??????????????????",
			["LBRS"] = "?????? ?????????????? ???????????? ????????",
			["MAR"] = "??????????????",
			["MC"] = "???????????????? ?????????? (40)",
			["MISC"] = "????????????",
			["NAX"] = "?????????????????? (40)",
			["RAMPS"] = "Hellfire Citadel: Ramparts",
			["BF"] = 	"Hellfire Citadel: Blood Furnace",
			["SP"] = 	"Coilfang Reservoir: Slave Pens",
			["UB"] = 	"Coilfang Reservoir: Underbog",
			["MT"] = 	"Auchindoun: Mana Tombs",
			["CRYPTS"] = "Auchindoun: Auchenai Crypts",
			["SETH"] = 	"Auchindoun: Sethekk Halls",
			["OHB"] = 	"Caverns of Time: Old Hillsbrad",
			["MECH"] = 	"Tempest Keep: The Mechanar",
			["BM"] = 	"Caverns of Time: Black Morass",
			["MGT"] = 	"Magisters' Terrace",
			["SH"] = 	"Hellfire Citadel: Shattered Halls",
			["BOT"] = 	"Tempest Keep: Botanica",
			["SL"] = 	"Auchindoun: Shadow Labyrinth",
			["SV"] = 	"Coilfang Reservoir: Steamvault",
			["ARC"] = 	"Tempest Keep: The Arcatraz",
			["KARA"] = 	"Karazhan",
			["GL"] = 	"Gruul's Lair",
			["MAG"] = 	"Hellfire Citadel: Magtheridon's Lair",
			["SSC"] = 	"Coilfang Reservoir: Serpentshrine Cavern",
			["EYE"] = 	"The Eye",
			["ZA"] = 	"Zul-Aman",
			["HYJAL"] = "The Battle For Mount Hyjal",
			["BT"] = 	"Black Temple",
			["SWP"] = 	"Sunwell Plateau",
			["ONY"] = "???????????? ?????????????? (40)",
			["RFC"] = "???????????????? ????????????????",
			["RFD"] = "?????????????? ????????????????????",
			["RFK"] = "?????????????????? ????????????????????",
			["SCH"] = "????????????????????",
			["SFK"] = "???????????????? ?????????????? ??????????",
			["SM2"] = "?????????????????? ?????????? ????????????",
			["SMA"] = "?????????????????? ?????????? ????????????: ??????????????????",
			["SMC"] = "?????????????????? ?????????? ????????????: ??????????",
			["SMG"] = "?????????????????? ?????????? ????????????: ????????????????",
			["SML"] = "?????????????????? ?????????? ????????????: ????????????????????",
			["ST"] = "???????????????????? ????????",
			["STK"] = "????????????",
			["STR"] = "????????????????????",
			["TRADE"] = "????????????????",
			["UBRS"] = "???????? ?????????????? ???????????? ???????? (10)",
			["ULD"] = "????????????????",
			["WC"] = "???????????? ????????????????",
			["WSG"] = "???????????? ?????????? ?????????? (PvP)",
			["EOTS"] =  "Eye of the Storm (PvP)",
			["ZF"] = "??????'????????????",
			["ZG"] = "??????'?????????? (20)",
		},
	}

	
	
	local dungeonNames = dungeonNamesLocales[GetLocale()] or {}
	
	if GroupBulletinBoardDB and GroupBulletinBoardDB.CustomLocalesDungeon and type(GroupBulletinBoardDB.CustomLocalesDungeon) == "table" then
		for key,value in pairs(GroupBulletinBoardDB.CustomLocalesDungeon) do
			if value~=nil and value ~="" then
				dungeonNames[key.."_org"]=dungeonNames[key] or DefaultEnGB[key]
				dungeonNames[key]=value				
			end
		end
	end
	
	
	setmetatable(dungeonNames, {__index = DefaultEnGB})
	
	dungeonNames["DEADMINES"]=dungeonNames["DM"]
	
	return dungeonNames
end

function Union ( a, b )
    local result = {}
    for k,v in pairs ( a ) do
        result[k] = v
    end
    for k,v in pairs ( b ) do
		result[k] = v
    end
    return result
end

GBB.VanillaDungeonLevels ={
	["RFC"] = 	{13,18}, ["DM"] = 	{18,23}, ["WC"] = 	{15,25}, ["SFK"] = 	{22,30}, ["STK"] = 	{22,30}, ["BFD"] = 	{24,32},
	["GNO"] = 	{29,38}, ["RFK"] = 	{30,40}, ["SMG"] = 	{28,38}, ["SML"] = 	{29,39}, ["SMA"] = 	{32,42}, ["SMC"] = 	{35,45},
	["RFD"] = 	{40,50}, ["ULD"] = 	{42,52}, ["ZF"] = 	{44,54}, ["MAR"] = 	{46,55}, ["ST"] = 	{50,60}, ["BRD"] = 	{52,60},
	["LBRS"] = 	{55,60}, ["DME"] = 	{58,60}, ["DMN"] = 	{58,60}, ["DMW"] = 	{58,60}, ["STR"] = 	{58,60}, ["SCH"] = 	{58,60},
	["UBRS"] = 	{58,60}, ["ONY"] = 	{60,60}, ["MC"] = 	{60,60}, ["ZG"] = 	{60,60}, ["AQ20"]= 	{60,60}, ["BWL"] = {60,60},
	["AQ40"] = 	{60,60}, ["NAX"] = 	{60,60}, ["WSG"] = 	{10,70}, ["AB"] = 	{20,70}, ["AV"] = 	{51,70}, ["MISC"]= {0,100},  
	["DEBUG"] = {0,100}, ["BAD"] =	{0,100}, ["TRADE"]=	{0,100}, ["SM2"] =  {28,42}, ["DM2"] =	{58,60}, ["DEADMINES"]={18,23},
}

GBB.TbcDungeonLevels = { 
	["RAMPS"] =  {60,62}, 	["BF"] = 	 {61,63},     ["SP"] = 	 {62,64},    ["UB"] = 	 {63,65},     ["MT"] = 	 {64,66},     ["CRYPTS"] = {65,67},
	["SETH"] =   {67,69},  	["OHB"] = 	 {66,68},     ["MECH"] =   {69,70},    ["BM"] =      {69,70},    ["MGT"] =	 {70,70},    ["SH"] =	 {70,70}, 
	["BOT"] =    {70,70},    ["SL"] = 	 {70,70},    ["SV"] =     {70,70},   ["ARC"] = 	 {70,70},    ["KARA"] = 	 {70,70},    ["GL"] = 	 {70,70}, 
	["MAG"] =    {70,70},    ["SSC"] =    {70,70}, 	["EYE"] =    {70,70},   ["ZA"] = 	 {70,70},    ["HYJAL"] =  {70,70}, 	["BT"] =     {70,70}, 
	["SWP"] =    {70,70}, 	["EOTS"] =   {15,70},    	
}	

GBB.TbcDungeonNames = { 
	"RAMPS", "BF", "SP", "UB", "MT", "CRYPTS",
	"SETH", "OHB", "MECH", "BM", "MGT", "SH", 
	"BOT", "SL", "SV", "ARC", "KARA", "GL", 
	"MAG", "SSC", "EYE", "ZA", "HYJAL", "BT", 
	"SWP",   	
}	

GBB.VanillDungeonNames  = { 
	"RFC", "WC" , "DM" , "SFK", "STK", "BFD", "GNO",
    "RFK", "SMG", "SML", "SMA", "SMC", "RFD", "ULD", 
    "ZF", "MAR", "ST" , "BRD", "LBRS", "DME", "DMN", 
    "DMW", "STR", "SCH", "UBRS", "ONY", "MC", "ZG", 
    "AQ20", "BWL", "AQ40", "NAX",
}	


GBB.PvpNames = {
	"WSG", "AB", "AV", "EOTS"
}

GBB.Misc = {"MISC", "TRADE",}

GBB.DebugNames = {
	"DEBUG", "BAD", "NIL",
}

-- Needed because Lua sucks, Blizzard switch to Python please
-- Takes in a list of dungeon lists, it will then concatenate the lists into a single list
-- it will put the dungeons in an order and give them a value incremental value that can be used for sorting later 
-- ie one list "Foo" which contains "Bar" and "FooBar" and a second list "BarFoo" which contains "BarBar"
-- the output would be single list with "Bar" = 1, "FooBar" = 2, "BarFoo" = 3, "BarBar" = 4
function ConcatenateLists(Names) 
	local result = {}
	local index = 1
	for k, nameLists in pairs (Names) do 
		for _, v in pairs(nameLists) do 
			result[v] = index
			index = index + 1
		end
	end
	return result, index
end

function GBB.GetDungeonSort()
	local dungeonOrder = {GBB.VanillDungeonNames, GBB.TbcDungeonNames, GBB.PvpNames, GBB.Misc, GBB.DebugNames}
	local vanillaDungeonSize = 0

	-- Why does Lua not having a fucking size function
	for _, _ in pairs(GBB.VanillDungeonNames) do 
		vanillaDungeonSize = vanillaDungeonSize + 1
	end

	local debugSize = 0
	for _, _ in pairs(GBB.DebugNames) do
		debugSize = debugSize+1
	end
	
	GBB.TBCDUNGEONSTART = vanillaDungeonSize + 1
	GBB.MAXDUNGEON = vanillaDungeonSize

	local tmp_dsort, concatenatedSize = ConcatenateLists(dungeonOrder)
	local dungeonSort = {}
	
	GBB.TBCMAXDUNGEON = concatenatedSize - debugSize - 1
	
	for dungeon,nb in pairs(tmp_dsort) do
		dungeonSort[nb]=dungeon
		dungeonSort[dungeon]=nb
	end

	-- Need to do this because I don't know I am too lazy to debug the use of SM2, DM2, and DEADMINES
	dungeonSort["SM2"] = 10.5
	dungeonSort["DM2"] = 19.5
	dungeonSort["DEADMINES"] = 99 
	
	return dungeonSort
end
	

GBB.dungeonLevel = Union(GBB.VanillaDungeonLevels, GBB.TbcDungeonLevels)
