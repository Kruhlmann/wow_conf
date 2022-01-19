-- Just re-namespacing for convenience in this file
-- local MATS = Auctionator.Constants.DisenchantMats

Auctionator.Constants.DisenchantingProbabilityKeys = {
  LOW = 1,
  HIGH = 2,
  PROBABILITIES = 3
}

Auctionator.Constants.DisenchantingProbability = {
  [ Enum.ItemClass.Armor ] = {
    [ Enum.ItemQuality.Good ] = {
      -- { 5, 15, 80, { 1, 2 }, MATS.STRANGE_DUST, 20, { 1, 2 }, MATS.LESSER_MAGIC },
      -- { 16, 20, 75, { 2, 3 }, MATS.STRANGE_DUST, 20, { 1, 2 }, MATS.GREATER_MAGIC, 5, 1, MATS.SMALL_GLIMMERING },
      -- { 21, 25, 75, { 4, 6 }, MATS.STRANGE_DUST, 15, { 1, 2 }, MATS.LESSER_ASTRAL, 10, 1, MATS.SMALL_GLIMMERING },
      -- { 26, 30, 75, { 1, 2 }, MATS.SOUL_DUST, 20, { 1, 2 }, MATS.GREATER_ASTRAL, 5, 1, MATS.LARGE_GLIMMERING },
      -- { 31, 35, 75, { 2, 5 }, MATS.SOUL_DUST, 20, { 1, 2 }, MATS.LESSER_MYSTIC, 5, 1, MATS.SMALL_GLOWING },
      -- { 36, 40, 75, { 1, 2 }, MATS.VISION_DUST, 20, { 1, 2 }, MATS.GREATER_MYSTIC, 5, 1, MATS.LARGE_GLOWING },
      -- { 41, 45, 75, { 2, 5 }, MATS.VISION_DUST, 20, { 1, 2 }, MATS.LESSER_NETHER, 5, 1, MATS.SMALL_RADIANT },
      -- { 46, 50, 75, { 1, 2 }, MATS.DREAM_DUST, 20, { 1, 2 }, MATS.GREATER_NETHER, 5, 1, MATS.LARGE_RADIANT },
      -- { 51, 55, 75, { 2, 5 }, MATS.DREAM_DUST, 20, { 1, 2 }, MATS.LESSER_ETERNAL, 5, 1, MATS.SMALL_BRILLIANT },
      -- { 56, 60, 75, { 1, 2 }, MATS.ILLUSION_DUST, 20, { 1, 2 }, MATS.GREATER_ETERNAL, 5, 1, MATS.LARGE_BRILLIANT },
      -- { 61, 65, 75, { 2, 5 }, MATS.ILLUSION_DUST, 20, { 2, 3 }, MATS.GREATER_ETERNAL, 5, 1, MATS.LARGE_BRILLIANT },
      -- { 66, 80, 75, { 1, 3 }, MATS.ARCANE_DUST, 22, { 1, 3 }, MATS.LESSER_PLANAR, 3, 1, MATS.SMALL_PRISMATIC },
      -- { 81, 99, 75, { 2, 3 }, MATS.ARCANE_DUST, 22, { 2, 3 }, MATS.LESSER_PLANAR, 3, 1, MATS.SMALL_PRISMATIC },
      -- { 100, 120, 75, { 2, 5 }, MATS.ARCANE_DUST, 22, { 1, 2 }, MATS.GREATER_PLANAR, 3, 1, MATS.LARGE_PRISMATIC },
      -- { 121, 151, 75, { 1, 3 }, MATS.INFINITE_DUST, 22, { 1, 2 }, MATS.LESSER_COSMIC, 3, 1, MATS.SMALL_DREAM },
      -- { 152, 200, 75, { 4, 7 }, MATS.INFINITE_DUST, 22, { 1, 2 }, MATS.GREATER_COSMIC, 3, 1, MATS.DREAM_SHARD },
      -- { 272, 272, 34, 1, MATS.HYPN_DUST, 41, 2, MATS.HYPN_DUST, 13, 1, MATS.LESSER_CEL, 12, 2, MATS.LESSER_CEL },
      -- { 278, 278, 31, 1, MATS.HYPN_DUST, 20, 2, MATS.HYPN_DUST, 22, 3, MATS.HYPN_DUST, 9, 1, MATS.LESSER_CEL, 11, 2, MATS.LESSER_CEL, 6, 3, MATS.LESSER_CEL },
      -- { 283, 283, 28, 1, MATS.HYPN_DUST, 21, 2, MATS.HYPN_DUST, 24, 3, MATS.HYPN_DUST, 1, 4, MATS.HYPN_DUST, 8, 1, MATS.LESSER_CEL, 9, 2, MATS.LESSER_CEL, 9, 3, MATS.LESSER_CEL },
      -- { 285, 285, 28, 1, MATS.HYPN_DUST, 25, 2, MATS.HYPN_DUST, 20, 3, MATS.HYPN_DUST, 0, 4, MATS.HYPN_DUST, 7, 1, MATS.LESSER_CEL, 9, 2, MATS.LESSER_CEL, 10, 3, MATS.LESSER_CEL, 0, 6, MATS.LESSER_CEL },
      -- { 289, 289, 25, 1, MATS.HYPN_DUST, 25, 2, MATS.HYPN_DUST, 25, 3, MATS.HYPN_DUST, 0, 4, MATS.HYPN_DUST, 0, 5, MATS.HYPN_DUST, 7, 1, MATS.LESSER_CEL, 9, 2, MATS.LESSER_CEL, 8, 3, MATS.LESSER_CEL, 0, 5, MATS.LESSER_CEL },
      -- { 295, 295, 21, 1, MATS.HYPN_DUST, 19, 2, MATS.HYPN_DUST, 22, 3, MATS.HYPN_DUST, 17, 4, MATS.HYPN_DUST, 7, 2, MATS.LESSER_CEL, 8, 3, MATS.LESSER_CEL, 6, 4, MATS.LESSER_CEL },
      -- { 300, 300, 18, 1, MATS.HYPN_DUST, 20, 2, MATS.HYPN_DUST, 19, 3, MATS.HYPN_DUST, 19, 4, MATS.HYPN_DUST, 0, 6, MATS.HYPN_DUST, 8, 2, MATS.LESSER_CEL, 10, 3, MATS.LESSER_CEL, 7, 4, MATS.LESSER_CEL },
      -- { 305, 305, 15, 1, MATS.HYPN_DUST, 12, 2, MATS.HYPN_DUST, 26, 3, MATS.HYPN_DUST, 20, 4, MATS.HYPN_DUST, 9, 2, MATS.LESSER_CEL, 10, 3, MATS.LESSER_CEL, 9, 4, MATS.LESSER_CEL },
      -- { 306, 306, 24, 2, MATS.HYPN_DUST, 26, 3, MATS.HYPN_DUST, 26, 4, MATS.HYPN_DUST, 12, 1, MATS.GREATER_CEL, 12, 2, MATS.GREATER_CEL },
      -- { 312, 312, 29, 2, MATS.HYPN_DUST, 30, 3, MATS.HYPN_DUST, 20, 4, MATS.HYPN_DUST, 11, 1, MATS.GREATER_CEL, 11, 2, MATS.GREATER_CEL },
      -- { 316, 316, 18, 2, MATS.HYPN_DUST, 18, 3, MATS.HYPN_DUST, 22, 4, MATS.HYPN_DUST, 16, 5, MATS.HYPN_DUST, 14, 2, MATS.GREATER_CEL, 12, 3, MATS.GREATER_CEL },
      -- { 318, 318, 14, 2, MATS.HYPN_DUST, 21, 3, MATS.HYPN_DUST, 22, 4, MATS.HYPN_DUST, 18, 5, MATS.HYPN_DUST, 12, 2, MATS.GREATER_CEL, 13, 3, MATS.GREATER_CEL },
      -- { 325, 325, 17, 3, MATS.HYPN_DUST, 17, 4, MATS.HYPN_DUST, 17, 5, MATS.HYPN_DUST, 50, 2, MATS.GREATER_CEL },
      -- { 333, 333, 12, 2, MATS.HYPN_DUST, 24, 3, MATS.HYPN_DUST, 12, 4, MATS.HYPN_DUST, 29, 5, MATS.HYPN_DUST, 18, 2, MATS.GREATER_CEL, 6, 3, MATS.GREATER_CEL },
      -- { 364, 380, 85, 2, MATS.SPIRIT_DUST, 15, 1, MATS.MYSTERIOUS_ESS },
      -- { 381, 390, 85, 2.5, MATS.SPIRIT_DUST, 15, 1, MATS.MYSTERIOUS_ESS },
      -- { 391, 410, 85, 3, MATS.SPIRIT_DUST, 15, 1.5, MATS.MYSTERIOUS_ESS },
      -- { 411, 483, 85, 3.5, MATS.SPIRIT_DUST, 15, 2, MATS.MYSTERIOUS_ESS },
      -- { 484, 625, 100, 2.5, MATS.DRAENIC_DUST },
      -- { 626, 900, 100, 2.5, MATS.ARKHANA }
      {5,15,40,1,10940,40,2,10940,10,1,10938,10,2,10938},
      {16,20,37.5,2,10940,37.5,3,10940,10,1,10939,10,2,10939,5,1,10978},
      {21,25,25,4,10940,25,5,10940,25,6,10940,7.5,1,10998,7.5,2,10998,10,1,10978},
      {26,30,37.5,1,11083,37.5,2,11083,10,1,11082,10,2,11082,5,1,11084},
      {31,35,18.75,2,11083,18.75,3,11083,18.75,4,11083,18.75,5,11083,10,1,11134,10,2,11134,5,1,11138},
      {36,40,37.5,1,11137,37.5,2,11137,10,1,11135,10,2,11135,5,1,11139},
      {41,45,18.75,2,11137,18.75,3,11137,18.75,4,11137,18.75,5,11137,10,1,11174,10,2,11174,5,1,11177},
      {46,50,37.5,1,11176,37.5,2,11176,10,1,11175,10,2,11175,5,1,11178},
      {51,55,18.75,2,11176,18.75,3,11176,18.75,4,11176,18.75,5,11176,10,1,16202,10,2,16202,5,1,14343},
      {56,60,37.5,1,16204,37.5,2,16204,10,1,16203,10,2,16203,5,1,14344},
      {61,65,18.75,2,16204,18.75,3,16204,18.75,4,16204,18.75,5,16204,10,2,16203,10,3,16203,5,1,14344},
      {66,80,25,1,22445,25,2,22445,25,3,22445,7.3333333333333,1,22447,7.3333333333333,2,22447,7.3333333333333,3,22447,3,1,22448},
      {81,99,37.5,2,22445,37.5,3,22445,11,2,22447,11,3,22447,3,1,22448},
      {100,120,18.75,2,22445,18.75,3,22445,18.75,4,22445,18.75,5,22445,11,1,22446,11,2,22446,3,1,22449},
      {121,151,25,1,34054,25,2,34054,25,3,34054,11,1,34056,11,2,34056,3,1,34053},
      {152,200,18.75,4,34054,18.75,5,34054,18.75,6,34054,18.75,7,34054,11,1,34055,11,2,34055,3,1,34052},
      {272,272,34,1,52555,41,2,52555,13,1,52718,12,2,52718},
      {278,278,31,1,52555,20,2,52555,22,3,52555,9,1,52718,11,2,52718,6,3,52718},
      {283,283,28,1,52555,21,2,52555,24,3,52555,1,4,52555,8,1,52718,9,2,52718,9,3,52718},
      {285,285,28,1,52555,25,2,52555,20,3,52555,0,4,52555,7,1,52718,9,2,52718,10,3,52718,0,6,52718},
      {289,289,25,1,52555,25,2,52555,25,3,52555,0,4,52555,0,5,52555,7,1,52718,9,2,52718,8,3,52718,0,5,52718},
      {295,295,21,1,52555,19,2,52555,22,3,52555,17,4,52555,7,2,52718,8,3,52718,6,4,52718},
      {300,300,18,1,52555,20,2,52555,19,3,52555,19,4,52555,0,6,52555,8,2,52718,10,3,52718,7,4,52718},
      {305,305,15,1,52555,12,2,52555,26,3,52555,20,4,52555,9,2,52718,10,3,52718,9,4,52718},
      {306,306,24,2,52555,26,3,52555,26,4,52555,12,1,52719,12,2,52719},
      {312,312,29,2,52555,30,3,52555,20,4,52555,11,1,52719,11,2,52719},
      {316,316,18,2,52555,18,3,52555,22,4,52555,16,5,52555,14,2,52719,12,3,52719},
      {318,318,14,2,52555,21,3,52555,22,4,52555,18,5,52555,12,2,52719,13,3,52719},
      {325,325,17,3,52555,17,4,52555,17,5,52555,50,2,52719},
      {333,333,12,2,52555,24,3,52555,12,4,52555,29,5,52555,18,2,52719,6,3,52719},
      {364,380,85,2,74249,15,1,74250},
      {381,390,85,2.5,74249,15,1,74250},
      {391,410,85,3,74249,15,1.5,74250},
      {411,483,85,3.5,74249,15,2,74250},
      {484,625,100,2.5,109693},
      {626,900,100,2.5,124440}
    },
    [ Enum.ItemQuality.Rare ] = {
      -- { 11, 25, 100, 1, MATS.SMALL_GLIMMERING },
      -- { 26, 30, 100, 1, MATS.LARGE_GLIMMERING },
      -- { 31, 35, 100, 1, MATS.SMALL_GLOWING },
      -- { 36, 40, 100, 1, MATS.LARGE_GLOWING },
      -- { 41, 45, 100, 1, MATS.SMALL_RADIANT },
      -- { 46, 50, 100, 1, MATS.LARGE_RADIANT },
      -- { 51, 55, 100, 1, MATS.SMALL_BRILLIANT },
      -- { 56, 65, 99.5, 1, MATS.LARGE_BRILLIANT, 0.5, 1, MATS.NEXUS_CRYSTAL },
      -- { 66, 99, 99.5, 1, MATS.SMALL_PRISMATIC, 0.5, 1, MATS.NEXUS_CRYSTAL },
      -- { 100, 120, 99.5, 1, MATS.LARGE_PRISMATIC, 0.5, 1, MATS.VOID_CRYSTAL },
      -- { 121, 164, 99.5, 1, MATS.SMALL_DREAM, 0.5, 1, MATS.ABYSS_CRYSTAL },
      -- { 165, 280, 99.5, 1, MATS.DREAM_SHARD, 0.5, 1, MATS.ABYSS_CRYSTAL },
      -- { 288, 288, 100, 1, MATS.SMALL_HEAVENLY },
      -- { 292, 292, 100, 1, MATS.SMALL_HEAVENLY },
      -- { 300, 300, 95, 1, MATS.SMALL_HEAVENLY, 5, 2, MATS.SMALL_HEAVENLY },
      -- { 308, 308, 100, 1, MATS.SMALL_HEAVENLY },
      -- { 316, 316, 100, 1, MATS.SMALL_HEAVENLY },
      -- { 318, 318, 100, 1, MATS.HEAVENLY_SHARD },
      -- { 325, 325, 100, 1, MATS.HEAVENLY_SHARD },
      -- { 333, 333, 97, 1, MATS.HEAVENLY_SHARD, 3, 2, MATS.HEAVENLY_SHARD },
      -- { 339, 339, 98, 1, MATS.HEAVENLY_SHARD, 2, 2, MATS.HEAVENLY_SHARD },
      -- { 346, 346, 99, 1, MATS.HEAVENLY_SHARD, 1, 2, MATS.HEAVENLY_SHARD },
      -- { 352, 380, 100, 1, MATS.HEAVENLY_SHARD },
      -- { 381, 424, 100, 1, MATS.SMALL_ETHEREAL },
      -- { 425, 449, 100, 1, MATS.ETHEREAL_SHARD },
      -- { 450, 450, 20, 1, MATS.ETHEREAL_SHARD, 80, 1, MATS.SMALL_ETHEREAL },
      -- { 451, 476, 100, 1, MATS.ETHEREAL_SHARD },
      -- { 477, 685, 90, 9, MATS.DRAENIC_DUST, 10, 1, MATS.LUMINOUS_SHARD },
      -- { 686, 850, 30, 3, MATS.ARKHANA, 70, 1, MATS.LEYLIGHT_SHARD }
      {11,25,100,1,10978},
      {26,30,100,1,11084},
      {31,35,100,1,11138},
      {36,40,100,1,11139},
      {41,45,100,1,11177},
      {46,50,100,1,11178},
      {51,55,100,1,14343},
      {56,65,99.5,1,14344,0.5,1,20725},
      {66,99,99.5,1,22448,0.5,1,20725},
      {100,120,99.5,1,22449,0.5,1,22450},
      {121,164,99.5,1,34053,0.5,1,34057},
      {165,280,99.5,1,34052,0.5,1,34057},
      {288,288,100,1,52720},
      {292,292,100,1,52720},
      {300,300,95,1,52720,5,2,52720},
      {308,308,100,1,52720},
      {316,316,100,1,52720},
      {318,318,100,1,52721},
      {325,325,100,1,52721},
      {333,333,97,1,52721,3,2,52721},
      {339,339,98,1,52721,2,2,52721},
      {346,346,99,1,52721,1,2,52721},
      {352,380,100,1,52721},
      {381,424,100,1,74252},
      {425,449,100,1,74247},
      {450,450,20,1,74247,80,1,74252},
      {451,476,100,1,74247},
      {477,685,90,9,109693,10,1,111245},
      {686,850,30,3,124440,70,1,124441}
    },
    [ Enum.ItemQuality.Epic ] = {
      -- { 40, 45, 100, { 2, 4 }, MATS.SMALL_RADIANT },
      -- { 46, 50, 100, { 2, 4 }, MATS.LARGE_RADIANT },
      -- { 51, 55, 100, { 2, 4 }, MATS.SMALL_BRILLIANT },
      -- { 56, 60, 100, 1, MATS.NEXUS_CRYSTAL },
      -- { 61, 80, 50, 1, MATS.NEXUS_CRYSTAL, 50, 2, MATS.NEXUS_CRYSTAL },
      -- { 95, 100, 100, { 1, 2 }, MATS.VOID_CRYSTAL },
      -- { 105, 164, 33.3, 1, MATS.VOID_CRYSTAL, 66.6, 2, MATS.VOID_CRYSTAL },
      -- { 165, 280, 100, 1, MATS.ABYSS_CRYSTAL },
      -- { 281, 450, 100, 1, MATS.MAELSTROM_CRYSTAL },
      -- { 420, 600, 100, 1, MATS.SHA_CRYSTAL },
      -- { 601, 834, 100, 1, MATS.TEMPORAL_CRYSTAL },
      -- { 835, 950, 100, 1, MATS.CHAOS_CRYSTAL }
      {40,45,33.333333333333,2,11177,33.333333333333,3,11177,33.333333333333,4,11177},
      {46,50,33.333333333333,2,11178,33.333333333333,3,11178,33.333333333333,4,11178},
      {51,55,33.333333333333,2,14343,33.333333333333,3,14343,33.333333333333,4,14343},
      {56,60,100,1,20725},
      {61,80,50,1,20725,50,2,20725},
      {95,100,50,1,22450,50,2,22450},
      {105,164,33.3,1,22450,66.6,2,22450},
      {165,280,100,1,34057},
      {281,450,100,1,52722},
      {420,600,100,1,74248},
      {601,834,100,1,113588},
      {835,950,100,1,124442}
    }
  },
  [ Enum.ItemClass.Weapon ] = {
    [ Enum.ItemQuality.Good ] = {
      -- { 6, 15, 20, { 1, 2 }, MATS.STRANGE_DUST, 80, { 1, 2 }, MATS.LESSER_MAGIC },
      -- { 16, 20, 20, { 2, 3 }, MATS.STRANGE_DUST, 75, { 1, 2 }, MATS.GREATER_MAGIC, 5, 1, MATS.SMALL_GLIMMERING },
      -- { 21, 25, 15, { 4, 6 }, MATS.STRANGE_DUST, 75, { 1, 2 }, MATS.LESSER_ASTRAL, 10, 1, MATS.SMALL_GLIMMERING },
      -- { 26, 30, 20, { 1, 2 }, MATS.SOUL_DUST, 75, { 1, 2 }, MATS.GREATER_ASTRAL, 5, 1, MATS.LARGE_GLIMMERING },
      -- { 31, 35, 20, { 2, 5 }, MATS.SOUL_DUST, 75, { 1, 2 }, MATS.LESSER_MYSTIC, 5, 1, MATS.SMALL_GLOWING },
      -- { 36, 40, 20, { 1, 2 }, MATS.VISION_DUST, 75, { 1, 2 }, MATS.GREATER_MYSTIC, 5, 1, MATS.LARGE_GLOWING },
      -- { 41, 45, 20, { 2, 5 }, MATS.VISION_DUST, 75, { 1, 2 }, MATS.LESSER_NETHER, 5, 1, MATS.SMALL_RADIANT },
      -- { 46, 50, 20, { 1, 2 }, MATS.DREAM_DUST, 75, { 1, 2 }, MATS.GREATER_NETHER, 5, 1, MATS.LARGE_RADIANT },
      -- { 51, 55, 22, { 2, 5 }, MATS.DREAM_DUST, 75, { 1, 2 }, MATS.LESSER_ETERNAL, 5, 1, MATS.SMALL_BRILLIANT },
      -- { 56, 60, 22, { 1, 2 }, MATS.ILLUSION_DUST, 75, { 1, 2 }, MATS.GREATER_ETERNAL, 5, 1, MATS.LARGE_BRILLIANT },
      -- { 61, 65, 22, { 2, 5 }, MATS.ILLUSION_DUST, 75, { 2, 3 }, MATS.GREATER_ETERNAL, 5, 1, MATS.LARGE_BRILLIANT },
      -- { 66, 99, 22, { 2, 3 }, MATS.ARCANE_DUST, 75, { 2, 3 }, MATS.LESSER_PLANAR, 3, 1, MATS.SMALL_PRISMATIC },
      -- { 100, 120, 22, { 2, 5 }, MATS.ARCANE_DUST, 75, { 1, 2 }, MATS.GREATER_PLANAR, 3, 1, MATS.LARGE_PRISMATIC },
      -- { 121, 151, 22, { 1, 3 }, MATS.INFINITE_DUST, 75, { 1, 2 }, MATS.LESSER_COSMIC, 3, 1, MATS.SMALL_DREAM },
      -- { 152, 200, 22, { 4, 7 }, MATS.INFINITE_DUST, 75, { 1, 2 }, MATS.GREATER_COSMIC, 3, 1, MATS.DREAM_SHARD },
      -- { 272, 272, 12, 1, MATS.HYPN_DUST, 11, 2, MATS.HYPN_DUST, 33, 1, MATS.LESSER_CEL, 45, 2, MATS.LESSER_CEL },
      -- { 278, 278, 16, 1, MATS.HYPN_DUST, 8, 2, MATS.HYPN_DUST, 4, 3, MATS.HYPN_DUST, 16, 1, MATS.LESSER_CEL, 28, 2, MATS.LESSER_CEL, 28, 3, MATS.LESSER_CEL },
      -- { 283, 283, 7, 1, MATS.HYPN_DUST, 5, 2, MATS.HYPN_DUST, 17, 3, MATS.HYPN_DUST, 22, 1, MATS.LESSER_CEL, 22, 2, MATS.LESSER_CEL, 25, 3, MATS.LESSER_CEL },
      -- { 289, 289, 8, 1, MATS.HYPN_DUST, 8, 2, MATS.HYPN_DUST, 25, 1, MATS.LESSER_CEL, 33, 2, MATS.LESSER_CEL, 27, 3, MATS.LESSER_CEL },
      -- { 295, 295, 2, 1, MATS.HYPN_DUST, 16, 2, MATS.HYPN_DUST, 5, 3, MATS.HYPN_DUST, 3, 4, MATS.HYPN_DUST, 17, 2, MATS.LESSER_CEL, 30, 3, MATS.LESSER_CEL, 28, 4, MATS.LESSER_CEL },
      -- { 300, 300, 4, 1, MATS.HYPN_DUST, 10, 2, MATS.HYPN_DUST, 10, 3, MATS.HYPN_DUST, 8, 4, MATS.HYPN_DUST, 25, 2, MATS.LESSER_CEL, 16, 3, MATS.LESSER_CEL, 27, 4, MATS.LESSER_CEL },
      -- { 305, 305, 25, 2, MATS.HYPN_DUST, 25, 3, MATS.HYPN_DUST, 37, 3, MATS.LESSER_CEL, 12, 4, MATS.LESSER_CEL },
      -- { 306, 306, 11, 2, MATS.HYPN_DUST, 8, 3, MATS.HYPN_DUST, 11, 4, MATS.HYPN_DUST, 36, 1, MATS.GREATER_CEL, 35, 2, MATS.GREATER_CEL },
      -- { 312, 312, 11, 2, MATS.HYPN_DUST, 7, 3, MATS.HYPN_DUST, 8, 4, MATS.HYPN_DUST, 42, 1, MATS.GREATER_CEL, 31, 2, MATS.GREATER_CEL },
      -- { 317, 317, 6, 2, MATS.HYPN_DUST, 7, 3, MATS.HYPN_DUST, 7, 4, MATS.HYPN_DUST, 6, 5, MATS.HYPN_DUST, 37, 2, MATS.GREATER_CEL, 36, 3, MATS.GREATER_CEL, 1, 5, MATS.GREATER_CEL },
      -- { 318, 318, 21, 3, MATS.HYPN_DUST, 5, 5, MATS.HYPN_DUST, 42, 2, MATS.GREATER_CEL, 32, 3, MATS.GREATER_CEL },
      -- { 351, 380, 85, 2.5, MATS.SPIRIT_DUST, 15, 1, MATS.MYSTERIOUS_ESS },
      -- { 381, 390, 85, 3, MATS.SPIRIT_DUST, 15, 1, MATS.MYSTERIOUS_ESS },
      -- { 391, 410, 85, 3.5, MATS.SPIRIT_DUST, 15, 1.5, MATS.MYSTERIOUS_ESS },
      -- { 411, 483, 85, 4, MATS.SPIRIT_DUST, 15, 2, MATS.MYSTERIOUS_ESS },
      -- { 484, 700, 100, 2.5, MATS.DRAENIC_DUST }
      {6,15,10,1,10940,10,2,10940,40,1,10938,40,2,10938},
      {16,20,10,2,10940,10,3,10940,37.5,1,10939,37.5,2,10939,5,1,10978},
      {21,25,5,4,10940,5,5,10940,5,6,10940,37.5,1,10998,37.5,2,10998,10,1,10978},
      {26,30,10,1,11083,10,2,11083,37.5,1,11082,37.5,2,11082,5,1,11084},
      {31,35,5,2,11083,5,3,11083,5,4,11083,5,5,11083,37.5,1,11134,37.5,2,11134,5,1,11138},
      {36,40,10,1,11137,10,2,11137,37.5,1,11135,37.5,2,11135,5,1,11139},
      {41,45,5,2,11137,5,3,11137,5,4,11137,5,5,11137,37.5,1,11174,37.5,2,11174,5,1,11177},
      {46,50,10,1,11176,10,2,11176,37.5,1,11175,37.5,2,11175,5,1,11178},
      {51,55,5.5,2,11176,5.5,3,11176,5.5,4,11176,5.5,5,11176,37.5,1,16202,37.5,2,16202,5,1,14343},
      {56,60,11,1,16204,11,2,16204,37.5,1,16203,37.5,2,16203,5,1,14344},
      {61,65,5.5,2,16204,5.5,3,16204,5.5,4,16204,5.5,5,16204,37.5,2,16203,37.5,3,16203,5,1,14344},
      {66,99,11,2,22445,11,3,22445,37.5,2,22447,37.5,3,22447,3,1,22448},
      {100,120,5.5,2,22445,5.5,3,22445,5.5,4,22445,5.5,5,22445,37.5,1,22446,37.5,2,22446,3,1,22449},
      {121,151,7.3333333333333,1,34054,7.3333333333333,2,34054,7.3333333333333,3,34054,37.5,1,34056,37.5,2,34056,3,1,34053},
      {152,200,5.5,4,34054,5.5,5,34054,5.5,6,34054,5.5,7,34054,37.5,1,34055,37.5,2,34055,3,1,34052},
      {272,272,12,1,52555,11,2,52555,33,1,52718,45,2,52718},
      {278,278,16,1,52555,8,2,52555,4,3,52555,16,1,52718,28,2,52718,28,3,52718},
      {283,283,7,1,52555,5,2,52555,17,3,52555,22,1,52718,22,2,52718,25,3,52718},
      {289,289,8,1,52555,8,2,52555,25,1,52718,33,2,52718,27,3,52718},
      {295,295,2,1,52555,16,2,52555,5,3,52555,3,4,52555,17,2,52718,30,3,52718,28,4,52718},
      {300,300,4,1,52555,10,2,52555,10,3,52555,8,4,52555,25,2,52718,16,3,52718,27,4,52718},
      {305,305,25,2,52555,25,3,52555,37,3,52718,12,4,52718},
      {306,306,11,2,52555,8,3,52555,11,4,52555,36,1,52719,35,2,52719},
      {312,312,11,2,52555,7,3,52555,8,4,52555,42,1,52719,31,2,52719},
      {317,317,6,2,52555,7,3,52555,7,4,52555,6,5,52555,37,2,52719,36,3,52719,1,5,52719},
      {318,318,21,3,52555,5,5,52555,42,2,52719,32,3,52719},
      {351,380,85,2.5,74249,15,1,74250},
      {381,390,85,3,74249,15,1,74250},
      {391,410,85,3.5,74249,15,1.5,74250},
      {411,483,85,4,74249,15,2,74250},
      {484,700,100,2.5,109693}
    },
    [ Enum.ItemQuality.Rare ] = {
      -- { 11, 25, 100, 1, MATS.SMALL_GLIMMERING },
      -- { 26, 30, 100, 1, MATS.LARGE_GLIMMERING },
      -- { 31, 35, 100, 1, MATS.SMALL_GLOWING },
      -- { 36, 40, 100, 1, MATS.LARGE_GLOWING },
      -- { 41, 45, 100, 1, MATS.SMALL_RADIANT },
      -- { 46, 50, 100, 1, MATS.LARGE_RADIANT },
      -- { 51, 55, 100, 1, MATS.SMALL_BRILLIANT },
      -- { 56, 65, 99.5, 1, MATS.LARGE_BRILLIANT, 0.5, 1, MATS.NEXUS_CRYSTAL },
      -- { 66, 99, 99.5, 1, MATS.SMALL_PRISMATIC, 0.5, 1, MATS.NEXUS_CRYSTAL },
      -- { 100, 120, 99.5, 1, MATS.LARGE_PRISMATIC, 0.5, 1, MATS.VOID_CRYSTAL },
      -- { 121, 164, 99.5, 1, MATS.SMALL_DREAM, 0.5, 1, MATS.ABYSS_CRYSTAL },
      -- { 165, 280, 99.5, 1, MATS.DREAM_SHARD, 0.5, 1, MATS.ABYSS_CRYSTAL },
      -- { 308, 308, 100, 1, MATS.SMALL_HEAVENLY },
      -- { 316, 316, 100, 1, MATS.SMALL_HEAVENLY },
      -- { 318, 318, 100, 1, MATS.HEAVENLY_SHARD },
      -- { 333, 333, 100, 1, MATS.HEAVENLY_SHARD },
      -- { 346, 346, 93, 1, MATS.HEAVENLY_SHARD, 7, 2, MATS.HEAVENLY_SHARD },
      -- { 381, 424, 100, 1, MATS.SMALL_ETHEREAL },
      -- { 425, 449, 100, 1, MATS.ETHEREAL_SHARD },
      -- { 450, 450, 20, 1, MATS.ETHEREAL_SHARD, 80, 1, MATS.SMALL_ETHEREAL },
      -- { 451, 476, 100, 1, MATS.ETHEREAL_SHARD },
      -- { 477, 800, 90, 9, MATS.DRAENIC_DUST, 10, 1, MATS.LUMINOUS_SHARD }
      {11,25,100,1,10978},
      {26,30,100,1,11084},
      {31,35,100,1,11138},
      {36,40,100,1,11139},
      {41,45,100,1,11177},
      {46,50,100,1,11178},
      {51,55,100,1,14343},
      {56,65,99.5,1,14344,0.5,1,20725},
      {66,99,99.5,1,22448,0.5,1,20725},
      {100,120,99.5,1,22449,0.5,1,22450},
      {121,164,99.5,1,34053,0.5,1,34057},
      {165,280,99.5,1,34052,0.5,1,34057},
      {308,308,100,1,52720},
      {316,316,100,1,52720},
      {318,318,100,1,52721},
      {333,333,100,1,52721},
      {346,346,93,1,52721,7,2,52721},
      {381,424,100,1,74252},
      {425,449,100,1,74247},
      {450,450,20,1,74247,80,1,74252},
      {451,476,100,1,74247},
      {477,800,90,9,109693,10,1,111245}
    },
    [ Enum.ItemQuality.Epic ] = {
      -- { 40, 45, 100, { 2, 4 }, MATS.SMALL_RADIANT },
      -- { 46, 50, 100, { 2, 4 }, MATS.LARGE_RADIANT },
      -- { 51, 55, 100, { 2, 4 }, MATS.SMALL_BRILLIANT },
      -- { 56, 60, 100, 1, MATS.NEXUS_CRYSTAL },
      -- { 61, 80, 33.3, 1, MATS.NEXUS_CRYSTAL, 66.6, 2, MATS.NEXUS_CRYSTAL },
      -- { 95, 100, 100, { 1, 2 }, MATS.VOID_CRYSTAL },
      -- { 105, 164, 33.3, 1, MATS.VOID_CRYSTAL, 66.6, 2, MATS.VOID_CRYSTAL },
      -- { 165, 280, 100, 1, MATS.ABYSS_CRYSTAL },
      -- { 281, 450, 100, 1, MATS.MAELSTROM_CRYSTAL },
      -- { 420, 600, 100, 1, MATS.SHA_CRYSTAL },
      -- { 601, 800, 100, 1, MATS.TEMPORAL_CRYSTAL }
      {40,45,33.333333333333,2,11177,33.333333333333,3,11177,33.333333333333,4,11177},
      {46,50,33.333333333333,2,11178,33.333333333333,3,11178,33.333333333333,4,11178},
      {51,55,33.333333333333,2,14343,33.333333333333,3,14343,33.333333333333,4,14343},
      {56,60,100,1,20725},
      {61,80,33.3,1,20725,66.6,2,20725},
      {95,100,50,1,22450,50,2,22450},
      {105,164,33.3,1,22450,66.6,2,22450},
      {165,280,100,1,34057},
      {281,450,100,1,52722},
      {420,600,100,1,74248},
      {601,800,100,1,113588}
    }
  }
}


-- I don't know how often I'll need this...
-- function DEMap(info)
--    local entry = {};

--    local x, i, n;

--    entry[1]  = info[1];
--    entry[2]  = info[2];

--    n = 3;

--    for x = 3,#info,3 do
--       local nums = info[x+1];
--       if (type(nums) == "number") then
--          entry[n]   = info[x];
--          entry[n+1] = info[x+1];
--          entry[n+2] = info[x+2];
--          n = n + 3;
--       else
--          for i = nums[1],nums[2] do
--             entry[n]   = info[x]/(nums[2]-nums[1]+1);
--             entry[n+1] = i;
--             entry[n+2] = info[x+2];
--             n = n + 3;
--          end
--       end
--    end

--    return entry
-- end

-- for i, element in pairs( Auctionator.Constants.DisenchantingProbability[ Enum.ItemClass.Amor ][ Enum.ItemQuality.Good ] ) do
--    Auctionator.Util.FlatPrint( DEMap( element ) )
-- end
