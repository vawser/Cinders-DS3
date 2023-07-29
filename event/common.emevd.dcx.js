// ==EMEVD==
// @docs    ds3-common.emedf.json
// @compress    DCX_DFLT_10000_44_9
// @game    DarkSouls3
// @string    
// @linked    []
// @version    3.4.1
// ==/EMEVD==

//----------------------------------------------
// Constructor
//----------------------------------------------
$Event(0, Default, function() {
    // DEBUG
    // AwardItemLot(10);
    
    //-----------------------------------
    // Run for Host and Clients
    //-----------------------------------
    InitializeEvent(0, 200, 0);
    InitializeEvent(0, 230, 0); // Set Eclipse ceremonies
    InitializeEvent(0, 9570, 4500, 3740); // Forked Pale Tongue
    InitializeEvent(1, 9570, 4510, 3750); // Proof of a Concord Well Kept

    // Kill Tracker
    SetSpEffect(10000, 200000010);
    
    // Estus Charge
    SetSpEffect(10000, 200000020);
    SetSpEffect(10000, 200000021);
    
    InitializeEvent(0, 10000, 0); // Darksign Warp
    InitializeEvent(0, 10001, 0); // Effect: Player
    InitializeEvent(0, 10002, 0); // Effect: Enemy
    
    InitializeEvent(0, 10004, 0); // Slave Knight Gael - Warp
    InitializeEvent(0, 10005, 0); // Slave Knight Gael - Unlock Boss Fight
    
    // Restrictions
    InitializeEvent(0, 15000, 0);
    InitializeEvent(0, 15001, 0);
    InitializeEvent(0, 15002, 0);
    
    // BB Dodge Toggle
    InitializeEvent(0, 20006, 0); 

    // Covenant
    InitializeEvent(0, 20007, 160100102, 372); // Darkmoon Faithful
    InitializeEvent(1, 20007, 160100202, 366); // Watchdogs of Farron
    InitializeEvent(2, 20007, 160100302, 367); // Aldrich Faithful 
    InitializeEvent(3, 20007, 160100402, 375); // Warrior of Sunlight
    InitializeEvent(4, 20007, 160100502, 374); // Mound-makers
    InitializeEvent(5, 20007, 160100602, 383); // Thieves' Pact
    InitializeEvent(6, 20007, 160100702, 1060); // Chaos Servant
    InitializeEvent(7, 20007, 160100802, 373); // Rosaria's Fingers
    InitializeEvent(8, 20007, 160101802, 379); // Spears of the Church
    InitializeEvent(9, 20007, 160100902, 1070); // Vinheim Scholars 
    InitializeEvent(10, 20007, 160101002, 1080); // Pilgrims of Dark
    InitializeEvent(11, 20007, 160101102, 1090); // Way of White
    InitializeEvent(12, 20007, 160101202, 4015); // Dragon Remnants
    InitializeEvent(13, 20007, 160101302, 372); // Blue Sentinels
    InitializeEvent(14, 20007, 160101402, 384); // Way of Blue
    InitializeEvent(15, 20007, 160101502, 365); // Company of Champions
    InitializeEvent(16, 20007, 160101602, 381); // Servant of the Rat
    InitializeEvent(17, 20007, 160101702, 382); // Ritualist Pact

    InitializeEvent(0, 20008, 0); // Thieves' Pact Drops
    InitializeEvent(0, 20009, 0); // Way of Blue Drops
    
    //--------------------
    // Boss Teleports
    //--------------------
    InitializeEvent( 0, 10006, 25000151, 3000982, 3002960, 30, 0); // Vordt
    InitializeEvent( 1, 10006, 25000152, 3000983, 3002961, 30, 0); // Oceiros
    InitializeEvent( 2, 10006, 25000150, 3000981, 3002957, 30, 0); // Dancer
    
    InitializeEvent( 3, 10006, 25000153, 3100980, 3102957, 31, 0); // Curse-rotted Greatwood
    InitializeEvent(23, 10006, 25000175, 3100960, 3102960, 31, 0); // Aborr
    
    InitializeEvent( 4, 10006, 25000154, 3200981, 3202961, 32, 0); // Nameless King
    InitializeEvent( 5, 10006, 25000155, 3200980, 3202963, 32, 0); // Ancient Wyvern
    InitializeEvent(24, 10006, 25000176, 3200960, 3202960, 32, 0); // Trio of Explorers
    
    InitializeEvent( 6, 10006, 25000156, 3300980, 3302960, 33, 0); // Crystal Sage
    InitializeEvent( 7, 10006, 25000157, 3300981, 3302961, 33, 0); // Abyss Watchers
    
    InitializeEvent( 8, 10006, 25000158, 3010980, 3012982, 30, 1); // Dragonslayer Armour
    InitializeEvent(25, 10006, 25000177, 3010981, 3012981, 30, 1); // Twisted Knight
    
    InitializeEvent(26, 10006, 25000178, 3410960, 3412960, 34, 1); // Mirror Knight
    InitializeEvent( 9, 10006, 25000159, 3410980, 3412961, 34, 1); // Twin Princes
    
    InitializeEvent(10, 10006, 25000160, 3500980, 3502957, 35, 0); // Deacons of the Deep
    InitializeEvent(27, 10006, 25000179, 3500981, 3502956, 35, 0); // Cathedral Guardian

    InitializeEvent(11, 10006, 25000161, 3700980, 3702976, 37, 0); // Pontiff Sulyvahn
    InitializeEvent(12, 10006, 25000162, 3700981, 3702977, 37, 0); // Aldrich
    InitializeEvent(28, 10006, 25000180, 3700982, 3702990, 37, 0); // Lordran Remnants
    
    InitializeEvent(13, 10006, 25000163, 3800980, 3802957, 38, 0); // Wolnir
    InitializeEvent(14, 10006, 25000164, 3800981, 3802958, 38, 0); // Old Demon King
    
    InitializeEvent(15, 10006, 25000165, 3900980, 3902956, 39, 0); // Yhorm
    InitializeEvent(29, 10006, 25000181, 3900971, 3902951, 39, 0); // Fallen Protector
    
    InitializeEvent(21, 10006, 25000172, 4000981, 4002951, 40, 0); // Champion Gundyr
    InitializeEvent(30, 10006, 25000184, 4000987, 4002972, 40, 0); // Marauder
    
    InitializeEvent(22, 10006, 25000173, 4100980, 4102955, 41, 0); // Soul of Cinder
    
    InitializeEvent(16, 10006, 25000166, 4500980, 4502926, 45, 0); // Sister Friede
    InitializeEvent(31, 10006, 25000183, 4500981, 4502925, 45, 0); // Princess Yngvil
    InitializeEvent(32, 10006, 25000182, 4500982, 4502920, 45, 0); // Prince Dorthinus
    
    InitializeEvent(18, 10006, 25000168, 5000980, 5002955, 50, 0); // Demon Prince
    
    InitializeEvent(19, 10006, 25000169, 5100981, 5102957, 51, 0); // Halflight
    InitializeEvent(20, 10006, 25000170, 5100980, 5102956, 51, 0); // Midir
    
    InitializeEvent(0, 10007, 25000171, 5110974, 5112954, 51, 1); // Gael
    
    //--------------------
    // Visual Effects
    //--------------------
    InitializeEvent(0, 20201, 0); // Clear Visual Transformations
    InitializeEvent(0, 20202, 0); // Clear Armor Transformations
    InitializeEvent(0, 20203, 0); // Clear Head Armor Transformations
    InitializeEvent(0, 20204, 0); // Clear Body Armor Transformations

    InitializeEvent(0, 20210, 0); // Weapon Emission - Monitor
    InitializeEvent(0, 20211, 0); // Infusion Emission - Monitor

    InitializeEvent(0, 20220, 0); // Body Emission - Monitor
    InitializeEvent(0, 20230, 0); // Eye Emission - Monitor
    InitializeEvent(0, 20240, 0); // Body Aura - Monitor
    InitializeEvent(0, 20250, 0); // Humanity Aura - Monitor
    InitializeEvent(0, 20260, 0); // Head Emission - Monitor
    InitializeEvent(0, 20270, 0); // Body Tint - Monitor
    InitializeEvent(0, 20280, 0); // Head Armor - Monitor
    InitializeEvent(0, 20290, 0); // Body Armor - Monitor

    InitializeEvent(0, 20600, 0); // FOV - Monitor

    // Castigations
    InitializeEvent(0, 14000, 0); // Castigations - Player
    InitializeEvent(0, 14010, 0); // Castigations - Enemy
    InitializeEvent(0, 14011, 0); // Castigations - Feeding Frenzy
    
    InitializeEvent( 0, 14020, 25000900, 110); // Abyssal Maw
    InitializeEvent( 1, 14020, 25000901, 110); // Brittle Bones
    InitializeEvent( 2, 14020, 25000902, 120); // Fresh Meat
    InitializeEvent( 3, 14020, 25000903, 120); // Fading Flasks
    InitializeEvent( 4, 14020, 25000904, 120); // Lethargic Mind
    InitializeEvent( 5, 14020, 25000905, 110); // Wounded Fury
    InitializeEvent( 6, 14020, 25000906, 110); // Thick Hides
    InitializeEvent( 7, 14020, 25000907, 110); // Stout Hearts
    InitializeEvent( 8, 14020, 25000908, 110); // Regenerative Skin
    InitializeEvent( 9, 14020, 25000909, 120); // Spectral Shift
    InitializeEvent(10, 14020, 25000910, 120); // Relentlessness
    InitializeEvent(11, 14020, 25000911, 120); // Alacrity
    InitializeEvent(12, 14020, 25000912, 120); // Feeding Frenzy
    
    InitializeEvent( 0, 14030, 160101502, 160101503); // Company of Champions
    
    // Pygmy Merchant Unlocks
    InitializeEvent(0, 10025, 2500, 70000100); // Mortician's Skull
    InitializeEvent(1, 10025, 2501, 70000101); // Dreamchaser's Skull
    InitializeEvent(2, 10025, 2502, 70000102); // Paladin's Skull
    InitializeEvent(3, 10025, 2503, 70000103); // Grave Warden's Skull
    InitializeEvent(4, 10025, 2504, 70000104); // Pontificate's Skull
    InitializeEvent(5, 10025, 2505, 70000105); // Prisoner Chief's Skull
    InitializeEvent(6, 10025, 2506, 70000106); // Xanthous Skull
    InitializeEvent(7, 10025, 2507, 70000107); // Hollow's Skull
    InitializeEvent(8, 10025, 2508, 70000108); // Dragon Chaser's Skull
    InitializeEvent(9, 10025, 2509, 70000109); // Easterner's Skull  
    InitializeEvent(10, 10025, 2510, 70000120); // Captain's Skull
    
    // Tome Unlocks
    InitializeEvent( 0, 10010, 200700000, 2400, 240); // Apprentice's Scroll
    InitializeEvent( 1, 10010, 200700001, 2401, 250); // Scholar's Scroll
    InitializeEvent( 2, 10010, 200700002, 2402, 260); // Farron Scroll
    InitializeEvent( 3, 10010, 200700003, 2403, 270); // Assassin's Scroll
    InitializeEvent( 4, 10010, 200700004, 2404, 200); // Sage's Scroll
    InitializeEvent( 6, 10010, 200700005, 2405, 220); // Logan's Scroll
    InitializeEvent( 7, 10010, 200700006, 2406, 210); // Golden Scroll
    InitializeEvent( 8, 10010, 200700007, 2407, 230); // Crystal Scroll
    
    InitializeEvent( 9, 10010, 200700008, 2410, 300); // Divine Tome of Carim
    InitializeEvent(10, 10010, 200700009, 2411, 310); // Divine Tome of Lothric
    InitializeEvent(11, 10010, 200700010, 2412, 320); // Humble Divine Tome
    InitializeEvent(12, 10010, 200700011, 2413, 340); // Divine Tome of Astora
    InitializeEvent(13, 10010, 200700012, 2414, 330); // Divine Tome of Sunlight
    InitializeEvent(14, 10010, 200700013, 2415, 350); // Angelic Divine Tome
    InitializeEvent(15, 10010, 200700014, 2416, 360); // Wrathful Divine Tome
    
    InitializeEvent(16, 10010, 200700015, 2420, 440); // Simple Pyromancy Tome
    InitializeEvent(17, 10010, 200700016, 2421, 400); // Great Swamp Pyromancy Tome
    InitializeEvent(18, 10010, 200700017, 2422, 410); // Carthus Pyromancy Tome
    InitializeEvent(19, 10010, 200700018, 2423, 420); // Izalith Pyromancy Tome
    InitializeEvent(20, 10010, 200700019, 2424, 430); // Quelana Pyromancy Tome
    InitializeEvent(21, 10010, 200700020, 2425, 450); // Burnt Pyromany Tome
    InitializeEvent(22, 10010, 200700021, 2426, 460); // Dusty Pyromancy Tome
    InitializeEvent(23, 10010, 200700022, 2427, 470); // Earthen Pyromancy Tome
    InitializeEvent(24, 10010, 200700023, 2428, 480); // Muddy Pyromancy Tome
    
    InitializeEvent(25, 10010, 200700024, 2430, 500); // Black Tome of the Deep
    InitializeEvent(26, 10010, 200700025, 2431, 510); // Black Tome of Despair
    InitializeEvent(27, 10010, 200700026, 2432, 520); // Black Tome of Yearning
    InitializeEvent(28, 10010, 200700027, 2433, 530); // Black Tome of the Abyss
    
    InitializeEvent(29, 10010, 200700028, 2440, 600); // Black Tome of the Accursed
    InitializeEvent(30, 10010, 200700029, 2441, 610); // Black Tome of the Grave Warden
    
    InitializeEvent(31, 10010, 200700030, 2450, 700); // Gnawing Tome of Famine
    InitializeEvent(32, 10010, 200700031, 2451, 710); // Gnawing Tome of Agony
    InitializeEvent(33, 10010, 200700032, 2452, 720); // Gnawing Tome of Londor
    
    //--------------------
    // Items
    //--------------------
    InitializeEvent(0, 20040, 0); // Crown of the Great Lord
    InitializeEvent(0, 20042, 0); // Pyromancer's Parting Flame    
    InitializeEvent(0, 20048, 0); // Frostbite Removal

    //--------------------
    // Camera Effects
    //--------------------
    //InitializeEvent(0, 20045, 160700310, 20001); // Devil's Trumpet
    //InitializeEvent(1, 20045, 160700320, 20002); // Moonflower
    InitializeEvent(0, 20601, 0); // Handle Flags
    InitializeEvent(0, 20602, 0); // Numbness

    //--------------------
    // Debug Tools
    //--------------------
    InitializeEvent(0, 20060, 10000); // Event Flag Tool
    InitializeEvent(0, 20061, 10000); // Screenshot Tool
    InitializeEvent(0, 20062, 10000); // Treasure Tool
    InitializeEvent(0, 20063, 10000); // NG+ Tool
    
    //----------------------
    // Accursed - Detriment System
    //----------------------
    InitializeEvent(0, 12000, 0); // Award Notes after Death
    
    InitializeEvent( 0, 12010, 8000, 200600000, 20000400); // HP Reduction
    InitializeEvent( 1, 12010, 8001, 200600001, 20000410); // FP Reduction
    InitializeEvent( 2, 12010, 8002, 200600002, 20000420); // Stamina Reduction
    InitializeEvent( 3, 12010, 8003, 200600003, 20000430); // Equipment Load Reduction
    InitializeEvent( 4, 12010, 8004, 200600004, 20000440); // HP Recovery Diminishment
    
    InitializeEvent( 5, 12010, 8005, 200600005, 20000450); // Vigor Loss
    InitializeEvent( 6, 12010, 8006, 200600006, 20000460); // Attunement Loss
    InitializeEvent( 7, 12010, 8007, 200600007, 20000470); // Vitality Loss
    InitializeEvent( 7, 12010, 8008, 200600008, 20000480); // Endurance Loss
    InitializeEvent( 8, 12010, 8009, 200600009, 20000490); // Strength Loss
    InitializeEvent( 9, 12010, 8010, 200600010, 20000100); // Dexterity Loss
    InitializeEvent(10, 12010, 8011, 200600011, 20000110); // Intelligence Loss
    InitializeEvent(11, 12010, 8012, 200600012, 20000120); // Faith Loss
    InitializeEvent(12, 12010, 8013, 200600013, 20000130); // Luck Loss
    
    InitializeEvent(13, 12010, 8014, 200600014, 20000140); // Stamina Drain
    
    InitializeEvent(14, 12010, 8015, 200600015, 20000150); // Physical Weakness
    InitializeEvent(15, 12010, 8016, 200600016, 20000160); // Magic Weakness
    InitializeEvent(16, 12010, 8017, 200600017, 20000170); // Fire Weakness
    InitializeEvent(17, 12010, 8018, 200600018, 20000180); // Lightning Weakness
    InitializeEvent(18, 12010, 8019, 200600019, 20000190); // Dark Weakness
    
    InitializeEvent(19, 12010, 8020, 200600020, 20000200); // Slash Frailty
    InitializeEvent(20, 12010, 8021, 200600021, 20000210); // Strike Frailty
    InitializeEvent(21, 12010, 8022, 200600022, 20000220); // Thrust Frailty
    InitializeEvent(22, 12010, 8023, 200600023, 20000230); // Standard Frailty
    InitializeEvent(23, 12010, 8024, 200600024, 20000240); // Magic Frailty
    InitializeEvent(24, 12010, 8025, 200600025, 20000250); // Fire Frailty
    InitializeEvent(25, 12010, 8026, 200600026, 20000260); // Lightning Frailty
    InitializeEvent(26, 12010, 8028, 200600027, 20000270); // Dark Frailty
    InitializeEvent(27, 12010, 8028, 200600028, 20000280); // Poise Frailty
    
    InitializeEvent(28, 12010, 8029, 200600029, 20000290); // Poison Vulnerability
    InitializeEvent(29, 12010, 8030, 200600030, 20000300); // Bleed Vulnerability
    InitializeEvent(30, 12010, 8031, 200600031, 20000310); // Frost Vulnerability
    InitializeEvent(31, 12010, 8032, 200600032, 20000320); // Curse Vulnerability
     
    InitializeEvent(32, 12010, 8033, 200600033, 20000330); // Soul Drain
    InitializeEvent(33, 12010, 8034, 200600034, 20000340); // Skill Confusion
    InitializeEvent(34, 12010, 8035, 200600035, 20000350); // Sorcery Confusion
    InitializeEvent(35, 12010, 8036, 200600036, 20000360); // Pyromancy Confusion
    InitializeEvent(36, 12010, 8037, 200600037, 20000370); // Miracle Confusion
    InitializeEvent(37, 12010, 8038, 200600038, 20000380); // Clumsy Form
    InitializeEvent(38, 12010, 8039, 200600039, 20000390); // Tourist

    //-----------------------------------
    // Run for Host only
    //-----------------------------------
    EndIf(HasMultiplayerState(MultiplayerState.Client));
    EndIf(EventFlag(2052));

    //--------------------
    // Setup
    //--------------------
    InitializeEvent(0, 20001, 0); // Game Flags - Once
    InitializeEvent(0, 20002, 0); // Game Flags - On Load

    // Sin
    InitializeEvent(0, 9004, 9007); // Sin - Check Hostility
    InitializeEvent(0, 9005, 9008); // Sin - Check Hostility
    InitializeEvent(0, 9006, 9009); // Sin - Check Hostility
    InitializeEvent(0, 9000, 9001, 9007, 9008, 9009); // NPC Sin monitor
    InitializeEvent(0, 9002, 9003); // Clear Sin
    InitializeEvent(0, 9010, 0); // Sin - Shrine Handmaid Price Increase

    // Boss Defeat - Award Items
    InitializeEvent(0, 970, 13000800, 2000, 0, 0); // Vordt
    InitializeEvent(1, 970, 13000890, 2010, 0, 0); // Dancer
    InitializeEvent(2, 970, 13000830, 2020, 0, 0); // Oceiros
    InitializeEvent(3, 970, 13010800, 2030, 0, 0); // Dragonslayer Armour
    InitializeEvent(9, 970, 13410830, 2040, 0, 0); // Twin Princes
    InitializeEvent(10, 970, 13410860, 2050, 0, 0); // Unused
    InitializeEvent(4, 970, 13100800, 2060, 0, 0); // Curse-rotted Greatwood
    InitializeEvent(5, 970, 13200800, 2070, 0, 0); // Ancient Wyvern
    InitializeEvent(6, 970, 13200850, 2080, 0, 0); // Nameless King
    InitializeEvent(7, 970, 13300850, 2090, 0, 0); // Crystal Sage
    InitializeEvent(8, 970, 13300800, 2100, 0, 0); // Abyss Watchers
    InitializeEvent(11, 970, 13500800, 2110, 0, 0); // Deacons of the Deep
    InitializeEvent(12, 970, 13700850, 2120, 0, 0); // Pontiff Sulyvahn
    InitializeEvent(13, 970, 13700800, 2130, 0, 0); // Aldrich
    InitializeEvent(14, 970, 13800800, 2140, 0, 0); // High Lord Wolnir
    InitializeEvent(15, 970, 13800830, 2150, 0, 0); // Old Demon King
    InitializeEvent(17, 970, 13900800, 2170, 0, 0); // Yhorm
    InitializeEvent(18, 970, 14000800, 2180, 0, 0); // Corrupted Gundyr
    InitializeEvent(19, 970, 14000830, 2190, 0, 0); // Champion Gundyr
    InitializeEvent(20, 970, 14100800, 2200, 0, 0); // Soul of Cinder
    InitializeEvent(21, 970, 14500800, 2300, 0, 0); // Sister Friede
    InitializeEvent(22, 970, 13700870, 2310, 0, 0); // Lordran Remnants
    InitializeEvent(23, 970, 15000800, 2330, 0, 0); // Demon Prince
    InitializeEvent(24, 970, 15100800, 2340, 0, 0); // Halflight
    InitializeEvent(25, 970, 15100850, 2350, 0, 0); // Darkeater Midir
    InitializeEvent(26, 970, 15110800, 2360, 0, 0); // Slave Knight Gael
    InitializeEvent(27, 970, 14500960, 2320, 0, 0); // Prince Dorthinus
    InitializeEvent(29, 970, 13410870, 2380, 0, 0); // Mirror Knight
    InitializeEvent(30, 970, 13100870, 2390, 0, 0); // Aborr
    InitializeEvent(31, 970, 14500860, 2400, 0, 0); // Princess Yngvil
    InitializeEvent(32, 970, 13200870, 2410, 0, 0); // Trio of Explorers
    InitializeEvent(33, 970, 13010850, 2420, 0, 0); // Twisted Knight
    InitializeEvent(34, 970, 13900860, 2430, 0, 0); // Fallen Protector
    //InitializeEvent(35, 970, 13200880, 2440, 0, 0); // UNUSED
    InitializeEvent(36, 970, 14000850, 2450, 0, 0); // The Marauder

    // Game Progress Flags
    InitializeEvent(0, 6100, 6100, 13300800); // Abyss Watcher
    InitializeEvent(1, 6100, 6101, 13900800); // Yhorm
    InitializeEvent(2, 6100, 6102, 13700800); // Aldrich
    InitializeEvent(3, 6100, 6103, 13410830); // Twin Princes
    InitializeEvent(4, 6100, 6104, 14000800); // Corrupted Gundyr
    InitializeEvent(5, 6100, 6105, 13000800); // Vordt
    InitializeEvent(6, 6100, 6106, 13300850); // Crystal Sage
    InitializeEvent(7, 6100, 6107, 13500800); // Deacons of the Deep
    InitializeEvent(8, 6100, 6108, 13800800); // High Lord Wolnir
    InitializeEvent(9, 6100, 6109, 13700850); // Pontiff Sulyvahn
    InitializeEvent(10, 6100, 6110, 13000890); // Dancer
    InitializeEvent(11, 6100, 6111, 13010800); // Dragonslayer Armour
    InitializeEvent(12, 6100, 6112, 110); // Game Clear

    InitializeEvent(0, 702, 0); // Unknown
    InitializeEvent(0, 710, 0); // Warp to Dancer

    // Phantoms
    InitializeEvent(0, 9510, 0); // NPC - Sirris
    InitializeEvent(0, 9511, 0); // NPC - Longfinger Kirk
    InitializeEvent(0, 9512, 0); // NPC - Londor Pale Shade

    // Gestures
    InitializeEvent(0, 9520, 4410, 8, 9013, 6058); // Yellowfinger Heysel - Proper bow
    InitializeEvent(0, 9525, 4430, 4, 9005, 6054); // Londor Pale Shade - Duel bow
    InitializeEvent(0, 9530, 4420, 18, 9020, 6068); // Black Hand Gotthard - By my sword
    InitializeEvent(0, 9540, 15, 9017, 6065); // Knight Slayer Tsorig - My thanks!

    // NPC Flags
    InitializeEvent(0, 9100, 70000007); // Hawkwood
    InitializeEvent(0, 9101, 70000008); // Sirris
    InitializeEvent(0, 9102, 70000012); // Greirat
    InitializeEvent(0, 9103, 70000013); // Orbeck
    InitializeEvent(0, 9104, 70000017); // Irina/Eygon
    InitializeEvent(0, 9105, 70000019, 70000020, 70000021); // Anri
    InitializeEvent(0, 9111, 70000022, 70000023); // Anri
    InitializeEvent(0, 9106, 70000000); // Sirris
    InitializeEvent(0, 9107, 70000001); // Yuria
    InitializeEvent(0, 9108, 70000002); // Yuria
    InitializeEvent(0, 9109, 70000003); // Yuria
    InitializeEvent(0, 9110, 70000004); // Yuria
    InitializeEvent(0, 9112, 70000005); //
    InitializeEvent(0, 9113, 70000030); // Lapp
    InitializeEvent(0, 9114, 70000031); // Shria

    // Boss Kill Count Trackers
    InitializeEvent(0, 9120, 74000756, 74000760, 74000760, 1, 1, 1, 0); // Sirris
    InitializeEvent(1, 9120, 74000591, 74000552, 74000592, 3, 3, 3, 0); // 
    InitializeEvent(2, 9120, 74000552, 74000553, 74000592, 3, 3, 6, 0); // Orbeck
    InitializeEvent(3, 9120, 74000303, 74000316, 74000316, 1, 1, 1, 1); // Greirat - Undead Settlement
    InitializeEvent(4, 9120, 74000306, 74000318, 74000318, 1, 1, 1, 1); // Greirat - Irithyll
    InitializeEvent(5, 9120, 74000921, 74000925, 74000925, 1, 1, 1, 1); // 
    InitializeEvent(6, 9120, 74000916, 74000913, 74000913, 1, 1, 1, 1); // 
    InitializeEvent(7, 9120, 73500265, 73500264, 73500264, 1, 1, 1, 0); // 

    InitializeEvent(0, 9016, 0); // Player - Cleric Check
    InitializeEvent(0, 9011, 0); // Fire Keeper - Eyes of a Fire Keeper Dialogue
    InitializeEvent(0, 9014, 0); // Hawkwood - Twinkling Dragon Torso Stone
    InitializeEvent(0, 9018, 0); // Hawkwood - Dialogue Flag
    InitializeEvent(0, 9019, 0); // Eygon - Dialogue Flag
    InitializeEvent(0, 9015, 0); // Unknown
    InitializeEvent(0, 6900, 0); // Estus Flask - Maximum Count Monitor

    InitializeEvent(0, 9020, 73500300, 1621, 1634, 6951, 35);
    InitializeEvent(1, 9020, 14100511, 14100512, 14100512, 6952, 41);
    InitializeEvent(2, 9020, 14500161, 14500162, 14500162, 6952, 45);
});

//----------------------------------------------
// Deconstructor
//----------------------------------------------
$Event(50, Default, function() {
    //-----------------------------------
    // Run for Host and Client
    //-----------------------------------
    // Ceremonies
    //InitializeEvent(0, 231, 0);   // Untended Graves - Ceremony Monitor
    InitializeEvent(0, 232, 0); // Undead Settlement - Ceremony Monitor

    // Misc
    InitializeEvent(0, 701, 0); // Unknown
    InitializeEvent(0, 740, 0); // Reset Camera

    //-----------------------------------
    // Run for Host only
    //-----------------------------------
    EndIf(PlayerIsNotInOwnWorld());
    EndIf(EventFlag(2052));

    InitializeEvent(0, 700, 0); // Flag Setup
    InitializeEvent(0, 741, 0); // World - Untended Graves - Area Welcome Message Handler
    InitializeEvent(0, 9012, 0); // Player - Set Gender Flag

    // Remove items in NG+
    if (EventFlag(6400) && !EventFlag(14000100)) { // Player Start Sequence // Final Cutscene

        // Items
        RemoveItemFromPlayer(ItemType.Goods, 2123, 1); // Cinders of a Lord
        RemoveItemFromPlayer(ItemType.Goods, 2124, 1); // Cinders of a Lord
        RemoveItemFromPlayer(ItemType.Goods, 2125, 1); // Cinders of a Lord
        RemoveItemFromPlayer(ItemType.Goods, 2126, 1); // Cinders of a Lord
        RemoveItemFromPlayer(ItemType.Goods, 115, 1); // Black Eye Orb
        RemoveItemFromPlayer(ItemType.Goods, 390, 1); // Fire Keeper Soul
        RemoveItemFromPlayer(ItemType.Goods, 490, 8); // Dark Sigil
        RemoveItemFromPlayer(ItemType.Goods, 2117, 1); // Basin of Vows
        RemoveItemFromPlayer(ItemType.Goods, 2135, 1); // Transposing Kiln
        RemoveItemFromPlayer(ItemType.Goods, 2137, 1); // Coiled Sword
        RemoveItemFromPlayer(ItemType.Goods, 2138, 1); // Eyes of a Fire Keeper
        RemoveItemFromPlayer(ItemType.Goods, 2139, 1); // Sword of Avowal
        RemoveItemFromPlayer(ItemType.Goods, 2142, 1); // Hawkwood's Swordgrass
        RemoveItemFromPlayer(ItemType.Goods, 2155, 1); // Contraption Key
        RemoveItemFromPlayer(ItemType.Goods, 2156, 1); // Small Envoy Banner
        RemoveItemFromPlayer(ItemType.Goods, 2158, 1); // Blood of the Dark Soul

        // Keys
        RemoveItemFromPlayer(ItemType.Goods, 2001, 1); // Lift Chamber Key
        RemoveItemFromPlayer(ItemType.Goods, 2005, 1); // Small Doll
        RemoveItemFromPlayer(ItemType.Goods, 2007, 1); // Jailbreaker's Key
        RemoveItemFromPlayer(ItemType.Goods, 2008, 1); // Jailer's Key Ring
        RemoveItemFromPlayer(ItemType.Goods, 2009, 1); // Grave Key
        RemoveItemFromPlayer(ItemType.Goods, 2010, 1); // Cell Key
        RemoveItemFromPlayer(ItemType.Goods, 2011, 1); // Dungeon Ground Floor Key
        RemoveItemFromPlayer(ItemType.Goods, 2012, 1); // Old Cell Key
        RemoveItemFromPlayer(ItemType.Goods, 2013, 1); // Forgotten Key
        RemoveItemFromPlayer(ItemType.Goods, 2014, 1); // Grand Archives Key
        RemoveItemFromPlayer(ItemType.Goods, 2015, 1); // Tower Key
        RemoveItemFromPlayer(ItemType.Goods, 2102, 1); // Small Lothric Banner
        RemoveItemFromPlayer(ItemType.Goods, 2065, 1); // Seal of Judgment

        // Turn-ins
        RemoveItemFromPlayer(ItemType.Goods, 2103, 1); // Farron Coal
        RemoveItemFromPlayer(ItemType.Goods, 2104, 1); // Sage's Coal
        RemoveItemFromPlayer(ItemType.Goods, 2105, 1); // Giant's Coal
        RemoveItemFromPlayer(ItemType.Goods, 2106, 1); // Profaned Coal

        SetEventFlag(6400, OFF);
    }

L0:
    NoOp();
});

//----------------------------------------------
// Flag: Is in Own World
//----------------------------------------------
$Event(200, Restart, function() {
    SetNetworkSyncState(Disabled);
    EndIf(!PlayerIsNotInOwnWorld());
    SetEventFlag(201, ON);
});

//----------------------------------------------
// World - Set Eclipse Ceremonies
//----------------------------------------------
$Event(230, Restart, function() {
    const flag_EclipseActive    = 230;
    const flag_BossKill_Aldrich = 25001010;

    WaitFor(EventFlag(flag_BossKill_Aldrich));

    SetMapCeremony(30, 0, 10);
    SetMapCeremony(30, 1, 10);
    SetMapCeremony(34, 1, 10);
    SetMapCeremony(31, 0, 10);
    SetMapCeremony(33, 0, 10);
    SetMapCeremony(35, 0, 10);

    SetEventFlag(flag_EclipseActive, ON);
});

//----------------------------------------------
// World - Enable Untended Graves if outside of m40
//----------------------------------------------
$Event(231, Restart, function() {
    EndIf(PlayerInMap(40, 0));
    SetMapCeremony(40, 0, 10);
    EndEvent();
});

//----------------------------------------------
// World - Undead Settlement Ceremonies
//----------------------------------------------
$Event(232, Default, function() {
    const flag_EclipseActive = 230;
    const flag_InSirrisWorld = 8221;

    if (!EventFlag(flag_InSirrisWorld)) {
        if (!EventFlag(flag_EclipseActive)) {

            // Default
            SetMapCeremony(31, 0, 0); // Day
        } else {

            // Eclipse
L0:
            SetMapCeremony(31, 0, 10); // Eclipse
            Goto(L1);
        }
    }

    // Sirris's Version of Undead Settlement
L1:
    WaitFor(PlayerInMap(30, 0) || PlayerInMap(30, 1) || PlayerInMap(34, 1) || PlayerInMap(40, 0));
    WaitFixedTimeFrames(1);
    if (!EventFlag(flag_EclipseActive)) {
        SetMapCeremony(31, 0, 20); // Dusk
    } else {

        // Sirris's Version of Undead Settlement + Eclipse
L2:
        SetMapCeremony(31, 0, 30); // Night
        Goto(L3);
    }

L3:
    WaitFor(
        !PlayerInMap(30, 0) && !PlayerInMap(30, 1) && !PlayerInMap(34, 1) && !PlayerInMap(40, 0));

    RestartEvent();
});

//----------------------------------------------
// Game Progress Flag
//----------------------------------------------
$Event(6100, Default, function(X0_4, X4_4) {
    EndIf(ThisEventSlot());

    WaitFor(EventFlag(X4_4) && !PlayerIsNotInOwnWorld());

    SetEventFlag(X0_4, ON);
});

//----------------------------------------------
// Flag Setup 
//----------------------------------------------
// ClassType enum:
// 0 - Deprived
// 1 - Knight
// 2 - Thief
// 3 - Sentinel
// 4 - Mercenary
// 5 - Wayfarer
// 6 - Assassin
// 7 - Samurai
// 8 - Warrior
// 9 - Bandit
// 10 - Soldier
// 11 - Acolyte
// 12 - Herald
// 13 - Captain
// 14 - Peasant
// 15 - Explorer
// 16 - Brawler
// 17 - Hunter
// 18 - Sorcerer
// 19 - Pyromancer
// 20 - Cleric
// 21 - Priest
// 22 - Heretic
// 23 - Outcast
// 24 - Skeptic
// 25 - Paladin
// 26 - Jester
// 27 - Summoner
// 99 - Accursed
$Event(700, Default, function() {
    EndIf(ThisEventSlot());

    SetCharacterRemainingYoelLevels(5);

    SetEventFlag(50006020, ON); // Firelink Shrine Music - Eyes of a Fire Keeper turns this OFF 
    SetEventFlag(9215, ON); // Firelink Shrine - Lit    

    SetEventFlag(70000125, ON);
    SetEventFlag(70000128, ON);
    SetEventFlag(70000129, ON);

    if (PlayersClass(18)) {
        SetEventFlag(74000587, ON); // Is Sorcerer class
    }

    if (PlayersClass(19)) {
        SetEventFlag(74000465, ON); // Is Pyromancer class
    }

    SetEventFlag(50006162, ON); // Deep Braille Divine Tome
    SetEventFlag(50006163, ON); // Londor Braille Divine Tome
    SetEventFlag(73501010, ON); // Siegward - Armor Returned
    SetEventFlag(73501020, ON); // Siegward - Armor Returned
    SetEventFlag(73501030, ON); // Siegward - Armor Returned
    SetEventFlag(73501040, ON); // Siegward - Armor Returned
    SetEventFlag(73501050, ON); // Siegward - Armor Returned

    if (GameCycle() >= 1) {
        SetEventFlag(70000900, ON); // Is in NG+
    }

    // NG+ flags
    if (GameCycle() >= 6) {
        SetEventFlag(56, ON);
        EndEvent();
    }

    if (GameCycle() == 5) {
        SetEventFlag(55, ON);
        EndEvent();
    }

    if (GameCycle() == 4) {
        SetEventFlag(54, ON);
        EndEvent();
    }

    if (GameCycle() == 3) {
        SetEventFlag(53, ON);
        EndEvent();
    }

    if (GameCycle() == 2) {
        SetEventFlag(52, ON);
        EndEvent();
    }

    if (GameCycle() == 1) {
        SetEventFlag(51, ON);
        EndEvent();
    }

    SetEventFlag(50, ON);
    EndEvent();
});

//----------------------------------------------
// Unknown
//----------------------------------------------
$Event(701, Default, function() {
    SetEventFlag(6000, OFF);
    SetEventFlag(6001, ON);
});

//----------------------------------------------
// Unknown
//----------------------------------------------
$Event(702, Default, function() {
    EndIf(EventFlag(6600));
    WaitFor(EventFlag(6600));
    SetEventFlag(703, ON);
});

//----------------------------------------------
// World - Warp to Dancer
//----------------------------------------------
$Event(710, Default, function() {
    EndIf(PlayerIsNotInOwnWorld());
    EndIf(ThisEventSlot());

    EndIf(PlayerHasItem(ItemType.Goods, 2014)); // Grand Archives Key


    WaitFor(
        !PlayerIsNotInOwnWorld()
            && EventFlag(9314)
            && EventFlag(9318)
            && (InArea(10000, 3702890) || InArea(10000, 3902890))); // Aldrich // Yhorm // In Yhorm arena // In Aldrich arena

    SetSpEffect(10000, 4900);
    SetSpEffect(10000, 4901);

    GotoIf(L0, PlayerInMap(37, 0));
    GotoIf(L1, PlayerInMap(39, 0));
    Goto(L2);

    // In m37
L0:
    WaitFixedTimeSeconds(3);
    SetEventFlag(13700002, ON); // Aldrich bonfire
    GotoIf(S0, EventFlag(13000896) && !EventFlag(13000890)); // Dancer is alive // Emma is alive
    Goto(S0);
    Goto(L2);

    // In m39
S0:
L1:
    if (AnyBatchEventFlags(1388, 1389)) { // Siegward flags
        area = !InArea(10000, 3902890); // In Yhorm arena
        WaitFor(EventFlag(73900164) || EventFlag(1398) || area); // Siegward - Yhorm stage // Siegward dead
        GotoIf(L20, area.Passed);
    }

L19:
    WaitFixedTimeSeconds(3);

L20:
    GotoIf(S1, EventFlag(13000896) && !EventFlag(13000890)); // Dancer is alive // Emma is alive
    Goto(S1);
    Goto(L2);

S1:
L2:
    SetEventFlag(711, ON);
    WaitFixedTimeFrames(0);
    ClearSpEffect(10000, 4900);
    ClearSpEffect(10000, 4901);
    EndEvent();
});

//----------------------------------------------
// Reset Camera
//----------------------------------------------
$Event(740, Default, function() {
    SetNetworkSyncState(Disabled);
    ChangeCamera(-1, -1);
});

//----------------------------------------------
// World - Untended Graves - Area Welcome Message Handler
//----------------------------------------------
$Event(741, Default, function() {
    SetEventFlag(74000013, OFF); // In Bonfire Menu

    WaitFor(!(PlayerInMap(40, 0) && MapCeremony(40, 0, 10)));

    SetEventFlag(743, ON);

    WaitFor(PlayerInMap(40, 0) && MapCeremony(40, 0, 10) && !PlayerStandingOnHit(4004120));
    RestartEvent();
});

//----------------------------------------------
// Boss Kill - Award Items
//----------------------------------------------
$Event(970, Default, function(X0_4, X4_4, X8_4, X12_4) {
    EndIf(EventFlag(X0_4));

    WaitFor(EventFlag(X0_4));
    if (X4_4 != 0) {
        AwardItemsIncludingClients(X4_4);
    }

    SetNetworkSyncState(Disabled);

    WaitFixedTimeSeconds(5);

    if (X8_4 != 0) {
        AwardItemsIncludingClients(X8_4);
    }

    if (X12_4 != 0) {
        AwardItemsIncludingClients(X12_4);
    }
});

//----------------------------------------------
// Estus Flask - Maximum Count Monitor
//----------------------------------------------
$Event(6900, Default, function() {
    EndIf(PlayerIsNotInOwnWorld());
    EndIf(ThisEventSlot());
    EndIf(!PlayerHasItem(ItemType.Goods, 170) && !PlayerHasItem(ItemType.Goods, 171));
    SetEventFlag(6030, ON);
});

//----------------------------------------------
// NPC - Sirris
//----------------------------------------------
$Event(9510, Default, function() {
    EndIf(ThisEventSlot());
    EndIf(PlayerIsNotInOwnWorld());
    WaitFor(EventFlag(13500193) && EventFlag(8240));
    SetEventFlag(9510, ON);
});

//----------------------------------------------
// NPC - Kirk
//----------------------------------------------
$Event(9511, Default, function() {
    EndIf(ThisEventSlot());
    EndIf(PlayerIsNotInOwnWorld());
    WaitFor(EventFlag(13500194));
    SetEventFlag(9511, ON);
});

//----------------------------------------------
// NPC - Londor Pale Shade
//----------------------------------------------
$Event(9512, Default, function() {
    EndIf(ThisEventSlot());
    EndIf(PlayerIsNotInOwnWorld());
    WaitFor(EventFlag(13700194) && EventFlag(13300184));
    SetEventFlag(9512, ON);
});

//----------------------------------------------
// Yellowfinger Heysel - Award Gesture
//----------------------------------------------
$Event(9520, Restart, function(X0_4, X4_2, X8_4, X12_4) {
    const entity_YellowfingerHeysel = 3300194;

    EndIf(PlayerIsNotInOwnWorld());
    WaitFor(EventFlag(13304194));

    RequestCharacterAICommand(entity_YellowfingerHeysel, 99, 2);
    RequestCharacterAIReplan(entity_YellowfingerHeysel);

    WaitFor(CharacterHasSpEffect(entity_YellowfingerHeysel, X0_4));
    RequestCharacterAICommand(entity_YellowfingerHeysel, -1, 2);
    RequestCharacterAIReplan(entity_YellowfingerHeysel);

    EndIf(EventFlag(X12_4));
    AwardGestureItem(X4_2, ItemType.Goods, X8_4);
    SetEventFlag(X12_4, ON);
});

//----------------------------------------------
// Londor Pale Shade - Award Gesture
//----------------------------------------------
$Event(9525, Restart, function(X0_4, X4_2, X8_4, X12_4) {
    EndIf(PlayerIsNotInOwnWorld());
    WaitFor(EventFlag(13304195) || EventFlag(13704192) || EventFlag(14104190)); // Londor Pale Shade

    if (EventFlag(13304195)) {
        RequestCharacterAICommand(3300195, 99, 2);
        RequestCharacterAIReplan(3300195);
    }

    if (EventFlag(13704192)) {
        RequestCharacterAICommand(3700192, 99, 2);
        RequestCharacterAIReplan(3700192);
    }

    if (EventFlag(14104190)) {
        RequestCharacterAICommand(4100190, 99, 2);
        RequestCharacterAIReplan(4100190);
    }

    WaitFor(
        CharacterHasSpEffect(3300195, X0_4)
            || CharacterHasSpEffect(3700192, X0_4)
            || CharacterHasSpEffect(4100191, X0_4));

    if (EventFlag(13304195)) {
        RequestCharacterAICommand(3300195, -1, 2);
        RequestCharacterAIReplan(3300195);
    }

    if (EventFlag(13704192)) {
        RequestCharacterAICommand(3700192, -1, 2);
        RequestCharacterAIReplan(3700192);
    }

    if (EventFlag(14104191)) {
        RequestCharacterAICommand(4100190, -1, 2);
        RequestCharacterAIReplan(4100190);
    }

    EndIf(EventFlag(X12_4));
    AwardGestureItem(X4_2, ItemType.Goods, X8_4);
    SetEventFlag(X12_4, ON);
});

//----------------------------------------------
// Black Hand Gotthard - Award Gesture
//----------------------------------------------
$Event(9530, Restart, function(X0_4, X4_2, X8_4, X12_4) {
    EndIf(PlayerIsNotInOwnWorld());
    WaitFor(EventFlag(13304913) || EventFlag(13704191));

    if (EventFlag(13304913)) {
        RequestCharacterAICommand(3300193, 99, 2);
        RequestCharacterAIReplan(3300193);
    }

    if (EventFlag(13704191)) {
        RequestCharacterAICommand(3700191, 99, 2);
        RequestCharacterAIReplan(3700191);
    }

    WaitFor(CharacterHasSpEffect(3300193, X0_4) || CharacterHasSpEffect(3700191, X0_4));

    if (EventFlag(13304913)) {
        RequestCharacterAICommand(3300193, -1, 2);
        RequestCharacterAIReplan(3300193);
    }

    if (EventFlag(13704191)) {
        RequestCharacterAICommand(3700191, -1, 2);
        RequestCharacterAIReplan(3700191);
    }

    EndIf(EventFlag(X12_4));
    AwardGestureItem(X4_2, ItemType.Goods, X8_4);
    SetEventFlag(X12_4, ON);
});

//----------------------------------------------
// Knight Slayer Tsorig - Award Gesture
//----------------------------------------------
$Event(9540, Restart, function(X0_2, X4_4, X8_4) {
    EndIf(PlayerIsNotInOwnWorld());
    flagArea = EventFlag(13804196) && !EventFlag(13805196) && EntityInRadiusOfEntity(10000, 3800196, 20, 1);
    chrArea = CharacterAIState(3800198, AIStateType.Combat) && EntityInRadiusOfEntity(10000, 3800198, 20, 1);
    onlineHp = !PlayerIsNotInOwnWorld() && HPRatio(10000) <= 0;
    flagAreaChr = flagArea || chrArea;
    WaitFor(flagAreaChr && onlineHp);

    if (flagArea.Passed) {
        RequestCharacterAICommand(3800196, 99, 2);
        RequestCharacterAIReplan(3800196);
    }

    if (chrArea.Passed) {
        RequestCharacterAICommand(3800198, 99, 2);
        RequestCharacterAIReplan(3800198);
    }

    WaitFixedTimeSeconds(1);

    if (flagArea.Passed) {
        RequestCharacterAICommand(3800196, -1, 2);
        RequestCharacterAIReplan(3800196);
    }

    if (chrArea.Passed) {
        RequestCharacterAICommand(3800198, -1, 2);
        RequestCharacterAIReplan(3800198);
    }

    EndIf(EventFlag(X8_4));
    AwardGestureItem(X0_2, ItemType.Goods, X4_4);
    SetEventFlag(X8_4, ON);
});

//----------------------------------------------
// Special Covenant Item - Reward Covenant Material
//----------------------------------------------
$Event(9570, Restart, function(X0_4, X4_4) {
    SetNetworkSyncState(Disabled);
    WaitFor(CharacterHasSpEffect(10000, X4_4));
    AwardItemsIncludingClients(X0_4);
    WaitFixedTimeSeconds(1.5);
    RestartEvent();
});

//----------------------------------------------
// Sin System - NPC Sin monitor
//----------------------------------------------
$Event(9000, Default, function(X0_4, X4_4, X8_4, X12_4) {
    EndIf(PlayerIsNotInOwnWorld());
    SetEventFlag(X0_4, OFF);
    WaitFor(EventFlag(X4_4) || EventFlag(X8_4) || EventFlag(X12_4));
    SetEventFlag(X0_4, ON);
    WaitFor(!(EventFlag(X4_4) || EventFlag(X8_4) || EventFlag(X12_4)));
    RestartEvent();
});

//----------------------------------------------
// Sin System - Clear NPC Sin
//----------------------------------------------
$Event(9002, Default, function(X0_4) {
    EndIf(PlayerIsNotInOwnWorld());
    SetEventFlag(X0_4, OFF);
    WaitFor(EventFlag(X0_4));
    SetEventFlag(X0_4, OFF);
    SetEventFlag(70000050, ON);
    SetEventFlag(70000051, ON);
    SetEventFlag(70000052, ON);
    SetEventFlag(70000053, ON);
    SetEventFlag(70000054, ON);
    SetEventFlag(70000055, ON);
    SetEventFlag(70000056, ON);
    SetEventFlag(70000057, ON);
    SetEventFlag(70000058, ON);
    SetEventFlag(70000059, ON);
    SetEventFlag(70000060, ON);
    SetEventFlag(70000061, ON);
    SetEventFlag(70000062, ON);
    SetEventFlag(70000063, ON);
    SetEventFlag(70000064, ON);
    SetEventFlag(70000065, ON);
    SetEventFlag(70000066, ON);
    SetEventFlag(70000067, ON);
    SetEventFlag(70000068, ON);
    SetEventFlag(70000069, ON);
    SetEventFlag(70000070, ON);
    SetEventFlag(70000071, ON);
    SetEventFlag(70000072, ON);
    SetEventFlag(70000073, ON);
    SetEventFlag(70000074, ON);
    SetEventFlag(70000075, ON);
    SetEventFlag(70000076, ON);
    SetEventFlag(70000077, ON);
    SetEventFlag(70000078, ON);
    SetEventFlag(70000079, ON);
    SetEventFlag(70000080, ON);
    SetEventFlag(70000081, ON);
    SetEventFlag(70000082, ON);
    SetEventFlag(70000083, ON);
    SetEventFlag(70000084, ON);
    SetEventFlag(70000085, ON);
    SetEventFlag(70000086, ON);
    SetEventFlag(70000087, ON);
    SetEventFlag(70000088, ON);
    SetEventFlag(70000089, ON);
    SetEventFlag(70000090, ON);
    SetEventFlag(70000091, ON);
    SetEventFlag(70000092, ON);
    SetEventFlag(70000093, ON);
    SetEventFlag(70000094, ON);
    SetEventFlag(70000095, ON);
    SetEventFlag(70000096, ON);
    SetEventFlag(70000097, ON);
    SetEventFlag(70000098, ON);
    SetEventFlag(70000099, ON);
    SetEventFlag(70001073, ON);
    RestartEvent();
});

//----------------------------------------------
// Sin - Check Hostility
//----------------------------------------------
$Event(9004, Default, function(X0_4) {
    EndIf(PlayerIsNotInOwnWorld());
    SetEventFlag(X0_4, OFF);
    WaitFor(
        (EventFlag(1016) && !EventFlag(70000052))
            || (EventFlag(1036) && !EventFlag(70000053))
            || (EventFlag(1056) && !EventFlag(70000054))
            || (EventFlag(1076) && !EventFlag(70000055))
            || (EventFlag(1096) && !EventFlag(70000056))
            || (EventFlag(1116) && !EventFlag(70000057))
            || (EventFlag(1136) && !EventFlag(70000058))
            || (EventFlag(1156) && !EventFlag(70000059))
            || (EventFlag(1176) && !EventFlag(70000060))
            || (EventFlag(1196) && !EventFlag(70000061))
            || (EventFlag(1216) && !EventFlag(70000062))
            || (EventFlag(1236) && !EventFlag(70000063))
            || (EventFlag(1256) && !EventFlag(70000064))
            || (EventFlag(1276) && !EventFlag(70000065))
            || (EventFlag(1296) && !EventFlag(70000066)));
    ClearCompiledConditionGroupState(0);
    SetEventFlag(X0_4, ON);
    WaitFor(
        !((EventFlag(1016) && !EventFlag(70000052))
            || (EventFlag(1036) && !EventFlag(70000053))
            || (EventFlag(1056) && !EventFlag(70000054))
            || (EventFlag(1076) && !EventFlag(70000055))
            || (EventFlag(1096) && !EventFlag(70000056))
            || (EventFlag(1116) && !EventFlag(70000057))
            || (EventFlag(1136) && !EventFlag(70000058))
            || (EventFlag(1156) && !EventFlag(70000059))
            || (EventFlag(1176) && !EventFlag(70000060))
            || (EventFlag(1196) && !EventFlag(70000061))
            || (EventFlag(1216) && !EventFlag(70000062))
            || (EventFlag(1236) && !EventFlag(70000063))
            || (EventFlag(1256) && !EventFlag(70000064))
            || (EventFlag(1276) && !EventFlag(70000065))
            || (EventFlag(1296) && !EventFlag(70000066))));
    SetEventFlag(X0_4, OFF);
    RestartEvent();
});

//----------------------------------------------
// Sin - Check Hostility
//----------------------------------------------
$Event(9005, Default, function(X0_4) {
    EndIf(PlayerIsNotInOwnWorld());
    SetEventFlag(X0_4, OFF);
    WaitFor(
        (EventFlag(1316) && !EventFlag(70000067))
            || (EventFlag(1336) && !EventFlag(70000068))
            || (EventFlag(1356) && !EventFlag(70000069))
            || (EventFlag(1376) && !EventFlag(70000070))
            || (EventFlag(1396) && !EventFlag(70000071))
            || (EventFlag(1416) && !EventFlag(70000072))
            || (EventFlag(1436) && !EventFlag(70000073))
            || (EventFlag(1456) && !EventFlag(70000074))
            || (EventFlag(1476) && !EventFlag(70000075))
            || (EventFlag(1496) && !EventFlag(70000076))
            || (EventFlag(1516) && !EventFlag(70000077))
            || (EventFlag(1536) && !EventFlag(70000078))
            || (EventFlag(1556) && !EventFlag(70000079))
            || (EventFlag(1576) && !EventFlag(70000080))
            || (EventFlag(1596) && !EventFlag(70000081)));
    SetEventFlag(X0_4, ON);
    ClearCompiledConditionGroupState(0);
    WaitFor(
        !((EventFlag(1316) && !EventFlag(70000067))
            || (EventFlag(1336) && !EventFlag(70000068))
            || (EventFlag(1356) && !EventFlag(70000069))
            || (EventFlag(1376) && !EventFlag(70000070))
            || (EventFlag(1396) && !EventFlag(70000071))
            || (EventFlag(1416) && !EventFlag(70000072))
            || (EventFlag(1436) && !EventFlag(70000073))
            || (EventFlag(1456) && !EventFlag(70000074))
            || (EventFlag(1476) && !EventFlag(70000075))
            || (EventFlag(1496) && !EventFlag(70000076))
            || (EventFlag(1516) && !EventFlag(70000077))
            || (EventFlag(1536) && !EventFlag(70000078))
            || (EventFlag(1556) && !EventFlag(70000079))
            || (EventFlag(1576) && !EventFlag(70000080))
            || (EventFlag(1596) && !EventFlag(70000081))));
    SetEventFlag(X0_4, OFF);
    RestartEvent();
});

//----------------------------------------------
// Sin - Check Hostility
//----------------------------------------------
$Event(9006, Default, function(X0_4) {
    EndIf(PlayerIsNotInOwnWorld());
    SetEventFlag(X0_4, OFF);
    WaitFor(EventFlag(1816) && !EventFlag(70001073));
    SetEventFlag(X0_4, ON);
    ClearCompiledConditionGroupState(0);
    WaitFor(!(EventFlag(1816) && !EventFlag(70001073)));
    SetEventFlag(X0_4, OFF);
    RestartEvent();
});

//----------------------------------------------
// Sin - Shrine Handmaid Price Increase
//----------------------------------------------
$Event(9010, Default, function() {
    EndIf(PlayerIsNotInOwnWorld());
    WaitFor(EventFlag(70000061));
    if (EventFlag(74000295)) {
        SetEventFlag(74000295, OFF);
    } else if (EventFlag(74000294)) {
        SetEventFlag(74000294, OFF);
    } else if (EventFlag(74000293)) {
        SetEventFlag(74000293, OFF);
    } else if (EventFlag(74000292)) {
        SetEventFlag(74000292, OFF);
    } else if (EventFlag(74000291)) {
        SetEventFlag(74000291, OFF);
    } else if (EventFlag(74000290)) {
        SetEventFlag(74000290, OFF);
        BatchSetNetworkconnectedEventFlags(1195, 1199, OFF);
        SetNetworkconnectedEventFlag(1195, ON);
        Goto(L20);
    }
L20:
    SetEventFlag(70000061, OFF);
    RestartEvent();
});

//----------------------------------------------
// Fire Keeper - Eyes of a Fire Keeper Dialogue
//----------------------------------------------
$Event(9011, Default, function() {
    EndIf(PlayerIsNotInOwnWorld());
    WaitFor(EventFlag(700) && !EventFlag(50006020)); // Eyes of a Fire Keeper turned in

    if (!EventFlag(14000110)) { // Flameless Shrine cutscene
        if (!(EventFlag(9307) && EventFlag(9309) && EventFlag(9314) && EventFlag(9318))) { // Yhorm // Abyss Watchers // Twin Princes // Aldrich

            if (!EventFlag(9307)) { // Abyss Watchers
                flag |= EventFlag(9307); // Abyss Watchers
            }
            if (!EventFlag(9309)) { // Twin Princes
                flag |= EventFlag(9309); // Twin Princes
            }
            if (!EventFlag(9314)) { // Aldrich
                flag |= EventFlag(9314); // Aldrich
            }
            if (!EventFlag(9318)) { // Yhorm
                flag |= EventFlag(9318); // Yhorm
            }
        } else {

L0:
            flag |= EventFlag(14000110); // Flameless Shrine cutscene
            Goto(L1);
        }
    }

L1:
    flag2 = EventFlag(50006020); // Eyes of a Fire Keeper turned in
    flag |= flag2;
    WaitFor(flag);

    if (flag2.Passed) {
        SetEventFlag(74000132, OFF);
        RestartEvent();
    }

    SetEventFlag(74000132, ON);
    RestartEvent();
});

//----------------------------------------------
// Player - Set Gender Flag
//----------------------------------------------
$Event(9012, Default, function() {
    WaitFor(PlayerGender(Gender.Male));
    SetNetworkconnectedEventFlag(9013, ON);

    WaitFor(PlayerGender(Gender.Female));
    SetNetworkconnectedEventFlag(9013, OFF);

    RestartEvent();
});

//----------------------------------------------
// Hawkwood - Twinkling Dragon Torso Stone
//----------------------------------------------
$Event(9014, Restart, function() {
    EndIf(PlayerIsNotInOwnWorld());
    if (!EventFlag(9014)) {
        if (EventFlag(13300761)) {
            DisplayGenericDialog(13007000, PromptType.OKCANCEL, NumberofOptions.OneButton, 10000, 0);
            EndEvent();
        }
    }

L0:
    WaitFor(EventFlag(9014));
    SetEventFlag(9014, ON);
});

//----------------------------------------------
// Unknown
//----------------------------------------------
$Event(9015, Default, function() {
    EndIf(PlayerIsNotInOwnWorld());
    EndIf(EventFlag(70000118));
    WaitFor((EventFlag(1124) || EventFlag(1126)) && EventFlag(9303) && EventFlag(9314)); // Aldrich // Curse-Rotted Greatwood

    SetEventFlag(70000118, ON);
});

//----------------------------------------------
// Player - Cleric Check
//----------------------------------------------
$Event(9016, Restart, function() {
    EndIf(PlayerIsNotInOwnWorld());
    SetEventFlag(9017, OFF);

    WaitFor(PlayersClass(ClassType.TempWarrior));

    SetEventFlag(9017, ON);

    WaitFor(!PlayersClass(ClassType.TempWarrior));

    RestartEvent();
});

//----------------------------------------------
// Hawkwood - Dialogue Flag
//----------------------------------------------
$Event(9018, Restart, function() {
    EndIf(PlayerIsNotInOwnWorld());
    EndIf(EventFlag(73300202));

    WaitFor(EventFlag(13204190) || EventFlag(13005710)); // Summon in m30 // Summon in m32

    SetEventFlag(73300202, ON);
});

//----------------------------------------------
// Eygon - Dialogue Flag
//----------------------------------------------
$Event(9019, Restart, function() {
    EndIf(PlayerIsNotInOwnWorld());
    EndIf(EventFlag(74000669));

    WaitFor(EventFlag(13304192) || EventFlag(13014192)); // Summon in m30_1 // Summon in m33

    SetEventFlag(74000669, ON);
});

//----------------------------------------------
// 
//----------------------------------------------
$Event(9020, Default, function(X0_4, X4_4, X8_4, X12_4, X16_1, X17_1) {
    EndIf(PlayerIsNotInOwnWorld());
    EndIf(AnyBatchEventFlags(X4_4, X8_4));

    SetEventFlag(X0_4, OFF);

    WaitFor(EventFlag(X12_4) && (!PlayerInMap(X16_1, X17_1) || EventFlag(74000013)));

    SetEventFlag(X0_4, ON);

    WaitFor(!(EventFlag(X12_4) && (!PlayerInMap(X16_1, X17_1) || EventFlag(74000013))));

    RestartEvent();
});

//----------------------------------------------
// Hawkwood - Flag Check
//----------------------------------------------
$Event(9100, Default, function(X0_4) {
    EndIf(PlayerIsNotInOwnWorld());
    SetEventFlag(X0_4, OFF);
    WaitFor(EventFlag(1103));
    SetEventFlag(X0_4, ON);
    WaitFor(!EventFlag(1103));
    RestartEvent();
});

//----------------------------------------------
// Sirris - Flags
//----------------------------------------------
$Event(9101, Default, function(X0_4) {
    EndIf(PlayerIsNotInOwnWorld());
    SetEventFlag(X0_4, OFF);
    WaitFor(PlayerInMap(34, 1) || PlayerInMap(30, 1) || PlayerInMap(33, 0) || PlayerInMap(35, 0));
    GotoIf(L0, PlayerInMap(34, 1));
    GotoIf(L1, PlayerInMap(30, 1));
    GotoIf(L2, PlayerInMap(33, 0));
    GotoIf(L3, PlayerInMap(35, 0));
L0:
    if (EventFlag(1128) && !EventFlag(73500150)) {
        SetEventFlag(X0_4, ON);
    }
    WaitFor(!PlayerInMap(34, 1));
    RestartEvent();
L1:
    if (EventFlag(1128) && !EventFlag(73500150)) {
        SetEventFlag(X0_4, ON);
    }
    WaitFor(!PlayerInMap(30, 1));
    RestartEvent();
L2:
    if ((EventFlag(1124) || EventFlag(1126) || EventFlag(1128)) && !EventFlag(73500150)) {
        SetEventFlag(X0_4, ON);
    }
    WaitFor(!PlayerInMap(33, 0));
    RestartEvent();
L3:
    if ((EventFlag(1124) || EventFlag(1126) || EventFlag(1128)) && !EventFlag(73500150)) {
        SetEventFlag(X0_4, ON);
    }
    WaitFor(!PlayerInMap(35, 0));
    RestartEvent();
});

//----------------------------------------------
// Greirat - Quest Stage flags
//----------------------------------------------
$Event(9102, Default, function(X0_4) {
    EndIf(PlayerIsNotInOwnWorld());
    SetEventFlag(X0_4, OFF);
    WaitFor(PlayerInMap(31, 0) || PlayerInMap(37, 0)); // Irithyll // Undead Settlement
    GotoIf(L0, PlayerInMap(31, 0));
    GotoIf(L1, PlayerInMap(37, 0));

    // Undead Settlement
L0:
    if (EventFlag(1202)) {
        SetEventFlag(X0_4, ON);
    }
    WaitFor(!PlayerInMap(31, 0));
    RestartEvent();

    // Irithyll
L1:
    if (EventFlag(1204)) {
        SetEventFlag(X0_4, ON);
    }
    WaitFor(!PlayerInMap(37, 0));
    RestartEvent();
});

//----------------------------------------------
// Orbeck - Flags
//----------------------------------------------
$Event(9103, Default, function(X0_4) {
    RestartIf(PlayerIsNotInOwnWorld());
    SetEventFlag(X0_4, OFF);
    WaitFor(EventFlag(1223));
    SetEventFlag(X0_4, ON);
    WaitFor(!EventFlag(1223));
    RestartEvent();
});

//----------------------------------------------
// Irina/Eygon - Flags
//----------------------------------------------
$Event(9104, Default, function(X0_4) {
    EndIf(PlayerIsNotInOwnWorld());
    SetEventFlag(X0_4, OFF);
    WaitFor(
        (EventFlag(1301) || EventFlag(1303))
            && EventFlag(1295)
            && !EventFlag(73101710)
            && !EventFlag(73101720)
            && !EventFlag(73101730)
            && !EventFlag(73101740)
            && !EventFlag(73101750));
    SetEventFlag(X0_4, ON);
    WaitFor(
        !((EventFlag(1301) || EventFlag(1303))
            && EventFlag(1295)
            && !EventFlag(73101710)
            && !EventFlag(73101720)
            && !EventFlag(73101730)
            && !EventFlag(73101740)
            && !EventFlag(73101750)));
    RestartEvent();
});

//----------------------------------------------
// Anri - Flags
//----------------------------------------------
$Event(9105, Default, function(X0_4, X4_4, X8_4) {
    EndIf(PlayerIsNotInOwnWorld());
    SetEventFlag(X0_4, OFF);
    SetEventFlag(X4_4, OFF);
    SetEventFlag(X8_4, OFF);
    WaitFor(EventFlag(1341) && !EventFlag(9311)); // Deacons of the Deep
    if (EventFlag(9013)) {
        SetEventFlag(X0_4, ON);
    } else {
L10:
        SetEventFlag(X4_4, ON);
        Goto(L20);
    }
L20:
    SetEventFlag(X8_4, ON);
    WaitFor(!(EventFlag(1341) && !EventFlag(9311)));
    RestartEvent();
});

//----------------------------------------------
// Sirris - Flags
//----------------------------------------------
$Event(9106, Restart, function(X0_4) {
    EndIf(PlayerIsNotInOwnWorld());
    SetEventFlag(X0_4, OFF);
    WaitFor(EventFlag(1130) && !EventFlag(1138));
    SetEventFlag(X0_4, ON);
    WaitFor(!(EventFlag(1130) && !EventFlag(1138)));
    RestartEvent();
});

//----------------------------------------------
// Yuria - Flags
//----------------------------------------------
$Event(9107, Default, function(X0_4) {
    EndIf(PlayerIsNotInOwnWorld());
    SetEventFlag(X0_4, OFF);
    WaitFor(EventFlag(1042) && EventFlag(1055));
    SetEventFlag(X0_4, ON);
    WaitFor(!(EventFlag(1042) && EventFlag(1055)));
    RestartEvent();
});

//----------------------------------------------
// Yuria - Flags
//----------------------------------------------
$Event(9108, Default, function(X0_4) {
    EndIf(PlayerIsNotInOwnWorld());
    SetEventFlag(X0_4, OFF);
    WaitFor(AnyBatchEventFlags(1041, 1042) && EventFlag(1055));
    SetEventFlag(X0_4, ON);
    WaitFor(!(AnyBatchEventFlags(1041, 1042) && EventFlag(1055)));
    RestartEvent();
});

//----------------------------------------------
// Yuria - Flags
//----------------------------------------------
$Event(9109, Default, function(X0_4) {
    EndIf(PlayerIsNotInOwnWorld());
    SetEventFlag(X0_4, OFF);
    WaitFor(EventFlag(1042) && EventFlag(1055));
    SetEventFlag(X0_4, ON);
    WaitFor(!(EventFlag(1042) && EventFlag(1055)));
    RestartEvent();
});

//----------------------------------------------
// Yuria - Flags
//----------------------------------------------
$Event(9110, Default, function(X0_4) {
    EndIf(PlayerIsNotInOwnWorld());
    SetEventFlag(X0_4, OFF);
    WaitFor(
        (AnyBatchEventFlags(1041, 1042) && (EventFlag(1058) || EventFlag(1056)))
            || AnyBatchEventFlags(1043, 1044));
    SetEventFlag(X0_4, ON);
    WaitFor(
        !((AnyBatchEventFlags(1041, 1042) && (EventFlag(1058) || EventFlag(1056)))
            || AnyBatchEventFlags(1043, 1044)));
    RestartEvent();
});

//----------------------------------------------
// Anri - Flags
//----------------------------------------------
$Event(9111, Default, function(X0_4, X4_4) {
    EndIf(PlayerIsNotInOwnWorld());
    SetEventFlag(X0_4, OFF);
    SetEventFlag(X4_4, OFF);
    WaitFor(EventFlag(1347) && EventFlag(1355) && EventFlag(13700651));
    if (EventFlag(9013)) {
        SetEventFlag(X0_4, ON);
    } else {
L10:
        SetEventFlag(X4_4, ON);
        Goto(L20);
    }
L20:
    WaitFor(!(EventFlag(1347) && EventFlag(1355) && EventFlag(13700651)));
    RestartEvent();
});

//----------------------------------------------
//
//----------------------------------------------
$Event(9112, Default, function(X0_4) {
    EndIf(PlayerIsNotInOwnWorld());
    SetEventFlag(X0_4, OFF);
    WaitFor(EventFlag(8200));
    SetEventFlag(X0_4, ON);
    WaitFor(!EventFlag(8200));
    RestartEvent();
});

//----------------------------------------------
// Lapp - Flags
//----------------------------------------------
$Event(9113, Default, function(X0_4) {
    EndIf(PlayerIsNotInOwnWorld());
    SetEventFlag(X0_4, OFF);
    WaitFor(
        (PlayerInMap(50, 0) && AnyBatchEventFlags(1803, 1804))
            || (PlayerInMap(51, 0) && EventFlag(1811))
            || (PlayerInMap(51, 1) && EventFlag(1811)));
    SetEventFlag(X0_4, ON);
    WaitFor(
        !((PlayerInMap(50, 0) && AnyBatchEventFlags(1803, 1804))
            || (PlayerInMap(51, 0) && EventFlag(1811))
            || (PlayerInMap(51, 1) && EventFlag(1811))));
    RestartEvent();
});

//----------------------------------------------
// Shira - Flags
//----------------------------------------------
$Event(9114, Default, function(X0_4) {
    EndIf(PlayerIsNotInOwnWorld());
    SetEventFlag(X0_4, OFF);
    WaitFor(EventFlag(1821));
    SetEventFlag(X0_4, ON);
    WaitFor(!EventFlag(1821));
    RestartEvent();
});

//----------------------------------------------
// Boss Kill Count Tracker
// <trigger flag>, <end flag>, <set flag>, <bits>, <bits>, <threshold>, <compare value>
//----------------------------------------------
$Event(9120, Restart, function(X0_4, X4_4, X8_4, X12_4, X16_1, X20_4, X24_4) {
    EndIf(PlayerIsNotInOwnWorld());
    EndIf(EventFlag(X4_4));

    WaitFor(!MapCeremony(40, 0, 0) && EventFlag(X0_4));

    // Check bosses
    flag |= !EventFlag(X0_4);
    if (!EventFlag(9300)) {
        flag |= EventFlag(9300);
    }
    if (!EventFlag(9301)) {
        flag |= EventFlag(9301);
    }
    if (!EventFlag(9302)) {
        flag |= EventFlag(9302);
    }
    if (!EventFlag(9303)) {
        flag |= EventFlag(9303);
    }
    if (!EventFlag(9304)) {
        flag |= EventFlag(9304);
    }
    if (!EventFlag(9305)) {
        flag |= EventFlag(9305);
    }
    if (!EventFlag(9306)) {
        flag |= EventFlag(9306);
    }
    if (!EventFlag(9307)) {
        flag |= EventFlag(9307);
    }
    if (!EventFlag(9308)) {
        flag |= EventFlag(9308);
    }
    if (!EventFlag(9309)) {
        flag |= EventFlag(9309);
    }
    if (!EventFlag(9311)) {
        flag |= EventFlag(9311);
    }
    if (!EventFlag(9313)) {
        flag |= EventFlag(9313);
    }
    if (!EventFlag(9314)) {
        flag |= EventFlag(9314);
    }
    if (!EventFlag(9315)) {
        flag |= EventFlag(9315);
    }
    if (!EventFlag(9317)) {
        flag |= EventFlag(9317);
    }
    if (!EventFlag(9318)) {
        flag |= EventFlag(9318);
    }
    if (!EventFlag(9319)) {
        flag |= EventFlag(9319);
    }
    if (!EventFlag(9320)) {
        flag |= EventFlag(9320);
    }
    if (!EventFlag(9321)) {
        flag |= EventFlag(9321);
    }
    if (!EventFlag(9322)) {
        flag |= EventFlag(9322);
    }
    if (!EventFlag(9323)) {
        flag |= EventFlag(9323);
    }
    if (!EventFlag(9324)) {
        flag |= EventFlag(9324);
    }
    if (!EventFlag(9325)) {
        flag |= EventFlag(9325);
    }
    if (!EventFlag(9326)) {
        flag |= EventFlag(9326);
    }
    if (!EventFlag(9327)) {
        flag |= EventFlag(9327);
    }
    if (X24_4 == 1) {

        flag2 &= AllBatchEventFlags(9300, 9309)
            && EventFlag(9311)
            && AllBatchEventFlags(9313, 9315)
            && AllBatchEventFlags(9317, 9321);

        // DLC 1
        if (EventFlag(6951)) {
            flag2 &= AllBatchEventFlags(9322, 9323);
        }

        // DLC 2
        if (EventFlag(6952)) {
            flag2 &= AllBatchEventFlags(9324, 9327);
        }

        flag |= flag2;
    }

L0:
    WaitFor(flag);
    RestartIf(!EventFlag(X0_4));
    IncrementEventValue(X8_4, X12_4, X20_4);
    RestartIf(EventValue(X8_4, X16_1) != X20_4);
    SetEventFlag(X4_4, ON);
});

//----------------------------------------------
//
//----------------------------------------------
$Event(690, Default, function(X0_4, X4_4, X8_4, X12_4) {
    if (!ThisEventSlot()) {
        WaitFor(EventFlag(X12_4));
    }
    if (!EventFlag(2)) {
        flag |= EventFlag(2);
    }
    if (!EventFlag(3)) {
        flag |= EventFlag(3);
    }
    if (!EventFlag(4)) {
        flag |= EventFlag(4);
    }
    if (!EventFlag(5)) {
        flag |= EventFlag(5);
    }
    if (!EventFlag(6)) {
        flag |= EventFlag(6);
    }
    if (!EventFlag(7)) {
        flag |= EventFlag(7);
    }
    if (!EventFlag(8)) {
        flag |= EventFlag(8);
    }
    if (!EventFlag(9)) {
        flag |= EventFlag(9);
    }
    if (!EventFlag(10)) {
        flag |= EventFlag(10);
    }
    if (!EventFlag(11)) {
        flag |= EventFlag(11);
    }
    if (!EventFlag(12)) {
        flag |= EventFlag(12);
    }
    if (!EventFlag(13)) {
        flag |= EventFlag(13);
    }
    if (!EventFlag(14)) {
        flag |= EventFlag(14);
    }
    if (!EventFlag(15)) {
        flag |= EventFlag(15);
    }
    WaitFor(flag);
    IncrementEventValue(X0_4, X4_4, X8_4);
    RestartEvent();
});

$Event(840, Default, function(X0_4, X4_4, X8_4, X12_4) {
    SetEventFlag(X0_4, OFF);
    WaitFor(EventFlag(X0_4));
    if (!EventFlag(844)) {
        if (!EventFlag(847)) {
            RotateCharacter(10000, X8_4, -1, false);
        }
    }
    ForceAnimationPlayback(10000, X4_4, false, false, false, 0, 1);
    WaitFixedTimeSeconds(1);
    PlaySE(10000, SoundType.s_SFX, 123456789);
    WaitFixedTimeSeconds(4);
    if (X12_4 != -1) {
        ForceAnimationPlayback(10000, X12_4, true, false, false, 0, 1);
    }
    RestartEvent();
});

$Event(870, Default, function(X0_1, X4_4) {
    WaitFor(PlayersCovenant(X0_1));
    SetEventFlag(X4_4, ON);
    WaitFor(!PlayersCovenant(X0_1));
    SetEventFlag(X4_4, OFF);
    RestartEvent();
});

// Darksign - Warp to World's End
$Event(10000, Default, function(X0_1, X4_4) {
    WaitFor(CharacterHasSpEffect(10000, 3227, ComparisonType.Equal, 1));
    
    // Deathless Prison
    if(EventFlag(25000132))
    {
        WarpPlayer(51, 1, 5110975);
        SetPlayerRespawnPoint(5112955);
        EndEvent();
    }
    
    // Normal
    if(EventFlag(25000100))
    {
        WarpPlayer(51, 1, 5110970);
        SetPlayerRespawnPoint(5112950);
    }
    else // Game Start
    {
        WarpPlayer(51, 1, 5110973);
        SetPlayerRespawnPoint(5112953);
    }
});

// Effect: Player
$Event(10001, Default, function() {
    // Hollow
    if(EventFlag(25000101))
    {
        SetSpEffect(10000, 200100000);
    }
    
    // Explorer
    if(EventFlag(25000102))
    {
        SetSpEffect(10000, 200101000);
    }
    
    // Conqueror
    if(EventFlag(25000103))
    {
        SetSpEffect(10000, 200102000);
    }
    
    // Accursed
    if(EventFlag(25000104))
    {
        SetSpEffect(10000, 200103000);
    }
});

// Effect: Enemy
$Event(10002, Default, function() {
    // Hollow
    if(EventFlag(25000101))
    {
    }
    
    // Explorer
    if(EventFlag(25000102))
    {
    }
    
    // Conqueror
    if(EventFlag(25000103))
    {
        SetSpEffect(3605800, 200102010);
    }
    
    // Accursed
    if(EventFlag(25000104))
    {
        SetSpEffect(3605800, 200103010);
    }
    
    // Loops so generated enemies are given the SpEffects.
    WaitFixedTimeSeconds(1.0);
    
    RestartEvent();
});

// Slave Knight Gael - Warp
$Event(10004, Default, function() {
    WaitFor(EventFlag(25000122));
    
    SetEventFlag(25000122, OFF);

    WarpPlayer(51, 1, 5110974);
});

// Slave Knight Gael - Unlock Boss Fight
$Event(10005, Default, function() {
    WaitFor(EventFlag(9300)); // Dancer
    WaitFor(EventFlag(9301)); // Vordt
    WaitFor(EventFlag(9302)); // Oceiros
    WaitFor(EventFlag(9303)); // Curse-rotted Greatwood
    WaitFor(EventFlag(9304)); // Nameless King
    WaitFor(EventFlag(9305)); // Ancient Wyvern
    WaitFor(EventFlag(9306)); // Crystal Sage
    WaitFor(EventFlag(9307)); // Abyss Watchers
    WaitFor(EventFlag(9308)); // Dragonslayer Armour
    WaitFor(EventFlag(9309)); // Twin Princes
    WaitFor(EventFlag(9311)); // Deacons of the Deep
    WaitFor(EventFlag(9313)); // Pontiff Sulyvahn
    WaitFor(EventFlag(9314)); // Aldrich
    WaitFor(EventFlag(9315)); // Wolnir
    WaitFor(EventFlag(9317)); // Old Demon King
    WaitFor(EventFlag(9318)); // Yhorm
    WaitFor(EventFlag(9319)); // Champion Gundyr
    WaitFor(EventFlag(9321)); // Soul of Cinder
    WaitFor(EventFlag(9322)); // Sister Fride
    WaitFor(EventFlag(9324)); // Demon Prince
    WaitFor(EventFlag(9325)); // Halflight
    WaitFor(EventFlag(9326)); // Midir
    WaitFor(EventFlag(9323)); // Lordran Remnants
    WaitFor(EventFlag(9328)); // Prince Dorthinus
    WaitFor(EventFlag(9341)); // Mirror Knight
    WaitFor(EventFlag(9342)); // Aborr
    WaitFor(EventFlag(9343)); // Princess Yngvil
    WaitFor(EventFlag(9344)); // Trio of Explorers
    WaitFor(EventFlag(9345)); // Twisted Knight
    WaitFor(EventFlag(9346)); // Fallen Protector
    WaitFor(EventFlag(9348)); // The Marauder
    
    DisplayEpitaphMessage(80020111);
    
    SetEventFlag(25000120, ON);
});

// Boss Teleport
$Event(10006, Restart, function(X0_4, X4_4, X8_4, X12_1, X16_1) {
    WaitFor(EventFlag(X0_4));
    SetEventFlag(X0_4, OFF);
    
    WaitFixedTimeSeconds(0.5);
    
    WarpPlayer(X12_1, X16_1, X4_4);
    SetPlayerRespawnPoint(X8_4);
});

// Boss Teleport - Gael
$Event(10007, Restart, function(X0_4, X4_4, X8_4, X12_1, X16_1) {
    WaitFor(EventFlag(X0_4));
    SetEventFlag(X0_4, OFF);
    SetEventFlag(25000121, ON);
    
    WaitFixedTimeSeconds(0.5);
    
    WarpPlayer(X12_1, X16_1, X4_4);
    SetPlayerRespawnPoint(X8_4);
});

// Tome Unlock
$Event(10010, Default, function(X0_4, X4_4, X8_4) {
    WaitFor(CharacterHasSpEffect(10000, X0_4, ComparisonType.Equal, 1));
    
    RemoveItemFromPlayer(ItemType.Goods, X4_4, -99);
    AwardItemLot(X8_4);
});

// Ashes
$Event(10025, Default, function(X0_4, X4_4) {
    EndIf(EventFlag(X4_4));
    
    if(PlayerHasItem(ItemType.Goods, X0_4))
    {
        SetEventFlag(X4_4, ON);
    }
});

//--------------------------------------
// Castigations
//--------------------------------------
// Castigation - Player
$Event(14000, Restart, function() {
    // Abyssal Maw
    if(EventFlag(25000900))
    {
        SetSpEffect(10000, 200400000);
    }
    else
    {
        ClearSpEffect(10000, 200400000);
    }
    // Brittle Bones
    if(EventFlag(25000901))
    {
        SetSpEffect(10000, 200400100);
    }
    else
    {
        ClearSpEffect(10000, 200400100);
    }
    // Fresh Meat
    if(EventFlag(25000902))
    {
        SetSpEffect(10000, 200400200);
        SetSpEffect(10000, 200400201);
        SetSpEffect(10000, 200400202);
    }
    else
    {
        ClearSpEffect(10000, 200400200);
        ClearSpEffect(10000, 200400201);
        ClearSpEffect(10000, 200400202);
    }
    // Fading Flasks
    if(EventFlag(25000903))
    {
        SetSpEffect(10000, 200400300);
    }
    else
    {
        ClearSpEffect(10000, 200400300);
    }
    // Lethargic Mind
    if(EventFlag(25000904))
    {
        SetSpEffect(10000, 200400400);
    }
    else
    {
        ClearSpEffect(10000, 200400400);
    }
    
    WaitFixedTimeSeconds(1);
    
    RestartEvent();
});

// Castigation - Enemies
$Event(14010, Restart, function() {
    // Wounded Fury
    if(EventFlag(25000905))
    {
        SetSpEffect(3605800, 200410000);
    }
    else
    {
        ClearSpEffect(3605800, 200410000);
    }
    // Thick Hides
    if(EventFlag(25000906))
    {
        SetSpEffect(3605800, 200410100);
    }
    else
    {
        ClearSpEffect(3605800, 200410100);
    }
    // Stout Hearts
    if(EventFlag(25000907))
    {
        SetSpEffect(3605800, 200410200);
    }
    else
    {
        ClearSpEffect(3605800, 200410200);
    }
    // Regenerative Skin
    if(EventFlag(25000908))
    {
        SetSpEffect(3605800, 200410300);
    }
    else
    {
        ClearSpEffect(3605800, 200410300);
    }
    // Spectral Shift
    if(EventFlag(25000909))
    {
        SetSpEffect(3605800, 200410400);
    }
    else
    {
        ClearSpEffect(3605800, 200410400);
    }
    // Relentlessness
    if(EventFlag(25000910))
    {
        SetSpEffect(3605800, 200410500);
    }
    else
    {
        ClearSpEffect(3605800, 200410500);
    }
    // Alacrity
    if(EventFlag(25000911))
    {
        SetSpEffect(3605800, 200410600);
    }
    else
    {
        ClearSpEffect(3605800, 200410600);
    }
    
    WaitFixedTimeSeconds(1);
    
    RestartEvent();
});

// Castigation - Feeding Frenzy
$Event(14010, Restart, function() {
    
    if(!EventFlag(25000912))
    {
        ChangeCharacterEnableState(3605802, Disabled);
        SetCharacterAnimationState(3605802, Disabled);
        SetCharacterAIState(3605802, Disabled);
    }
    
    WaitFixedTimeSeconds(1);
    
    RestartEvent();
});

// Castigation - Reward
$Event(14020, Restart, function(X0_4, X4_4) {
    WaitFor(CharacterHasSpEffect(10000, 200000011, ComparisonType.Equal, 1));
    
    if(!CharacterHasSpEffect(10000, 200499999, ComparisonType.Equal, 1))
    {
        SetSpEffect(10000, 200499999);
        AwardItemLot(110);
    }
    
    WaitFixedTimeSeconds(1.0);
    
    RestartEvent();
});

// Covenants - Enemies
$Event(14030, Restart, function(X0_4, X4_4) {
    WaitFor(CharacterHasSpEffect(10000, X0_4));
    SetSpEffect(3605800, X4_4);

    WaitFor(!CharacterHasSpEffect(10000, X0_4));
    ClearSpEffect(3605800, X4_4);

    WaitFixedTimeSeconds(1.0);
    
    RestartEvent();
});

// Restriction - Flameless
$Event(15000, Restart, function() {
    EndIf(!EventFlag(25000140));
    
    SetSpEffect(10000, 200110000);
});

// Restriction - Deathless
$Event(15001, Restart, function() {
    EndIf(!EventFlag(25000141));
    
    SetSpEffect(10000, 200110100);
    
    WaitFor(CharacterHasSpEffect(10000, 112100, ComparisonType.Equal, 1));
    
    SetEventFlag(25000132, ON);
    WarpPlayer(51, 1, 5110975);
    SetPlayerRespawnPoint(5112955);
});

// Restriction - Hitless
$Event(15002, Restart, function() {
    EndIf(!EventFlag(25000142));
    
    SetSpEffect(10000, 200110200);
    
    WaitFor(CharacterHasSpEffect(10000, 112101, ComparisonType.Equal, 1));
    
    SetSpEffect(10000, 200110201);
});

//-------------------
// Accursed - Detriment System
//-------------------
$Event(12000, Restart, function() {
    EndIf(EventFlag(25000131)); // Accursed run completed
    EndIf(!EventFlag(25000104));
    
    // Grant new debuff item if the player dies
    WaitFor(CharacterHasSpEffect(10000, 113010, ComparisonType.Equal, 1));
    
    BatchSetEventFlags(20000900, 20000944, OFF);
    RandomlySetEventFlagInRange(20000900, 20000944, ON);
    
    InitializeEvent( 0, 12001, 20000900, 20000901, 20000400, 8000, 3000, 10); // HP Reduction
    InitializeEvent( 1, 12001, 20000901, 20000902, 20000410, 8001, 3010, 10); // FP Reduction
    InitializeEvent( 2, 12001, 20000902, 20000903, 20000420, 8002, 3020, 10); // Stamina Reduction
    InitializeEvent( 3, 12001, 20000903, 20000904, 20000430, 8003, 3030, 10); // Equipment Load Reduction
    InitializeEvent( 4, 12001, 20000904, 20000905, 20000440, 8004, 3040, 10); // HP Recovery Diminishment

    InitializeEvent( 5, 12001, 20000905, 20000906, 20000450, 8005, 3050, 10); // Vigor Loss
    InitializeEvent( 6, 12001, 20000906, 20000907, 20000460, 8006, 3060, 10); // Attunement Loss
    InitializeEvent( 7, 12001, 20000907, 20000908, 20000470, 8007, 3070, 10); // Vitality Loss
    InitializeEvent( 8, 12001, 20000908, 20000909, 20000480, 8008, 3080, 10); // Endurance Loss
    InitializeEvent( 9, 12001, 20000909, 20000910, 20000490, 8009, 3090, 10); // Strength Loss
    InitializeEvent(10, 12001, 20000910, 20000911, 20000100, 8010, 3100, 10); // Dexterity Loss
    InitializeEvent(11, 12001, 20000911, 20000912, 20000110, 8011, 3110, 10); // Intelligence Loss
    InitializeEvent(12, 12001, 20000912, 20000913, 20000120, 8012, 3120, 10); // Faith Loss
    InitializeEvent(12, 12001, 20000912, 20000913, 20000130, 8013, 3130, 10); // Luck Loss

    InitializeEvent(15, 12001, 20000915, 20000916, 20000140, 8014, 3140, 10); // Stamina Drain

    InitializeEvent(16, 12001, 20000916, 20000917, 20000150, 8015, 3150, 10); // Physical Weakness
    InitializeEvent(17, 12001, 20000917, 20000918, 20000160, 8016, 3160, 10); // Magic Weakness
    InitializeEvent(18, 12001, 20000918, 20000919, 20000170, 8017, 3170, 10); // Fire Weakness
    InitializeEvent(19, 12001, 20000919, 20000920, 20000180, 8018, 3180, 10); // Lightning Weakness
    InitializeEvent(20, 12001, 20000920, 20000921, 20000190, 8019, 3190, 10); // Dark Weakness

    InitializeEvent(21, 12001, 20000921, 20000922, 20000200, 8020, 3200, 10); // Slash Frailty
    InitializeEvent(22, 12001, 20000922, 20000923, 20000210, 8021, 3210, 10); // Strike Frailty
    InitializeEvent(23, 12001, 20000923, 20000924, 20000220, 8022, 3220, 10); // Thrust Frailty
    InitializeEvent(24, 12001, 20000924, 20000925, 20000230, 8023, 3230, 10); // Standard Frailty
    InitializeEvent(25, 12001, 20000925, 20000926, 20000240, 8024, 3240, 10); // Magic Frailty
    InitializeEvent(26, 12001, 20000926, 20000927, 20000250, 8025, 3250, 10); // Fire Frailty
    InitializeEvent(27, 12001, 20000927, 20000928, 20000260, 8026, 3260, 10); // Lightning Frailty
    InitializeEvent(28, 12001, 20000928, 20000929, 20000270, 8027, 3270, 10); // Dark Frailty
    InitializeEvent(29, 12001, 20000929, 20000930, 20000280, 8028, 3280, 10); // Poise Frailty

    InitializeEvent(30, 12001, 20000930, 20000931, 20000290, 8029, 3290, 10); // Poison Vulnerability
    InitializeEvent(31, 12001, 20000931, 20000932, 20000300, 8030, 3300, 10); // Bleed Vulnerability
    InitializeEvent(32, 12001, 20000932, 20000933, 20000310, 8031, 3310, 10); // Frost Vulnerability
    InitializeEvent(33, 12001, 20000933, 20000934, 20000320, 8032, 3320, 10); // Curse Vulnerability

    InitializeEvent(38, 12001, 20000938, 20000939, 20000330, 8033, 3330, 10); // Soul Drain
    InitializeEvent(39, 12001, 20000939, 20000940, 20000340, 8034, 3340, 10); // Skill Confusion
    InitializeEvent(40, 12001, 20000940, 20000941, 20000350, 8035, 3350, 10); // Sorcery Confusion
    InitializeEvent(41, 12001, 20000941, 20000942, 20000360, 8036, 3360, 10); // Pyromancy Confusion
    InitializeEvent(42, 12001, 20000942, 20000943, 20000370, 8037, 3370, 10); // Miracle Confusion
    InitializeEvent(43, 12001, 20000943, 20000944, 20000380, 8038, 3380, 10); // Clumsy Form
    InitializeEvent(44, 12001, 20000944, 20000944, 20000390, 8039, 3390, 10); // Tourist
});

// Accursed - Debuff Item
$Event(12001, Restart, function(X0_4, X4_4, X8_4, X12_4, X16_4, X20_4) {
    // This debuff has been selected
    if(EventFlag(X0_4))
    {
        StoreItemAmountHeldInEventValue(ItemType.Goods, X12_4, X8_4, 5); // Grab debuff item count
        if(EventValue(X8_4, 5) >= X20_4)
        {
            SetEventFlag(X4_4, ON); // Select the next debuff in the list if at the max for this debuff
        }
        else
        {
            AwardItemLot(X16_4); // Award debuff item
        }
    }
});

// Accursed - Apply Debuffs (10)
$Event(12010, Default, function(X0_4, X4_4, X8_4) {
    EndIf(EventFlag(25000131)); // Accursed run completed
    EndIf(!EventFlag(25000104));
    
    StoreItemAmountHeldInEventValue(ItemType.Goods, X0_4, X8_4, 5);
    
    // Apply upto 10 stacks
    if(EventValue(X8_4, 5) >= 1)
    {
        SetSpEffect(10000, X4_4);
    }
    if(EventValue(X8_4, 5) >= 2)
    {
        SetSpEffect(10000, X4_4);
    }
    if(EventValue(X8_4, 5) >= 3)
    {
        SetSpEffect(10000, X4_4);
    }
    if(EventValue(X8_4, 5) >= 4)
    {
        SetSpEffect(10000, X4_4);
    }
    if(EventValue(X8_4, 5) >= 5)
    {
        SetSpEffect(10000, X4_4);
    }
    if(EventValue(X8_4, 5) >= 6)
    {
        SetSpEffect(10000, X4_4);
    }
    if(EventValue(X8_4, 5) >= 7)
    {
        SetSpEffect(10000, X4_4);
    }
    if(EventValue(X8_4, 5) >= 8)
    {
        SetSpEffect(10000, X4_4);
    }
    if(EventValue(X8_4, 5) >= 9)
    {
        SetSpEffect(10000, X4_4);
    }
    if(EventValue(X8_4, 5) >= 10)
    {
        SetSpEffect(10000, X4_4);
    }
});

//------------------------------------------------
// Game Flags - Once
//------------------------------------------------
$Event(20001, Default, function(X0_4, X4_4) {
    EndIf(EventFlag(25000099));

    // Infusion availability
    SetEventFlag(300, ON);
    SetEventFlag(301, ON);
    SetEventFlag(302, ON);
    SetEventFlag(303, ON);

    // Game State
    SetEventFlag(25000030, ON); // Never Died
    SetEventFlag(25000031, ON); // Never Hit
    SetEventFlag(74000171, ON); // Enable Transposition
    SetEventFlag(14000101, ON); // Coiled Sword placed

    // No Perspective override set
    SetEventFlag(25007370, ON);

    SetEventFlag(25000099, ON); // Execution flag
});

//------------------------------------------------
// Game Flags - On Load
//------------------------------------------------
$Event(20002, Restart, function(X0_4, X4_4) {
    // Random Flag - Used for Flirt/Crow Drop Type
    BatchSetEventFlags(25008900, 25008902, OFF); // Reset
    RandomlySetEventFlagInRange(25008900, 25008902, ON); // Outcome

    // Memories
    SetEventFlag(14700000, ON);
    SetEventFlag(15300000, ON);
    SetEventFlag(15400000, ON);

    // Reset boss fight status flags used by Phantoms
    SetEventFlag(25001100, OFF);
    SetEventFlag(25001110, OFF);

    // Batch Flag Sets
    BatchSetEventFlags(25000011, 25000017, OFF); // Reset NG+ flags

    // Conditional Flag Sets
    WaitFor(GameCycle() >= 1);
    SetEventFlag(25000011, ON); // NG+1

    WaitFor(GameCycle() >= 2);
    SetEventFlag(25000012, ON); // NG+2

    WaitFor(GameCycle() >= 3);
    SetEventFlag(25000013, ON); // NG+3

    WaitFor(GameCycle() >= 4);
    SetEventFlag(25000014, ON); // NG+4

    WaitFor(GameCycle() >= 5);
    SetEventFlag(25000015, ON); // NG+5

    WaitFor(GameCycle() >= 6);
    SetEventFlag(25000016, ON); // NG+6

    WaitFor(GameCycle() >= 7);
    SetEventFlag(25000017, ON); // NG+7
});

//------------------------------------------------
// BB Dodge Toggle
//------------------------------------------------
$Event(20006, Restart, function() {
    SetNetworkSyncState(Disabled);

    // BB Dodge Toggle - Add SpEffect when enabled
    if (EventFlag(25009750)) { // Skip if BB Dodge is not activated
        if (!CharacterHasSpEffect(10000, 112414)) { // Skip if already applied
            SetSpEffect(10000, 112414);
        }
    }

    // BB Dodge Toggle - Clear SpEffect when disabled
    if (!EventFlag(25009750)) { // Skip if BB Dodge is activated
        if (CharacterHasSpEffect(10000, 112414)) { // Skip if not applied
            ClearSpEffect(10000, 112414);
        }
    }

    WaitFixedTimeSeconds(1.0);
    
    RestartEvent();
});


//------------------------------------------------
// Covenant Material Drops
//------------------------------------------------
$Event(20007, Default, function(X0_4, X4_4) {
    // No in drop cooldown, and enemy has been killed
    WaitFor(!CharacterHasSpEffect(10000, 160010010) && // Material Drop Cooldown
    CharacterHasSpEffect(10000, 200000011) && // Enemy Kill
    CharacterHasSpEffect(10000, 132002) && // Covenant Drop Allowed
    CharacterHasSpEffect(10000, X0_4)); // Covenant Equipped

    // Drop cooldown
    SetSpEffect(10000, 160010010);
    
    DisplayBanner(TextBannerType.BeginMatch);
    DirectlyGivePlayerItem(ItemType.Goods, X4_4, 6001, 1);
    
    RestartEvent();
});

//------------------------------------------------
// Thieves' Pact Drops
//------------------------------------------------
$Event(20008, Default, function() {
    // No in drop cooldown, and enemy has been killed
    WaitFor(!CharacterHasSpEffect(10000, 160010011) && // Consumable Drop cooldown
    CharacterHasSpEffect(10000, 200000011) && // Enemy Kill
    CharacterHasSpEffect(10000, 132002) && // Covenant Drop Allowed
    CharacterHasSpEffect(10000, 160100602));  // Thieves' Pact Covenant

    // Drop cooldown
    SetSpEffect(10000, 160010011);
    
    // Items
    if (CharacterHasSpEffect(10000, 132010)) {
        DirectlyGivePlayerItem(ItemType.Goods, 292, 6001, 1); // Firebomb
    }
    if (CharacterHasSpEffect(10000, 132011)) {
        DirectlyGivePlayerItem(ItemType.Goods, 297, 6001, 1); // Black Firebomb
    }
    if (CharacterHasSpEffect(10000, 132012)) {
        DirectlyGivePlayerItem(ItemType.Goods, 310, 6001, 1); // Throwing Knife
    }
    if (CharacterHasSpEffect(10000, 132013)) {
        DirectlyGivePlayerItem(ItemType.Goods, 293, 6001, 1); // Dung Pie
    }
    if (CharacterHasSpEffect(10000, 132014)) {
        DirectlyGivePlayerItem(ItemType.Goods, 296, 6001, 1); // Undead Hunter Charm
    }

    RestartEvent();
});

//------------------------------------------------
// Way of Blue Drops
//------------------------------------------------
$Event(20009, Default, function() {
    // No in drop cooldown, and enemy has been killed
    WaitFor(!CharacterHasSpEffect(10000, 160010011) && // Consumable Drop cooldown
    CharacterHasSpEffect(10000, 200000011) && // Enemy Kill
    CharacterHasSpEffect(10000, 132002) && // Covenant Drop Allowed
    CharacterHasSpEffect(10000, 160101402)); // Way of Blue Covenant
    
    // Drop cooldown
    SetSpEffect(10000, 160010011);
    
    // Items
    if (CharacterHasSpEffect(10000, 132010)) {
        DirectlyGivePlayerItem(ItemType.Goods, 240, 6001, 1); // Divine Blessing
    }
    if (CharacterHasSpEffect(10000, 132011)) {
        DirectlyGivePlayerItem(ItemType.Goods, 241, 6001, 1); // Hidden Blessing
    }
    if (CharacterHasSpEffect(10000, 132012)) {
        DirectlyGivePlayerItem(ItemType.Goods, 260, 6001, 1); // Green Blossom
    }
    if (CharacterHasSpEffect(10000, 132013)) {
        DirectlyGivePlayerItem(ItemType.Goods, 456, 6001, 1); // Siegbrau
    }
    if (CharacterHasSpEffect(10000, 132014)) {
        DirectlyGivePlayerItem(ItemType.Goods, 801, 6001, 1); // Radiant Lifegem
    }

    RestartEvent();
});

//------------------------------------------------
// Pyromancer's Parting Flame - Ascension
//------------------------------------------------
$Event(20042, Default, function() {
    SetNetworkSyncState(Disabled);

    WaitFor(CharacterHasSpEffect(10000, 130134100));

    SetSpEffect(10000, 130134101);
    SetSpEffect(10000, 130134110);

    WaitFor(!CharacterHasSpEffect(10000, 130134100));

    ClearSpEffect(10000, 130134101);
    ClearSpEffect(10000, 130134110);

    RestartEvent();
});

//------------------------------------------------
// Numbness - Change Camera
//------------------------------------------------
$Event(20043, Default, function(X0_4, X4_4) {
    SetNetworkSyncState(Disabled);

    WaitFor(CharacterHasSpEffect(X0_4, X4_4));
    ChangeCamera(20000, 20000);
L0:
    WaitFor(!CharacterHasSpEffect(X0_4, X4_4));
    ChangeCamera(-1, -1);
    RestartEvent();
});

//------------------------------------------------
// Item - Camera Override
// <trigger speffect>, <camera entry>
//------------------------------------------------
$Event(20045, Default, function(X0_4, X4_4) {
    SetNetworkSyncState(Disabled);

    // Add camera effect if trigger effect is present
    WaitFor(!CharacterHasSpEffect(10000, X0_4));
    ChangeCamera(X4_4, X4_4);

    // Remove if trigger effect has been removed
    WaitFor(CharacterHasSpEffect(10000, X0_4));
    ChangeCamera(-1, -1);

    RestartEvent();
});

//------------------------------------------------
// Frostbite Removal
//------------------------------------------------
$Event(20048, Restart, function() {
    SetNetworkSyncState(Disabled);

    WaitFor(
        CharacterHasSpEffect(10000, 3092)
            || CharacterHasSpEffect(10000, 3080)
            || CharacterHasSpEffect(10000, 103508000)); // If Player uses Caressing Tears // If Player uses Rime-blue Moss Clump // If Player uses Divine Blessing
    ClearSpEffect(10000, 180021000); // Clear Frostbite Effects
    WaitFixedTimeSeconds(0.5);
    RestartEvent();
});

//------------------------------------------------
// Crown of the Great Lord
//------------------------------------------------
$Event(20040, Default, function() {
    SetNetworkSyncState(Disabled);

    WaitFor(CharacterHasSpEffect(10000, 160409012) && CharacterHasSpEffect(10000, 490));

    SetSpEffect(10000, 160409013);

    WaitFor(!CharacterHasSpEffect(10000, 160409012) || !CharacterHasSpEffect(10000, 490));

    ClearSpEffect(10000, 160409013);

    RestartEvent();
});

//----------------------------------------------
// Clear Visual Transformations
//----------------------------------------------
$Event(20201, Default, function() {
    WaitFor(EventFlag(25007398));

    BatchSetEventFlags(25007100, 25007399, OFF);

    RestartEvent();
});

//----------------------------------------------
// Clear Armor Transformations
//----------------------------------------------
$Event(20202, Default, function() {
    WaitFor(EventFlag(25007399));

    BatchSetEventFlags(24007000, 24007999, OFF);

    SetEventFlag(25007399, OFF);

    RestartEvent();
});

//----------------------------------------------
// Clear Head Armor Transformations
//----------------------------------------------
$Event(20203, Default, function() {
    WaitFor(EventFlag(25007396));

    BatchSetEventFlags(24007000, 24007499, OFF);

    SetEventFlag(25007396, OFF);

    RestartEvent();
});

//----------------------------------------------
// Clear Body Armor Transformations
//----------------------------------------------
$Event(20204, Default, function() {
    WaitFor(EventFlag(25007397));

    BatchSetEventFlags(24007500, 24007999, OFF);

    SetEventFlag(25007397, OFF);

    RestartEvent();
});

//----------------------------------------------
// Weapon Emission - Monitor
//----------------------------------------------
$Event(20210, Default, function() {
    WaitFixedTimeSeconds(1.0);

    // Right
    // Magic
    if (EventFlag(25007100)) {
        SetSpEffect(10000, 160709010);
    }

    if (!EventFlag(25007100)) {
        ClearSpEffect(10000, 160709010);
    }

    // Fire
    if (EventFlag(25007101)) {
        SetSpEffect(10000, 160709020);
    }

    if (!EventFlag(25007101)) {
        ClearSpEffect(10000, 160709020);
    }

    // Lightning
    if (EventFlag(25007102)) {
        SetSpEffect(10000, 160709030);
    }

    if (!EventFlag(25007102)) {
        ClearSpEffect(10000, 160709030);
    }

    // Abyss
    if (EventFlag(25007103)) {
        SetSpEffect(10000, 160709040);
    }

    if (!EventFlag(25007103)) {
        ClearSpEffect(10000, 160709040);
    }

    // Poison
    if (EventFlag(25007104)) {
        SetSpEffect(10000, 160709050);
    }

    if (!EventFlag(25007104)) {
        ClearSpEffect(10000, 160709050);
    }

    // Blood
    if (EventFlag(25007105)) {
        SetSpEffect(10000, 160709060);
    }

    if (!EventFlag(25007105)) {
        ClearSpEffect(10000, 160709060);
    }

    // Frost
    if (EventFlag(25007106)) {
        SetSpEffect(10000, 160709070);
    }

    if (!EventFlag(25007106)) {
        ClearSpEffect(10000, 160709070);
    }

    // Moonlight
    if (EventFlag(25007107)) {
        SetSpEffect(10000, 160709080);
    }

    if (!EventFlag(25007107)) {
        ClearSpEffect(10000, 160709080);
    }

    // Divine
    if (EventFlag(25007108)) {
        SetSpEffect(10000, 160709090);
    }

    if (!EventFlag(25007108)) {
        ClearSpEffect(10000, 160709090);
    }

    // Black Fire
    if (EventFlag(25007109)) {
        SetSpEffect(10000, 160709100);
    }

    if (!EventFlag(25007109)) {
        ClearSpEffect(10000, 160709100);
    }

    // Bolt
    if (EventFlag(25007110)) {
        SetSpEffect(10000, 160709180);
    }

    if (!EventFlag(25007110)) {
        ClearSpEffect(10000, 160709180);
    }

    // Sunlight
    if (EventFlag(25007111)) {
        SetSpEffect(10000, 160709170);
    }

    if (!EventFlag(25007111)) {
        ClearSpEffect(10000, 160709170);
    }

    // Enchanted
    if (EventFlag(25007112)) {
        SetSpEffect(10000, 160709160);
    }

    if (!EventFlag(25007112)) {
        ClearSpEffect(10000, 160709160);
    }

    // Scorched
    if (EventFlag(25007113)) {
        SetSpEffect(10000, 160709110);
    }

    if (!EventFlag(25007113)) {
        ClearSpEffect(10000, 160709110);
    }

    // Rotten
    if (EventFlag(25007114)) {
        SetSpEffect(10000, 160709120);
    }

    if (!EventFlag(25007114)) {
        ClearSpEffect(10000, 160709120);
    }

    // Wind
    if (EventFlag(25007115)) {
        SetSpEffect(10000, 160709130);
    }

    if (!EventFlag(25007115)) {
        ClearSpEffect(10000, 160709130);
    }

    // Psychedelic
    if (EventFlag(25007116)) {
        SetSpEffect(10000, 160709140);
    }

    if (!EventFlag(25007116)) {
        ClearSpEffect(10000, 160709140);
    }

    // Brume
    if (EventFlag(25007117)) {
        SetSpEffect(10000, 160709150);
    }

    if (!EventFlag(25007117)) {
        ClearSpEffect(10000, 160709150);
    }

    // Pale MAgic
    if (EventFlag(25007119)) {
        SetSpEffect(10000, 160709190);
    }

    if (!EventFlag(25007119)) {
        ClearSpEffect(10000, 160709190);
    }

    // Left
    // Magic
    if (EventFlag(25007130)) {
        SetSpEffect(10000, 160709015);
    }

    if (!EventFlag(25007130)) {
        ClearSpEffect(10000, 160709015);
    }

    // Fire
    if (EventFlag(25007131)) {
        SetSpEffect(10000, 160709025);
    }

    if (!EventFlag(25007131)) {
        ClearSpEffect(10000, 160709025);
    }

    // Lightning
    if (EventFlag(25007132)) {
        SetSpEffect(10000, 160709035);
    }

    if (!EventFlag(25007132)) {
        ClearSpEffect(10000, 160709035);
    }

    // Abyss
    if (EventFlag(25007133)) {
        SetSpEffect(10000, 160709045);
    }

    if (!EventFlag(25007133)) {
        ClearSpEffect(10000, 160709045);
    }

    // Poison
    if (EventFlag(25007134)) {
        SetSpEffect(10000, 160709055);
    }

    if (!EventFlag(25007134)) {
        ClearSpEffect(10000, 160709055);
    }

    // Blood
    if (EventFlag(25007135)) {
        SetSpEffect(10000, 160709065);
    }

    if (!EventFlag(25007135)) {
        ClearSpEffect(10000, 160709065);
    }

    // Frost
    if (EventFlag(25007136)) {
        SetSpEffect(10000, 160709075);
    }

    if (!EventFlag(25007136)) {
        ClearSpEffect(10000, 160709075);
    }

    // Moonlight
    if (EventFlag(25007137)) {
        SetSpEffect(10000, 160709085);
    }

    if (!EventFlag(25007137)) {
        ClearSpEffect(10000, 160709085);
    }

    // Divine
    if (EventFlag(25007138)) {
        SetSpEffect(10000, 160709095);
    }

    if (!EventFlag(25007138)) {
        ClearSpEffect(10000, 160709095);
    }

    // Black Fire
    if (EventFlag(25007139)) {
        SetSpEffect(10000, 160709105);
    }

    if (!EventFlag(25007139)) {
        ClearSpEffect(10000, 160709105);
    }

    // Bolt
    if (EventFlag(25007140)) {
        SetSpEffect(10000, 160709185);
    }

    if (!EventFlag(25007140)) {
        ClearSpEffect(10000, 160709185);
    }

    // Sunlight
    if (EventFlag(25007141)) {
        SetSpEffect(10000, 160709175);
    }

    if (!EventFlag(25007141)) {
        ClearSpEffect(10000, 160709175);
    }

    // Enchanted
    if (EventFlag(25007142)) {
        SetSpEffect(10000, 160709165);
    }

    if (!EventFlag(25007142)) {
        ClearSpEffect(10000, 160709165);
    }

    // Scorched
    if (EventFlag(25007143)) {
        SetSpEffect(10000, 160709115);
    }

    if (!EventFlag(25007143)) {
        ClearSpEffect(10000, 160709115);
    }

    // Rotten
    if (EventFlag(25007144)) {
        SetSpEffect(10000, 160709125);
    }

    if (!EventFlag(25007144)) {
        ClearSpEffect(10000, 160709125);
    }

    // Wind
    if (EventFlag(25007145)) {
        SetSpEffect(10000, 160709135);
    }

    if (!EventFlag(25007145)) {
        ClearSpEffect(10000, 160709135);
    }

    // Psychedelic
    if (EventFlag(25007146)) {
        SetSpEffect(10000, 160709145);
    }

    if (!EventFlag(25007146)) {
        ClearSpEffect(10000, 160709145);
    }

    // Brume
    if (EventFlag(25007147)) {
        SetSpEffect(10000, 160709155);
    }

    if (!EventFlag(25007147)) {
        ClearSpEffect(10000, 160709155);
    }

    // Pale Magic
    if (EventFlag(25007149)) {
        SetSpEffect(10000, 160709195);
    }

    if (!EventFlag(25007149)) {
        ClearSpEffect(10000, 160709195);
    }

    RestartEvent();
});

//----------------------------------------------
// Infusion Emission - Monitor
//----------------------------------------------
$Event(20211, Default, function() {
    WaitFixedTimeSeconds(1.0);

    // Skip if Infusion emission ON is not toggled
    if (EventFlag(25007118)) {

        //--------------------
        // ON
        //--------------------
        // Curse
        if (CharacterHasSpEffect(10000, 200000200)) {
            SetSpEffect(10000, 160709350);
        }

        // Poison
        if (CharacterHasSpEffect(10000, 200000300)) {
            SetSpEffect(10000, 160709351);
        }

        // Bleed
        if (CharacterHasSpEffect(10000, 200000400)) {
            SetSpEffect(10000, 160709352);
        }

        // Frost
        if (CharacterHasSpEffect(10000, 200000500)) {
            SetSpEffect(10000, 160709353);
        }

        // Magic
        if (CharacterHasSpEffect(10000, 200000600)) {
            SetSpEffect(10000, 160709354);
        }

        // Fire
        if (CharacterHasSpEffect(10000, 200000700)) {
            SetSpEffect(10000, 160709355);
        }

        // Lightning
        if (CharacterHasSpEffect(10000, 200000800)) {
            SetSpEffect(10000, 160709356);
        }

        // Dark
        if (CharacterHasSpEffect(10000, 200000900)) {
            SetSpEffect(10000, 160709357);
        }

        // Lucky
        if (CharacterHasSpEffect(10000, 200001000)) {
            SetSpEffect(10000, 160709358);
        }

        // Enchanted
        if (CharacterHasSpEffect(10000, 200001100)) {
            SetSpEffect(10000, 160709359);
        }

        // Holy
        if (CharacterHasSpEffect(10000, 200001200)) {
            SetSpEffect(10000, 160709360);
        }
    }

L0:

    //--------------------
    // OFF
    //--------------------

    // Curse
    if (!CharacterHasSpEffect(10000, 200000200)) {
        ClearSpEffect(10000, 160709350);
    }

    // Poison
    if (!CharacterHasSpEffect(10000, 200000300)) {
        ClearSpEffect(10000, 160709351);
    }

    // Bleed
    if (!CharacterHasSpEffect(10000, 200000400)) {
        ClearSpEffect(10000, 160709352);
    }

    // Frost
    if (!CharacterHasSpEffect(10000, 200000500)) {
        ClearSpEffect(10000, 160709353);
    }

    // Magic
    if (!CharacterHasSpEffect(10000, 200000600)) {
        ClearSpEffect(10000, 160709354);
    }

    // Fire
    if (!CharacterHasSpEffect(10000, 200000700)) {
        ClearSpEffect(10000, 160709355);
    }

    // Lightning
    if (!CharacterHasSpEffect(10000, 200000800)) {
        ClearSpEffect(10000, 160709356);
    }

    // Dark
    if (!CharacterHasSpEffect(10000, 200000900)) {
        ClearSpEffect(10000, 160709357);
    }

    // Lucky
    if (!CharacterHasSpEffect(10000, 200001000)) {
        ClearSpEffect(10000, 160709358);
    }

    // Enchanted
    if (!CharacterHasSpEffect(10000, 200001100)) {
        ClearSpEffect(10000, 160709359);
    }

    // Holy
    if (!CharacterHasSpEffect(10000, 200001200)) {
        ClearSpEffect(10000, 160709360);
    }

    // Clear VFX if toggled off
    if (!EventFlag(25007118)) {
        ClearSpEffect(10000, 160709350);
        ClearSpEffect(10000, 160709351);
        ClearSpEffect(10000, 160709352);
        ClearSpEffect(10000, 160709353);
        ClearSpEffect(10000, 160709354);
        ClearSpEffect(10000, 160709355);
        ClearSpEffect(10000, 160709356);
        ClearSpEffect(10000, 160709357);
        ClearSpEffect(10000, 160709358);
        ClearSpEffect(10000, 160709359);
    }
    ClearSpEffect(10000, 160709360);

    RestartEvent();
});

//----------------------------------------------
// Body Emission - Monitor
//----------------------------------------------
$Event(20220, Default, function() {
    WaitFixedTimeSeconds(1.0);

    // Magical Crystals
    if (EventFlag(25007201)) {
        SetSpEffect(10000, 160709502);
    }

    if (!EventFlag(25007201)) {
        ClearSpEffect(10000, 160709502);
    }

    // Invisibility
    if (EventFlag(25007202)) {
        SetSpEffect(10000, 160709504);
    }

    if (!EventFlag(25007202)) {
        ClearSpEffect(10000, 160709504);
    }

    // Stoneform
    if (EventFlag(25007203)) {
        SetSpEffect(10000, 160709506);
    }

    if (!EventFlag(25007203)) {
        ClearSpEffect(10000, 160709506);
    }

    // Maggots
    if (EventFlag(25007204)) {
        SetSpEffect(10000, 160709508);
    }

    if (!EventFlag(25007204)) {
        ClearSpEffect(10000, 160709508);
    }

    // Lightning
    if (EventFlag(25007205)) {
        SetSpEffect(10000, 160709510);
    }

    if (!EventFlag(25007205)) {
        ClearSpEffect(10000, 160709510);
    }

    // White Stars
    if (EventFlag(25007206)) {
        SetSpEffect(10000, 160709512);
    }

    if (!EventFlag(25007206)) {
        ClearSpEffect(10000, 160709512);
    }

    // Prismatic Stars
    if (EventFlag(25007207)) {
        SetSpEffect(10000, 160709514);
    }

    if (!EventFlag(25007207)) {
        ClearSpEffect(10000, 160709514);
    }

    // Corrupted Crystals
    if (EventFlag(25007208)) {
        SetSpEffect(10000, 160709516);
    }

    if (!EventFlag(25007208)) {
        ClearSpEffect(10000, 160709516);
    }

    // Dung
    if (EventFlag(25007209)) {
        SetSpEffect(10000, 160709518);
    }

    if (!EventFlag(25007209)) {
        ClearSpEffect(10000, 160709518);
    }

    // Barrier Wards
    if (EventFlag(25007210)) {
        SetSpEffect(10000, 160709520);
    }

    if (!EventFlag(25007210)) {
        ClearSpEffect(10000, 160709520);
    }

    // Poison
    if (EventFlag(25007211)) {
        SetSpEffect(10000, 160709522);
    }

    if (!EventFlag(25007211)) {
        ClearSpEffect(10000, 160709522);
    }

    // Frost
    if (EventFlag(25007212)) {
        SetSpEffect(10000, 160709524);
    }

    if (!EventFlag(25007212)) {
        ClearSpEffect(10000, 160709524);
    }

    // Flame
    if (EventFlag(25007213)) {
        SetSpEffect(10000, 160709526);
    }

    if (!EventFlag(25007213)) {
        ClearSpEffect(10000, 160709526);
    }

    // Dust
    if (EventFlag(25007214)) {
        SetSpEffect(10000, 160709528);
    }

    if (!EventFlag(25007214)) {
        ClearSpEffect(10000, 160709528);
    }

    // Water
    if (EventFlag(25007215)) {
        SetSpEffect(10000, 160709530);
    }

    if (!EventFlag(25007215)) {
        ClearSpEffect(10000, 160709530);
    }

    // Holy
    if (EventFlag(25007216)) {
        SetSpEffect(10000, 160709532);
    }

    if (!EventFlag(25007216)) {
        ClearSpEffect(10000, 160709532);
    }

    // Smouldering
    if (EventFlag(25007217)) {
        SetSpEffect(10000, 160709534);
    }

    if (!EventFlag(25007217)) {
        ClearSpEffect(10000, 160709534);
    }

    RestartEvent();
});

//----------------------------------------------
// Eye Emission - Monitor
//----------------------------------------------
$Event(20230, Default, function() {
    WaitFixedTimeSeconds(1.0);

    // Red Glow
    if (EventFlag(25007250)) {
        SetSpEffect(10000, 160709600);
    }

    if (!EventFlag(25007250)) {
        ClearSpEffect(10000, 160709600);
    }

    // Burning Red Glow
    if (EventFlag(25007251)) {
        SetSpEffect(10000, 160709602);
    }

    if (!EventFlag(25007251)) {
        ClearSpEffect(10000, 160709602);
    }

    // Red Glow
    if (EventFlag(25007252)) {
        SetSpEffect(10000, 160709604);
    }

    if (!EventFlag(25007252)) {
        ClearSpEffect(10000, 160709604);
    }

    // Blue Glow
    if (EventFlag(25007253)) {
        SetSpEffect(10000, 160709606);
    }

    if (!EventFlag(25007253)) {
        ClearSpEffect(10000, 160709606);
    }

    // Golden Glow
    if (EventFlag(25007254)) {
        SetSpEffect(10000, 160709608);
    }

    if (!EventFlag(25007254)) {
        ClearSpEffect(10000, 160709608);
    }

    // Green Glow
    if (EventFlag(25007255)) {
        SetSpEffect(10000, 160709610);
    }

    if (!EventFlag(25007255)) {
        ClearSpEffect(10000, 160709610);
    }

    // Purple Glow
    if (EventFlag(25007256)) {
        SetSpEffect(10000, 160709612);
    }

    if (!EventFlag(25007256)) {
        ClearSpEffect(10000, 160709612);
    }

    RestartEvent();
});

//----------------------------------------------
// Body Aura - Monitor
//----------------------------------------------
$Event(20240, Default, function() {
    WaitFixedTimeSeconds(1.0);

    // Ethereal Phantom
    if (EventFlag(25007300)) {
        SetSpEffect(10000, 160709700);
    }

    if (!EventFlag(25007300)) {
        ClearSpEffect(10000, 160709700);
    }

    // Psychedelic Phantom
    if (EventFlag(25007312)) {
        SetSpEffect(10000, 160709706);
    }

    if (!EventFlag(25007312)) {
        ClearSpEffect(10000, 160709706);
    }

    // White Phantom
    if (EventFlag(25007303)) {
        SetSpEffect(10000, 160709708);
    }

    if (!EventFlag(25007303)) {
        ClearSpEffect(10000, 160709708);
    }

    // Darkmoon Phantom
    if (EventFlag(25007304)) {
        SetSpEffect(10000, 160709710);
    }

    if (!EventFlag(25007304)) {
        ClearSpEffect(10000, 160709710);
    }

    // Holy Phantom
    if (EventFlag(25007305)) {
        SetSpEffect(10000, 160709712);
    }

    if (!EventFlag(25007305)) {
        ClearSpEffect(10000, 160709712);
    }

    // Swamp Phantom
    if (EventFlag(25007306)) {
        SetSpEffect(10000, 160709714);
    }

    if (!EventFlag(25007306)) {
        ClearSpEffect(10000, 160709714);
    }

    // Abyssal Phantom
    if (EventFlag(25007307)) {
        SetSpEffect(10000, 160709716);
    }

    if (!EventFlag(25007307)) {
        ClearSpEffect(10000, 160709716);
    }

    // Sunlight Phantom
    if (EventFlag(25007308)) {
        SetSpEffect(10000, 160709718);
    }

    if (!EventFlag(25007308)) {
        ClearSpEffect(10000, 160709718);
    }

    // Mad Phantom
    if (EventFlag(25007309)) {
        SetSpEffect(10000, 160709720);
    }

    if (!EventFlag(25007309)) {
        ClearSpEffect(10000, 160709720);
    }

    // Red Phantom
    if (EventFlag(25007310)) {
        SetSpEffect(10000, 160709722);
    }

    if (!EventFlag(25007310)) {
        ClearSpEffect(10000, 160709722);
    }

    // Demonic Phantom
    if (EventFlag(25007311)) {
        SetSpEffect(10000, 160709724);
    }

    if (!EventFlag(25007311)) {
        ClearSpEffect(10000, 160709724);
    }

    RestartEvent();
});

//----------------------------------------------
// Humanity Aura - Monitor
//----------------------------------------------
$Event(20250, Default, function() {
    WaitFixedTimeSeconds(1.0);

    // Human
    if (EventFlag(25007350)) {
        SetSpEffect(10000, 160709800);
    }

    if (!EventFlag(25007350)) {
        ClearSpEffect(10000, 160709800);
    }

    // Hollow
    if (EventFlag(25007351)) {
        SetSpEffect(10000, 160709802);
    }

    if (!EventFlag(25007351)) {
        ClearSpEffect(10000, 160709802);
    }

    RestartEvent();
});

//----------------------------------------------
// Head Emission - Monitor
//----------------------------------------------
$Event(20260, Default, function() {
    WaitFixedTimeSeconds(1.0);

    // Mass of Humanity
    if (EventFlag(25007270)) {
        SetSpEffect(10000, 160709400);
    }

    if (!EventFlag(25007270)) {
        ClearSpEffect(10000, 160709400);
    }

    RestartEvent();
});

//----------------------------------------------
// Body Tint - Monitor
//----------------------------------------------
$Event(20270, Default, function() {
    WaitFixedTimeSeconds(1.0);

    // Red Tint
    if (EventFlag(25007320)) {
        SetSpEffect(10000, 160709726);
    }

    if (!EventFlag(25007320)) {
        ClearSpEffect(10000, 160709726);
    }

    // Orange Tint
    if (EventFlag(25007321)) {
        SetSpEffect(10000, 160709728);
    }

    if (!EventFlag(25007321)) {
        ClearSpEffect(10000, 160709728);
    }

    // Yellow Tint
    if (EventFlag(25007322)) {
        SetSpEffect(10000, 160709730);
    }

    if (!EventFlag(25007322)) {
        ClearSpEffect(10000, 160709730);
    }

    // Green Tint
    if (EventFlag(25007323)) {
        SetSpEffect(10000, 160709732);
    }

    if (!EventFlag(25007323)) {
        ClearSpEffect(10000, 160709732);
    }

    // Cyan Tint
    if (EventFlag(25007324)) {
        SetSpEffect(10000, 160709734);
    }

    if (!EventFlag(25007324)) {
        ClearSpEffect(10000, 160709734);
    }

    // Blue Tint
    if (EventFlag(25007325)) {
        SetSpEffect(10000, 160709736);
    }

    if (!EventFlag(25007325)) {
        ClearSpEffect(10000, 160709736);
    }

    // Indigo Tint
    if (EventFlag(25007326)) {
        SetSpEffect(10000, 160709738);
    }

    if (!EventFlag(25007326)) {
        ClearSpEffect(10000, 160709738);
    }

    // Violet Tint
    if (EventFlag(25007327)) {
        SetSpEffect(10000, 160709740);
    }

    if (!EventFlag(25007327)) {
        ClearSpEffect(10000, 160709740);
    }

    // Pink Tint
    if (EventFlag(25007328)) {
        SetSpEffect(10000, 160709742);
    }

    if (!EventFlag(25007328)) {
        ClearSpEffect(10000, 160709742);
    }

    // White Tint
    if (EventFlag(25007329)) {
        SetSpEffect(10000, 160709744);
    }

    if (!EventFlag(25007329)) {
        ClearSpEffect(10000, 160709744);
    }

    // Black Tint
    if (EventFlag(25007330)) {
        SetSpEffect(10000, 160709746);
    }

    if (!EventFlag(25007330)) {
        ClearSpEffect(10000, 160709746);
    }

    // Psychedelic Tint
    if (EventFlag(25007331)) {
        SetSpEffect(10000, 160709748);
    }

    if (!EventFlag(25007331)) {
        ClearSpEffect(10000, 160709748);
    }

    RestartEvent();
});

//----------------------------------------------
// Head Armor - Monitor
//----------------------------------------------
$Event(20280, Default, function() {
    WaitFixedTimeSeconds(1.0);

    // Dragonform (DS3)
    if (EventFlag(24007000)) {
        SetSpEffect(10000, 160703100);
    }

    if (!EventFlag(24007000)) {
        ClearSpEffect(10000, 160703100);
    }

    // Bloodborne Hunter
    if (EventFlag(24007001)) {
        SetSpEffect(10000, 160703110);
    }

    if (!EventFlag(24007001)) {
        ClearSpEffect(10000, 160703110);
    }

    // Skeleton (Normal)
    if (EventFlag(24007002)) {
        SetSpEffect(10000, 160703160);
    }

    if (!EventFlag(24007002)) {
        ClearSpEffect(10000, 160703160);
    }

    // Skeleton (Tree)
    if (EventFlag(24007003)) {
        SetSpEffect(10000, 160703170);
    }

    if (!EventFlag(24007003)) {
        ClearSpEffect(10000, 160703170);
    }

    // Skeleton (Peasant)
    if (EventFlag(24007004)) {
        SetSpEffect(10000, 160703180);
    }

    if (!EventFlag(24007004)) {
        ClearSpEffect(10000, 160703180);
    }

    // Skeleton (Overgrown)
    if (EventFlag(24007005)) {
        SetSpEffect(10000, 160703190);
    }

    if (!EventFlag(24007005)) {
        ClearSpEffect(10000, 160703190);
    }

    // Capra Demon
    if (EventFlag(24007006)) {
        SetSpEffect(10000, 160703120);
    }

    if (!EventFlag(24007006)) {
        ClearSpEffect(10000, 160703120);
    }

    // Titanite Demon
    if (EventFlag(24007007)) {
        SetSpEffect(10000, 160703130);
    }

    if (!EventFlag(24007007)) {
        ClearSpEffect(10000, 160703130);
    }

    // Murkman
    if (EventFlag(24007008)) {
        SetSpEffect(10000, 160703140);
    }

    if (!EventFlag(24007008)) {
        ClearSpEffect(10000, 160703140);
    }

    // Waxed Head
    if (EventFlag(24007009)) {
        SetSpEffect(10000, 160703200);
    }

    if (!EventFlag(24007009)) {
        ClearSpEffect(10000, 160703200);
    }

    // Humanity Sprite
    if (EventFlag(24007010)) {
        SetSpEffect(10000, 160703150);
    }

    if (!EventFlag(24007010)) {
        ClearSpEffect(10000, 160703150);
    }

    // Havel's
    if (EventFlag(24007011)) {
        SetSpEffect(10000, 160704000);
    }

    if (!EventFlag(24007011)) {
        ClearSpEffect(10000, 160704000);
    }

    // Giant-horned Helmet
    if (EventFlag(24007012)) {
        SetSpEffect(10000, 160704010);
    }

    if (!EventFlag(24007012)) {
        ClearSpEffect(10000, 160704010);
    }

    // Fang Boar Helm
    if (EventFlag(24007013)) {
        SetSpEffect(10000, 160704020);
    }

    if (!EventFlag(24007013)) {
        ClearSpEffect(10000, 160704020);
    }

    // Golem
    if (EventFlag(24007014)) {
        SetSpEffect(10000, 160704030);
    }

    if (!EventFlag(24007014)) {
        ClearSpEffect(10000, 160704030);
    }

    // Giant's
    if (EventFlag(24007015)) {
        SetSpEffect(10000, 160704040);
    }

    if (!EventFlag(24007015)) {
        ClearSpEffect(10000, 160704040);
    }

    // Pursuer's
    if (EventFlag(24007016)) {
        SetSpEffect(10000, 160704050);
    }

    if (!EventFlag(24007016)) {
        ClearSpEffect(10000, 160704050);
    }

    // Smough's
    if (EventFlag(24007017)) {
        SetSpEffect(10000, 160704060);
    }

    if (!EventFlag(24007017)) {
        ClearSpEffect(10000, 160704060);
    }

    // Gundyr's
    if (EventFlag(24007018)) {
        SetSpEffect(10000, 160704070);
    }

    if (!EventFlag(24007018)) {
        ClearSpEffect(10000, 160704070);
    }

    // Brushwood
    if (EventFlag(24007019)) {
        SetSpEffect(10000, 160704080);
    }

    if (!EventFlag(24007019)) {
        ClearSpEffect(10000, 160704080);
    }

    // Winged Knight
    if (EventFlag(24007020)) {
        SetSpEffect(10000, 160704090);
    }

    if (!EventFlag(24007020)) {
        ClearSpEffect(10000, 160704090);
    }

    // Snail Shell
    if (EventFlag(24007021)) {
        SetSpEffect(10000, 160704100);
    }

    if (!EventFlag(24007021)) {
        ClearSpEffect(10000, 160704100);
    }

    // Millwood Knight
    if (EventFlag(24007022)) {
        SetSpEffect(10000, 160704110);
    }

    if (!EventFlag(24007022)) {
        ClearSpEffect(10000, 160704110);
    }

    // Mirror Knight
    if (EventFlag(24007023)) {
        SetSpEffect(10000, 160704120);
    }

    if (!EventFlag(24007023)) {
        ClearSpEffect(10000, 160704120);
    }

    // Dragonrider
    if (EventFlag(24007024)) {
        SetSpEffect(10000, 160704130);
    }

    if (!EventFlag(24007024)) {
        ClearSpEffect(10000, 160704130);
    }

    // Catarina
    if (EventFlag(24007025)) {
        SetSpEffect(10000, 160704140);
    }

    if (!EventFlag(24007025)) {
        ClearSpEffect(10000, 160704140);
    }

    // Stone
    if (EventFlag(24007026)) {
        SetSpEffect(10000, 160704150);
    }

    if (!EventFlag(24007026)) {
        ClearSpEffect(10000, 160704150);
    }

    // Guardian
    if (EventFlag(24007027)) {
        SetSpEffect(10000, 160704160);
    }

    if (!EventFlag(24007027)) {
        ClearSpEffect(10000, 160704160);
    }

    // Steel
    if (EventFlag(24007028)) {
        SetSpEffect(10000, 160704170);
    }

    if (!EventFlag(24007028)) {
        ClearSpEffect(10000, 160704170);
    }

    // Cathedral Knight
    if (EventFlag(24007029)) {
        SetSpEffect(10000, 160704180);
    }

    if (!EventFlag(24007029)) {
        ClearSpEffect(10000, 160704180);
    }

    // Dragon Hunter
    if (EventFlag(24007030)) {
        SetSpEffect(10000, 160704190);
    }

    if (!EventFlag(24007030)) {
        ClearSpEffect(10000, 160704190);
    }

    // Black Iron
    if (EventFlag(24007031)) {
        SetSpEffect(10000, 160704200);
    }

    if (!EventFlag(24007031)) {
        ClearSpEffect(10000, 160704200);
    }

    // Iron Dragonslayer
    if (EventFlag(24007032)) {
        SetSpEffect(10000, 160704210);
    }

    if (!EventFlag(24007032)) {
        ClearSpEffect(10000, 160704210);
    }

    // Lapp
    if (EventFlag(24007033)) {
        SetSpEffect(10000, 160704220);
    }

    if (!EventFlag(24007033)) {
        ClearSpEffect(10000, 160704220);
    }

    // Penetrator
    if (EventFlag(24007034)) {
        SetSpEffect(10000, 160704230);
    }

    if (!EventFlag(24007034)) {
        ClearSpEffect(10000, 160704230);
    }

    // Morne's
    if (EventFlag(24007035)) {
        SetSpEffect(10000, 160704240);
    }

    if (!EventFlag(24007035)) {
        ClearSpEffect(10000, 160704240);
    }

    // Paladin
    if (EventFlag(24007036)) {
        SetSpEffect(10000, 160704250);
    }

    if (!EventFlag(24007036)) {
        ClearSpEffect(10000, 160704250);
    }

    // Quicksilver
    if (EventFlag(24007037)) {
        SetSpEffect(10000, 160704260);
    }

    if (!EventFlag(24007037)) {
        ClearSpEffect(10000, 160704260);
    }

    // Executioner
    if (EventFlag(24007038)) {
        SetSpEffect(10000, 160704270);
    }

    if (!EventFlag(24007038)) {
        ClearSpEffect(10000, 160704270);
    }

    // Dragonslayer
    if (EventFlag(24007039)) {
        SetSpEffect(10000, 160704280);
    }

    if (!EventFlag(24007039)) {
        ClearSpEffect(10000, 160704280);
    }

    // Lothric Knight
    if (EventFlag(24007040)) {
        SetSpEffect(10000, 160704290);
    }

    if (!EventFlag(24007040)) {
        ClearSpEffect(10000, 160704290);
    }

    // Iron Keeper
    if (EventFlag(24007041)) {
        SetSpEffect(10000, 160704300);
    }

    if (!EventFlag(24007041)) {
        ClearSpEffect(10000, 160704300);
    }

    // Heide Mask
    if (EventFlag(24007042)) {
        SetSpEffect(10000, 160704310);
    }

    if (!EventFlag(24007042)) {
        ClearSpEffect(10000, 160704310);
    }

    // Harald Legion
    if (EventFlag(24007043)) {
        SetSpEffect(10000, 160704320);
    }

    if (!EventFlag(24007043)) {
        ClearSpEffect(10000, 160704320);
    }

    // Exile
    if (EventFlag(24007044)) {
        SetSpEffect(10000, 160704330);
    }

    if (!EventFlag(24007044)) {
        ClearSpEffect(10000, 160704330);
    }

    // Overseer's Mask
    if (EventFlag(24007045)) {
        SetSpEffect(10000, 160704340);
    }

    if (!EventFlag(24007045)) {
        ClearSpEffect(10000, 160704340);
    }

    // Raime's
    if (EventFlag(24007046)) {
        SetSpEffect(10000, 160704350);
    }

    if (!EventFlag(24007046)) {
        ClearSpEffect(10000, 160704350);
    }

    // Black Knight
    if (EventFlag(24007047)) {
        SetSpEffect(10000, 160704360);
    }

    if (!EventFlag(24007047)) {
        ClearSpEffect(10000, 160704360);
    }

    // Silver Knight
    if (EventFlag(24007048)) {
        SetSpEffect(10000, 160704370);
    }

    if (!EventFlag(24007048)) {
        ClearSpEffect(10000, 160704370);
    }

    // Tarnished Knight
    if (EventFlag(24007049)) {
        SetSpEffect(10000, 160704380);
    }

    if (!EventFlag(24007049)) {
        ClearSpEffect(10000, 160704380);
    }

    // Heide Knight
    if (EventFlag(24007050)) {
        SetSpEffect(10000, 160704390);
    }

    if (!EventFlag(24007050)) {
        ClearSpEffect(10000, 160704390);
    }

    // Syan Knight
    if (EventFlag(24007051)) {
        SetSpEffect(10000, 160704400);
    }

    if (!EventFlag(24007051)) {
        ClearSpEffect(10000, 160704400);
    }

    // Alonne Captain
    if (EventFlag(24007052)) {
        SetSpEffect(10000, 160704410);
    }

    if (!EventFlag(24007052)) {
        ClearSpEffect(10000, 160704410);
    }

    // Gloom
    if (EventFlag(24007053)) {
        SetSpEffect(10000, 160704420);
    }

    if (!EventFlag(24007053)) {
        ClearSpEffect(10000, 160704420);
    }

    // Ruin
    if (EventFlag(24007054)) {
        SetSpEffect(10000, 160704430);
    }

    if (!EventFlag(24007054)) {
        ClearSpEffect(10000, 160704430);
    }

    // Rampart Golem
    if (EventFlag(24007055)) {
        SetSpEffect(10000, 160704440);
    }

    if (!EventFlag(24007055)) {
        ClearSpEffect(10000, 160704440);
    }

    // Lost Gargoyle
    if (EventFlag(24007056)) {
        SetSpEffect(10000, 160704450);
    }

    if (!EventFlag(24007056)) {
        ClearSpEffect(10000, 160704450);
    }

    // Gargoyle
    if (EventFlag(24007057)) {
        SetSpEffect(10000, 160704460);
    }

    if (!EventFlag(24007057)) {
        ClearSpEffect(10000, 160704460);
    }

    // Crab Helmet
    if (EventFlag(24007058)) {
        SetSpEffect(10000, 160704470);
    }

    if (!EventFlag(24007058)) {
        ClearSpEffect(10000, 160704470);
    }

    // Horned Samurai Helm
    if (EventFlag(24007060)) {
        SetSpEffect(10000, 160704490);
    }

    if (!EventFlag(24007060)) {
        ClearSpEffect(10000, 160704490);
    }

    // Ornate Samurai Helm
    if (EventFlag(24007061)) {
        SetSpEffect(10000, 160704500);
    }

    if (!EventFlag(24007061)) {
        ClearSpEffect(10000, 160704500);
    }

    // Lorian
    if (EventFlag(24007062)) {
        SetSpEffect(10000, 160704510);
    }

    if (!EventFlag(24007062)) {
        ClearSpEffect(10000, 160704510);
    }

    // Great Lord
    if (EventFlag(24007063)) {
        SetSpEffect(10000, 160704520);
    }

    if (!EventFlag(24007063)) {
        ClearSpEffect(10000, 160704520);
    }

    // Ludleth's Crown
    if (EventFlag(24007064)) {
        SetSpEffect(10000, 160704530);
    }

    if (!EventFlag(24007064)) {
        ClearSpEffect(10000, 160704530);
    }

    // Symbol of Avarice
    if (EventFlag(24007065)) {
        SetSpEffect(10000, 160704540);
    }

    if (!EventFlag(24007065)) {
        ClearSpEffect(10000, 160704540);
    }

    // Giant Slave Helmet
    if (EventFlag(24007066)) {
        SetSpEffect(10000, 160704550);
    }

    if (!EventFlag(24007066)) {
        ClearSpEffect(10000, 160704550);
    }

    // Old Demon King's Crown
    if (EventFlag(24007067)) {
        SetSpEffect(10000, 160704560);
    }

    if (!EventFlag(24007067)) {
        ClearSpEffect(10000, 160704560);
    }

    // Pygmy King's Crown
    if (EventFlag(24007068)) {
        SetSpEffect(10000, 160704570);
    }

    if (!EventFlag(24007068)) {
        ClearSpEffect(10000, 160704570);
    }

    // Drakeblood
    if (EventFlag(24007069)) {
        SetSpEffect(10000, 160704580);
    }

    if (!EventFlag(24007069)) {
        ClearSpEffect(10000, 160704580);
    }

    // Barrel
    if (EventFlag(24007070)) {
        SetSpEffect(10000, 160704590);
    }

    if (!EventFlag(24007070)) {
        ClearSpEffect(10000, 160704590);
    }

    // Gough's
    if (EventFlag(24007071)) {
        SetSpEffect(10000, 160704600);
    }

    if (!EventFlag(24007071)) {
        ClearSpEffect(10000, 160704600);
    }

    // Mad Warrior
    if (EventFlag(24007072)) {
        SetSpEffect(10000, 160704610);
    }

    if (!EventFlag(24007072)) {
        ClearSpEffect(10000, 160704610);
    }

    // Imperious
    if (EventFlag(24007073)) {
        SetSpEffect(10000, 160704620);
    }

    if (!EventFlag(24007073)) {
        ClearSpEffect(10000, 160704620);
    }

    // Vengarl
    if (EventFlag(24007074)) {
        SetSpEffect(10000, 160704630);
    }

    if (!EventFlag(24007074)) {
        ClearSpEffect(10000, 160704630);
    }

    // Mask of Sin
    if (EventFlag(24007075)) {
        SetSpEffect(10000, 160704640);
    }

    if (!EventFlag(24007075)) {
        ClearSpEffect(10000, 160704640);
    }

    // Pot
    if (EventFlag(24007076)) {
        SetSpEffect(10000, 160704650);
    }

    if (!EventFlag(24007076)) {
        ClearSpEffect(10000, 160704650);
    }

    // Black Dragon
    if (EventFlag(24007077)) {
        SetSpEffect(10000, 160704660);
    }

    if (!EventFlag(24007077)) {
        ClearSpEffect(10000, 160704660);
    }

    // Ringed Knight
    if (EventFlag(24007078)) {
        SetSpEffect(10000, 160704670);
    }

    if (!EventFlag(24007078)) {
        ClearSpEffect(10000, 160704670);
    }

    // Grave Keeper
    if (EventFlag(24007079)) {
        SetSpEffect(10000, 160704680);
    }

    if (!EventFlag(24007079)) {
        ClearSpEffect(10000, 160704680);
    }

    // Ivory King
    if (EventFlag(24007080)) {
        SetSpEffect(10000, 160704690);
    }

    if (!EventFlag(24007080)) {
        ClearSpEffect(10000, 160704690);
    }

    // Yhorm
    if (EventFlag(24007081)) {
        SetSpEffect(10000, 160704700);
    }

    if (!EventFlag(24007081)) {
        ClearSpEffect(10000, 160704700);
    }

    // Smelter Demon
    if (EventFlag(24007082)) {
        SetSpEffect(10000, 160704710);
    }

    if (!EventFlag(24007082)) {
        ClearSpEffect(10000, 160704710);
    }

    // Firelink
    if (EventFlag(24007083)) {
        SetSpEffect(10000, 160704720);
    }

    if (!EventFlag(24007083)) {
        ClearSpEffect(10000, 160704720);
    }

    // Gold Ardeo
    if (EventFlag(24007084)) {
        SetSpEffect(10000, 160704730);
    }

    if (!EventFlag(24007084)) {
        ClearSpEffect(10000, 160704730);
    }

    // Iron Cage
    if (EventFlag(24007085)) {
        SetSpEffect(10000, 160704740);
    }

    if (!EventFlag(24007085)) {
        ClearSpEffect(10000, 160704740);
    }

    // Corvian Knight
    if (EventFlag(24007086)) {
        SetSpEffect(10000, 160704750);
    }

    if (!EventFlag(24007086)) {
        ClearSpEffect(10000, 160704750);
    }

    // Eastern
    if (EventFlag(24007087)) {
        SetSpEffect(10000, 160704760);
    }

    if (!EventFlag(24007087)) {
        ClearSpEffect(10000, 160704760);
    }

    // Alonne
    if (EventFlag(24007088)) {
        SetSpEffect(10000, 160704770);
    }

    if (!EventFlag(24007088)) {
        ClearSpEffect(10000, 160704770);
    }

    // Brass
    if (EventFlag(24007089)) {
        SetSpEffect(10000, 160704780);
    }

    if (!EventFlag(24007089)) {
        ClearSpEffect(10000, 160704780);
    }

    // Charred Loyce
    if (EventFlag(24007090)) {
        SetSpEffect(10000, 160704790);
    }

    if (!EventFlag(24007090)) {
        ClearSpEffect(10000, 160704790);
    }

    // Loyce
    if (EventFlag(24007091)) {
        SetSpEffect(10000, 160704800);
    }

    if (!EventFlag(24007091)) {
        ClearSpEffect(10000, 160704800);
    }

    // Favored
    if (EventFlag(24007092)) {
        SetSpEffect(10000, 160704810);
    }

    if (!EventFlag(24007092)) {
        ClearSpEffect(10000, 160704810);
    }

    // King's
    if (EventFlag(24007093)) {
        SetSpEffect(10000, 160704820);
    }

    if (!EventFlag(24007093)) {
        ClearSpEffect(10000, 160704820);
    }

    // Lord's Blade
    if (EventFlag(24007094)) {
        SetSpEffect(10000, 160704830);
    }

    if (!EventFlag(24007094)) {
        ClearSpEffect(10000, 160704830);
    }

    // Sunset
    if (EventFlag(24007095)) {
        SetSpEffect(10000, 160704840);
    }

    if (!EventFlag(24007095)) {
        ClearSpEffect(10000, 160704840);
    }

    // Wolf Knight
    if (EventFlag(24007096)) {
        SetSpEffect(10000, 160704850);
    }

    if (!EventFlag(24007096)) {
        ClearSpEffect(10000, 160704850);
    }

    // Winged Helm of Ridoh
    if (EventFlag(24007097)) {
        SetSpEffect(10000, 160704860);
    }

    if (!EventFlag(24007097)) {
        ClearSpEffect(10000, 160704860);
    }

    // Artificial Helmet
    if (EventFlag(24007098)) {
        SetSpEffect(10000, 160704870);
    }

    if (!EventFlag(24007098)) {
        ClearSpEffect(10000, 160704870);
    }

    // Ancient King
    if (EventFlag(24007099)) {
        SetSpEffect(10000, 160704880);
    }

    if (!EventFlag(24007099)) {
        ClearSpEffect(10000, 160704880);
    }

    // Filianore's Crown
    if (EventFlag(24007100)) {
        SetSpEffect(10000, 160704890);
    }

    if (!EventFlag(24007100)) {
        ClearSpEffect(10000, 160704890);
    }

    // Holy King's Crown
    if (EventFlag(24007101)) {
        SetSpEffect(10000, 160704900);
    }

    if (!EventFlag(24007101)) {
        ClearSpEffect(10000, 160704900);
    }

    // Elite Knight
    if (EventFlag(24007102)) {
        SetSpEffect(10000, 160704910);
    }

    if (!EventFlag(24007102)) {
        ClearSpEffect(10000, 160704910);
    }

    // Bucket
    if (EventFlag(24007103)) {
        SetSpEffect(10000, 160704920);
    }

    if (!EventFlag(24007103)) {
        ClearSpEffect(10000, 160704920);
    }

    // Burial Knight
    if (EventFlag(24007104)) {
        SetSpEffect(10000, 160704930);
    }

    if (!EventFlag(24007104)) {
        ClearSpEffect(10000, 160704930);
    }

    // Adventurer
    if (EventFlag(24007105)) {
        SetSpEffect(10000, 160704940);
    }

    if (!EventFlag(24007105)) {
        ClearSpEffect(10000, 160704940);
    }

    // Knight
    if (EventFlag(24007106)) {
        SetSpEffect(10000, 160704950);
    }

    if (!EventFlag(24007106)) {
        ClearSpEffect(10000, 160704950);
    }

    // Thorn
    if (EventFlag(24007107)) {
        SetSpEffect(10000, 160704960);
    }

    if (!EventFlag(24007107)) {
        ClearSpEffect(10000, 160704960);
    }

    // Nameless Knight
    if (EventFlag(24007108)) {
        SetSpEffect(10000, 160704970);
    }

    if (!EventFlag(24007108)) {
        ClearSpEffect(10000, 160704970);
    }

    // Mask of the Father
    if (EventFlag(24007109)) {
        SetSpEffect(10000, 160704980);
    }

    if (!EventFlag(24007109)) {
        ClearSpEffect(10000, 160704980);
    }

    // Mask of the Mother
    if (EventFlag(24007110)) {
        SetSpEffect(10000, 160704990);
    }

    if (!EventFlag(24007110)) {
        ClearSpEffect(10000, 160704990);
    }

    // Mask of the Child
    if (EventFlag(24007111)) {
        SetSpEffect(10000, 160705000);
    }

    if (!EventFlag(24007111)) {
        ClearSpEffect(10000, 160705000);
    }

    // Demon Cleric Mask
    if (EventFlag(24007112)) {
        SetSpEffect(10000, 160705010);
    }

    if (!EventFlag(24007112)) {
        ClearSpEffect(10000, 160705010);
    }

    // Mask of Horror
    if (EventFlag(24007113)) {
        SetSpEffect(10000, 160705020);
    }

    if (!EventFlag(24007113)) {
        ClearSpEffect(10000, 160705020);
    }

    // Mask of Cruelty
    if (EventFlag(24007114)) {
        SetSpEffect(10000, 160705030);
    }

    if (!EventFlag(24007114)) {
        ClearSpEffect(10000, 160705030);
    }

    // Mask of Serenity
    if (EventFlag(24007115)) {
        SetSpEffect(10000, 160705040);
    }

    if (!EventFlag(24007115)) {
        ClearSpEffect(10000, 160705040);
    }

    // Mask of War
    if (EventFlag(24007116)) {
        SetSpEffect(10000, 160705050);
    }

    if (!EventFlag(24007116)) {
        ClearSpEffect(10000, 160705050);
    }

    // Faraam
    if (EventFlag(24007117)) {
        SetSpEffect(10000, 160705060);
    }

    if (!EventFlag(24007117)) {
        ClearSpEffect(10000, 160705060);
    }

    // Alva
    if (EventFlag(24007118)) {
        SetSpEffect(10000, 160705070);
    }

    if (!EventFlag(24007118)) {
        ClearSpEffect(10000, 160705070);
    }

    // Attendant
    if (EventFlag(24007119)) {
        SetSpEffect(10000, 160705080);
    }

    if (!EventFlag(24007119)) {
        ClearSpEffect(10000, 160705080);
    }

    // Footman
    if (EventFlag(24007120)) {
        SetSpEffect(10000, 160705090);
    }

    if (!EventFlag(24007120)) {
        ClearSpEffect(10000, 160705090);
    }

    // Outrider
    if (EventFlag(24007121)) {
        SetSpEffect(10000, 160705100);
    }

    if (!EventFlag(24007121)) {
        ClearSpEffect(10000, 160705100);
    }

    // Dark
    if (EventFlag(24007122)) {
        SetSpEffect(10000, 160705110);
    }

    if (!EventFlag(24007122)) {
        ClearSpEffect(10000, 160705110);
    }

    // Skull Mask
    if (EventFlag(24007123)) {
        SetSpEffect(10000, 160705120);
    }

    if (!EventFlag(24007123)) {
        ClearSpEffect(10000, 160705120);
    }

    // Suspicious Gold Mask
    if (EventFlag(24007124)) {
        SetSpEffect(10000, 160705130);
    }

    if (!EventFlag(24007124)) {
        ClearSpEffect(10000, 160705130);
    }

    // Undead Legion
    if (EventFlag(24007125)) {
        SetSpEffect(10000, 160705140);
    }

    if (!EventFlag(24007125)) {
        ClearSpEffect(10000, 160705140);
    }

    // Fallen Mirrah
    if (EventFlag(24007126)) {
        SetSpEffect(10000, 160705150);
    }

    if (!EventFlag(24007126)) {
        ClearSpEffect(10000, 160705150);
    }

    // Herald
    if (EventFlag(24007127)) {
        SetSpEffect(10000, 160705160);
    }

    if (!EventFlag(24007127)) {
        ClearSpEffect(10000, 160705160);
    }

    // Fallen Knight
    if (EventFlag(24007128)) {
        SetSpEffect(10000, 160705170);
    }

    if (!EventFlag(24007128)) {
        ClearSpEffect(10000, 160705170);
    }

    // Hallowed Knight
    if (EventFlag(24007129)) {
        SetSpEffect(10000, 160705180);
    }

    if (!EventFlag(24007129)) {
        ClearSpEffect(10000, 160705180);
    }

    // Forlorn
    if (EventFlag(24007130)) {
        SetSpEffect(10000, 160705190);
    }

    if (!EventFlag(24007130)) {
        ClearSpEffect(10000, 160705190);
    }

    // Aurous
    if (EventFlag(24007131)) {
        SetSpEffect(10000, 160705200);
    }

    if (!EventFlag(24007131)) {
        ClearSpEffect(10000, 160705200);
    }

    // Sun
    if (EventFlag(24007132)) {
        SetSpEffect(10000, 160705210);
    }

    if (!EventFlag(24007132)) {
        ClearSpEffect(10000, 160705210);
    }

    // Fire Witch
    if (EventFlag(24007133)) {
        SetSpEffect(10000, 160705220);
    }

    if (!EventFlag(24007133)) {
        ClearSpEffect(10000, 160705220);
    }

    // Channeler
    if (EventFlag(24007134)) {
        SetSpEffect(10000, 160705230);
    }

    if (!EventFlag(24007134)) {
        ClearSpEffect(10000, 160705230);
    }

    // Chain
    if (EventFlag(24007135)) {
        SetSpEffect(10000, 160705240);
    }

    if (!EventFlag(24007135)) {
        ClearSpEffect(10000, 160705240);
    }

    // Vilhelm
    if (EventFlag(24007136)) {
        SetSpEffect(10000, 160705250);
    }

    if (!EventFlag(24007136)) {
        ClearSpEffect(10000, 160705250);
    }

    // Bone Ash
    if (EventFlag(24007137)) {
        SetSpEffect(10000, 160705260);
    }

    if (!EventFlag(24007137)) {
        ClearSpEffect(10000, 160705260);
    }

    // Varangian
    if (EventFlag(24007138)) {
        SetSpEffect(10000, 160705270);
    }

    if (!EventFlag(24007138)) {
        ClearSpEffect(10000, 160705270);
    }

    // Thorolund
    if (EventFlag(24007139)) {
        SetSpEffect(10000, 160705280);
    }

    if (!EventFlag(24007139)) {
        ClearSpEffect(10000, 160705280);
    }

    // Bear
    if (EventFlag(24007140)) {
        SetSpEffect(10000, 160705290);
    }

    if (!EventFlag(24007140)) {
        ClearSpEffect(10000, 160705290);
    }

    // Wolnir's Crown
    if (EventFlag(24007141)) {
        SetSpEffect(10000, 160705300);
    }

    if (!EventFlag(24007141)) {
        ClearSpEffect(10000, 160705300);
    }

    // Crown of Illusions
    if (EventFlag(24007142)) {
        SetSpEffect(10000, 160705310);
    }

    if (!EventFlag(24007142)) {
        ClearSpEffect(10000, 160705310);
    }

    // Northern
    if (EventFlag(24007143)) {
        SetSpEffect(10000, 160705320);
    }

    if (!EventFlag(24007143)) {
        ClearSpEffect(10000, 160705320);
    }

    // Slave Knight
    if (EventFlag(24007144)) {
        SetSpEffect(10000, 160705330);
    }

    if (!EventFlag(24007144)) {
        ClearSpEffect(10000, 160705330);
    }

    // Nameless King
    if (EventFlag(24007145)) {
        SetSpEffect(10000, 160705340);
    }

    if (!EventFlag(24007145)) {
        ClearSpEffect(10000, 160705340);
    }

    // Courtier
    if (EventFlag(24007146)) {
        SetSpEffect(10000, 160705350);
    }

    if (!EventFlag(24007146)) {
        ClearSpEffect(10000, 160705350);
    }

    // Follower
    if (EventFlag(24007147)) {
        SetSpEffect(10000, 160705360);
    }

    if (!EventFlag(24007147)) {
        ClearSpEffect(10000, 160705360);
    }

    // Royal Soldier
    if (EventFlag(24007148)) {
        SetSpEffect(10000, 160705370);
    }

    if (!EventFlag(24007148)) {
        ClearSpEffect(10000, 160705370);
    }

    // Pontiff Knight
    if (EventFlag(24007149)) {
        SetSpEffect(10000, 160705380);
    }

    if (!EventFlag(24007149)) {
        ClearSpEffect(10000, 160705380);
    }

    // Dancer
    if (EventFlag(24007150)) {
        SetSpEffect(10000, 160705390);
    }

    if (!EventFlag(24007150)) {
        ClearSpEffect(10000, 160705390);
    }

    // Evangelist
    if (EventFlag(24007152)) {
        SetSpEffect(10000, 160705410);
    }

    if (!EventFlag(24007152)) {
        ClearSpEffect(10000, 160705410);
    }

    // Mirrah
    if (EventFlag(24007153)) {
        SetSpEffect(10000, 160705420);
    }

    if (!EventFlag(24007153)) {
        ClearSpEffect(10000, 160705420);
    }

    // Hard Leather
    if (EventFlag(24007154)) {
        SetSpEffect(10000, 160705430);
    }

    if (!EventFlag(24007154)) {
        ClearSpEffect(10000, 160705430);
    }

    // Jailer
    if (EventFlag(24007155)) {
        SetSpEffect(10000, 160705440);
    }

    if (!EventFlag(24007155)) {
        ClearSpEffect(10000, 160705440);
    }

    // Black
    if (EventFlag(24007156)) {
        SetSpEffect(10000, 160705450);
    }

    if (!EventFlag(24007156)) {
        ClearSpEffect(10000, 160705450);
    }

    // Sellsword
    if (EventFlag(24007157)) {
        SetSpEffect(10000, 160705460);
    }

    if (!EventFlag(24007157)) {
        ClearSpEffect(10000, 160705460);
    }

    // Vileblood
    if (EventFlag(24007158)) {
        SetSpEffect(10000, 160705470);
    }

    if (!EventFlag(24007158)) {
        ClearSpEffect(10000, 160705470);
    }

    // Sunless
    if (EventFlag(24007159)) {
        SetSpEffect(10000, 160705480);
    }

    if (!EventFlag(24007159)) {
        ClearSpEffect(10000, 160705480);
    }

    // Leonhard
    if (EventFlag(24007160)) {
        SetSpEffect(10000, 160705490);
    }

    if (!EventFlag(24007160)) {
        ClearSpEffect(10000, 160705490);
    }

    // Xanthous
    if (EventFlag(24007161)) {
        SetSpEffect(10000, 160705500);
    }

    if (!EventFlag(24007161)) {
        ClearSpEffect(10000, 160705500);
    }

    // White Preacher
    if (EventFlag(24007162)) {
        SetSpEffect(10000, 160705510);
    }

    if (!EventFlag(24007162)) {
        ClearSpEffect(10000, 160705510);
    }

    // Poisonhorn Cap
    if (EventFlag(24007163)) {
        SetSpEffect(10000, 160705520);
    }

    if (!EventFlag(24007163)) {
        ClearSpEffect(10000, 160705520);
    }

    // Hollow Head
    if (EventFlag(24007164)) {
        SetSpEffect(10000, 160705530);
    }

    if (!EventFlag(24007164)) {
        ClearSpEffect(10000, 160705530);
    }

    // Basilisk Cap
    if (EventFlag(24007165)) {
        SetSpEffect(10000, 160705540);
    }

    if (!EventFlag(24007165)) {
        ClearSpEffect(10000, 160705540);
    }

    // Vagabond
    if (EventFlag(24007166)) {
        SetSpEffect(10000, 160705550);
    }

    if (!EventFlag(24007166)) {
        ClearSpEffect(10000, 160705550);
    }

    // Raven Mask
    if (EventFlag(24007167)) {
        SetSpEffect(10000, 160705560);
    }

    if (!EventFlag(24007167)) {
        ClearSpEffect(10000, 160705560);
    }

    // Deserter
    if (EventFlag(24007168)) {
        SetSpEffect(10000, 160705570);
    }

    if (!EventFlag(24007168)) {
        ClearSpEffect(10000, 160705570);
    }

    // Deserter Helm
    if (EventFlag(24007169)) {
        SetSpEffect(10000, 160705580);
    }

    if (!EventFlag(24007169)) {
        ClearSpEffect(10000, 160705580);
    }

    // Soldier's Hood
    if (EventFlag(24007170)) {
        SetSpEffect(10000, 160705590);
    }

    if (!EventFlag(24007170)) {
        ClearSpEffect(10000, 160705590);
    }

    // Black Leather
    if (EventFlag(24007171)) {
        SetSpEffect(10000, 160705600);
    }

    if (!EventFlag(24007171)) {
        ClearSpEffect(10000, 160705600);
    }

    // Brigand
    if (EventFlag(24007172)) {
        SetSpEffect(10000, 160705610);
    }

    if (!EventFlag(24007172)) {
        ClearSpEffect(10000, 160705610);
    }

    // Pharis
    if (EventFlag(24007173)) {
        SetSpEffect(10000, 160705620);
    }

    if (!EventFlag(24007173)) {
        ClearSpEffect(10000, 160705620);
    }

    // Shira
    if (EventFlag(24007174)) {
        SetSpEffect(10000, 160705630);
    }

    if (!EventFlag(24007174)) {
        ClearSpEffect(10000, 160705630);
    }

    // Black Hand
    if (EventFlag(24007175)) {
        SetSpEffect(10000, 160705640);
    }

    if (!EventFlag(24007175)) {
        ClearSpEffect(10000, 160705640);
    }

    // Conjurator
    if (EventFlag(24007176)) {
        SetSpEffect(10000, 160705650);
    }

    if (!EventFlag(24007176)) {
        ClearSpEffect(10000, 160705650);
    }

    // Jester
    if (EventFlag(24007177)) {
        SetSpEffect(10000, 160705660);
    }

    if (!EventFlag(24007177)) {
        ClearSpEffect(10000, 160705660);
    }

    // Grotto
    if (EventFlag(24007178)) {
        SetSpEffect(10000, 160705670);
    }

    if (!EventFlag(24007178)) {
        ClearSpEffect(10000, 160705670);
    }

    // Black Straw Hat
    if (EventFlag(24007179)) {
        SetSpEffect(10000, 160705680);
    }

    if (!EventFlag(24007179)) {
        ClearSpEffect(10000, 160705680);
    }

    // Tan Straw Hat
    if (EventFlag(24007180)) {
        SetSpEffect(10000, 160705690);
    }

    if (!EventFlag(24007180)) {
        ClearSpEffect(10000, 160705690);
    }

    // Cleric
    if (EventFlag(24007181)) {
        SetSpEffect(10000, 160705700);
    }

    if (!EventFlag(24007181)) {
        ClearSpEffect(10000, 160705700);
    }

    // Velka's
    if (EventFlag(24007182)) {
        SetSpEffect(10000, 160705710);
    }

    if (!EventFlag(24007182)) {
        ClearSpEffect(10000, 160705710);
    }

    // Astrologist
    if (EventFlag(24007183)) {
        SetSpEffect(10000, 160705720);
    }

    if (!EventFlag(24007183)) {
        ClearSpEffect(10000, 160705720);
    }

    // Worker
    if (EventFlag(24007184)) {
        SetSpEffect(10000, 160705730);
    }

    if (!EventFlag(24007184)) {
        ClearSpEffect(10000, 160705730);
    }

    // Salvador's Hat
    if (EventFlag(24007185)) {
        SetSpEffect(10000, 160705740);
    }

    if (!EventFlag(24007185)) {
        ClearSpEffect(10000, 160705740);
    }

    // Chester
    if (EventFlag(24007186)) {
        SetSpEffect(10000, 160705750);
    }

    if (!EventFlag(24007186)) {
        ClearSpEffect(10000, 160705750);
    }

    // Binded
    if (EventFlag(24007187)) {
        SetSpEffect(10000, 160705760);
    }

    if (!EventFlag(24007187)) {
        ClearSpEffect(10000, 160705760);
    }

    // Thrall Hood
    if (EventFlag(24007188)) {
        SetSpEffect(10000, 160705770);
    }

    if (!EventFlag(24007188)) {
        ClearSpEffect(10000, 160705770);
    }

    // Assassin
    if (EventFlag(24007189)) {
        SetSpEffect(10000, 160705780);
    }

    if (!EventFlag(24007189)) {
        ClearSpEffect(10000, 160705780);
    }

    // Painting Guardian
    if (EventFlag(24007190)) {
        SetSpEffect(10000, 160705790);
    }

    if (!EventFlag(24007190)) {
        ClearSpEffect(10000, 160705790);
    }

    // Serpentine
    if (EventFlag(24007192)) {
        SetSpEffect(10000, 160705810);
    }

    if (!EventFlag(24007192)) {
        ClearSpEffect(10000, 160705810);
    }

    // Scholar
    if (EventFlag(24007193)) {
        SetSpEffect(10000, 160705820);
    }

    if (!EventFlag(24007193)) {
        ClearSpEffect(10000, 160705820);
    }

    // Priest's Cap
    if (EventFlag(24007194)) {
        SetSpEffect(10000, 160705830);
    }

    if (!EventFlag(24007194)) {
        ClearSpEffect(10000, 160705830);
    }

    // Pyromancer
    if (EventFlag(24007195)) {
        SetSpEffect(10000, 160705840);
    }

    if (!EventFlag(24007195)) {
        ClearSpEffect(10000, 160705840);
    }

    // Sack
    if (EventFlag(24007196)) {
        SetSpEffect(10000, 160705850);
    }

    if (!EventFlag(24007196)) {
        ClearSpEffect(10000, 160705850);
    }

    // Dragon Acolyte
    if (EventFlag(24007197)) {
        SetSpEffect(10000, 160705860);
    }

    if (!EventFlag(24007197)) {
        ClearSpEffect(10000, 160705860);
    }

    // Karla
    if (EventFlag(24007198)) {
        SetSpEffect(10000, 160705870);
    }

    if (!EventFlag(24007198)) {
        ClearSpEffect(10000, 160705870);
    }

    // Black Witch
    if (EventFlag(24007199)) {
        SetSpEffect(10000, 160705880);
    }

    if (!EventFlag(24007199)) {
        ClearSpEffect(10000, 160705880);
    }

    // Black Witch Veil
    if (EventFlag(24007200)) {
        SetSpEffect(10000, 160705890);
    }

    if (!EventFlag(24007200)) {
        ClearSpEffect(10000, 160705890);
    }

    // Sorcerer
    if (EventFlag(24007202)) {
        SetSpEffect(10000, 160705910);
    }

    if (!EventFlag(24007202)) {
        ClearSpEffect(10000, 160705910);
    }

    // Court Sorcerer
    if (EventFlag(24007203)) {
        SetSpEffect(10000, 160705920);
    }

    if (!EventFlag(24007203)) {
        ClearSpEffect(10000, 160705920);
    }

    // Old Sorcerer
    if (EventFlag(24007204)) {
        SetSpEffect(10000, 160705930);
    }

    if (!EventFlag(24007204)) {
        ClearSpEffect(10000, 160705930);
    }

    // Venerable Sage
    if (EventFlag(24007205)) {
        SetSpEffect(10000, 160705940);
    }

    if (!EventFlag(24007205)) {
        ClearSpEffect(10000, 160705940);
    }

    // Wanderer
    if (EventFlag(24007207)) {
        SetSpEffect(10000, 160705960);
    }

    if (!EventFlag(24007207)) {
        ClearSpEffect(10000, 160705960);
    }

    // Sage's Hat
    if (EventFlag(24007208)) {
        SetSpEffect(10000, 160705970);
    }

    if (!EventFlag(24007208)) {
        ClearSpEffect(10000, 160705970);
    }

    // Moonlight
    if (EventFlag(24007209)) {
        SetSpEffect(10000, 160705980);
    }

    if (!EventFlag(24007209)) {
        ClearSpEffect(10000, 160705980);
    }

    // Gold-hemmed
    if (EventFlag(24007210)) {
        SetSpEffect(10000, 160705990);
    }

    if (!EventFlag(24007210)) {
        ClearSpEffect(10000, 160705990);
    }

    // Crimson
    if (EventFlag(24007211)) {
        SetSpEffect(10000, 160706000);
    }

    if (!EventFlag(24007211)) {
        ClearSpEffect(10000, 160706000);
    }

    // Pale Shade
    if (EventFlag(24007212)) {
        SetSpEffect(10000, 160706010);
    }

    if (!EventFlag(24007212)) {
        ClearSpEffect(10000, 160706010);
    }

    // Shadow
    if (EventFlag(24007213)) {
        SetSpEffect(10000, 160706020);
    }

    if (!EventFlag(24007213)) {
        ClearSpEffect(10000, 160706020);
    }

    // Maiden
    if (EventFlag(24007214)) {
        SetSpEffect(10000, 160706030);
    }

    if (!EventFlag(24007214)) {
        ClearSpEffect(10000, 160706030);
    }

    // Hexer
    if (EventFlag(24007215)) {
        SetSpEffect(10000, 160706040);
    }

    if (!EventFlag(24007215)) {
        ClearSpEffect(10000, 160706040);
    }

    // Cornyx's
    if (EventFlag(24007216)) {
        SetSpEffect(10000, 160706050);
    }

    if (!EventFlag(24007216)) {
        ClearSpEffect(10000, 160706050);
    }

    // Grave Warden
    if (EventFlag(24007217)) {
        SetSpEffect(10000, 160706060);
    }

    if (!EventFlag(24007217)) {
        ClearSpEffect(10000, 160706060);
    }

    // Ordained
    if (EventFlag(24007218)) {
        SetSpEffect(10000, 160706070);
    }

    if (!EventFlag(24007218)) {
        ClearSpEffect(10000, 160706070);
    }

    // Desert Pyromancer
    if (EventFlag(24007219)) {
        SetSpEffect(10000, 160706080);
    }

    if (!EventFlag(24007219)) {
        ClearSpEffect(10000, 160706080);
    }

    // Manikin
    if (EventFlag(24007220)) {
        SetSpEffect(10000, 160706090);
    }

    if (!EventFlag(24007220)) {
        ClearSpEffect(10000, 160706090);
    }

    // Crude Manikin Mask
    if (EventFlag(24007221)) {
        SetSpEffect(10000, 160706100);
    }

    if (!EventFlag(24007221)) {
        ClearSpEffect(10000, 160706100);
    }

    // Archdeacon
    if (EventFlag(24007222)) {
        SetSpEffect(10000, 160706110);
    }

    if (!EventFlag(24007222)) {
        ClearSpEffect(10000, 160706110);
    }

    // Prayer
    if (EventFlag(24007223)) {
        SetSpEffect(10000, 160706120);
    }

    if (!EventFlag(24007223)) {
        ClearSpEffect(10000, 160706120);
    }

    // Fire Keeper
    if (EventFlag(24007224)) {
        SetSpEffect(10000, 160706130);
    }

    if (!EventFlag(24007224)) {
        ClearSpEffect(10000, 160706130);
    }

    // Blindfold Mask
    if (EventFlag(24007225)) {
        SetSpEffect(10000, 160706140);
    }

    if (!EventFlag(24007225)) {
        ClearSpEffect(10000, 160706140);
    }

    // Carthus Blindfold
    if (EventFlag(24007226)) {
        SetSpEffect(10000, 160706150);
    }

    if (!EventFlag(24007226)) {
        ClearSpEffect(10000, 160706150);
    }

    // Antiquated
    if (EventFlag(24007227)) {
        SetSpEffect(10000, 160706160);
    }

    if (!EventFlag(24007227)) {
        ClearSpEffect(10000, 160706160);
    }

    // Master
    if (EventFlag(24007229)) {
        SetSpEffect(10000, 160706180);
    }

    if (!EventFlag(24007229)) {
        ClearSpEffect(10000, 160706180);
    }

    // Saint
    if (EventFlag(24007231)) {
        SetSpEffect(10000, 160706200);
    }

    if (!EventFlag(24007231)) {
        ClearSpEffect(10000, 160706200);
    }

    // Gallant
    if (EventFlag(24007232)) {
        SetSpEffect(10000, 160706210);
    }

    if (!EventFlag(24007232)) {
        ClearSpEffect(10000, 160706210);
    }

    // Warden
    if (EventFlag(24007233)) {
        SetSpEffect(10000, 160706220);
    }

    if (!EventFlag(24007233)) {
        ClearSpEffect(10000, 160706220);
    }

    // Dull Gold
    if (EventFlag(24007234)) {
        SetSpEffect(10000, 160706230);
    }

    if (!EventFlag(24007234)) {
        ClearSpEffect(10000, 160706230);
    }

    // Fluted
    if (EventFlag(24007235)) {
        SetSpEffect(10000, 160706240);
    }

    if (!EventFlag(24007235)) {
        ClearSpEffect(10000, 160706240);
    }

    // Huntsman
    if (EventFlag(24007236)) {
        SetSpEffect(10000, 160706250);
    }

    if (!EventFlag(24007236)) {
        ClearSpEffect(10000, 160706250);
    }

    // Mirdan
    if (EventFlag(24007237)) {
        SetSpEffect(10000, 160706260);
    }

    if (!EventFlag(24007237)) {
        ClearSpEffect(10000, 160706260);
    }

    // Sentinel
    if (EventFlag(24007238)) {
        SetSpEffect(10000, 160706270);
    }

    if (!EventFlag(24007238)) {
        ClearSpEffect(10000, 160706270);
    }

    // Raggedy
    if (EventFlag(24007239)) {
        SetSpEffect(10000, 160706280);
    }

    if (!EventFlag(24007239)) {
        ClearSpEffect(10000, 160706280);
    }

    // Charlatan
    if (EventFlag(24007240)) {
        SetSpEffect(10000, 160706290);
    }

    if (!EventFlag(24007240)) {
        ClearSpEffect(10000, 160706290);
    }

    // Pickpocket
    if (EventFlag(24007242)) {
        SetSpEffect(10000, 160706310);
    }

    if (!EventFlag(24007242)) {
        ClearSpEffect(10000, 160706310);
    }

    // Nullus
    if (EventFlag(24007244)) {
        SetSpEffect(10000, 160706330);
    }

    if (!EventFlag(24007244)) {
        ClearSpEffect(10000, 160706330);
    }

    // Ironclad
    if (EventFlag(24007245)) {
        SetSpEffect(10000, 160706340);
    }

    if (!EventFlag(24007245)) {
        ClearSpEffect(10000, 160706340);
    }

    // Sanctum
    if (EventFlag(24007246)) {
        SetSpEffect(10000, 160706350);
    }

    if (!EventFlag(24007246)) {
        ClearSpEffect(10000, 160706350);
    }

    // Imported
    if (EventFlag(24007247)) {
        SetSpEffect(10000, 160706360);
    }

    if (!EventFlag(24007247)) {
        ClearSpEffect(10000, 160706360);
    }

    // Stalwart Knight
    if (EventFlag(24007248)) {
        SetSpEffect(10000, 160706370);
    }

    if (!EventFlag(24007248)) {
        ClearSpEffect(10000, 160706370);
    }

    // Okami
    if (EventFlag(24007249)) {
        SetSpEffect(10000, 160706380);
    }

    if (!EventFlag(24007249)) {
        ClearSpEffect(10000, 160706380);
    }

    // Eastern General
    if (EventFlag(24007250)) {
        SetSpEffect(10000, 160706390);
    }

    if (!EventFlag(24007250)) {
        ClearSpEffect(10000, 160706390);
    }

    // Fallen Prince
    if (EventFlag(24007252)) {
        SetSpEffect(10000, 160706410);
    }

    if (!EventFlag(24007252)) {
        ClearSpEffect(10000, 160706410);
    }

    // Eastern Commander
    if (EventFlag(24007253)) {
        SetSpEffect(10000, 160706420);
    }

    if (!EventFlag(24007253)) {
        ClearSpEffect(10000, 160706420);
    }

    // Lothric Knight (Blue)
    if (EventFlag(24007254)) {
        SetSpEffect(10000, 160706430);
    }

    if (!EventFlag(24007254)) {
        ClearSpEffect(10000, 160706430);
    }

    //  Lothric Knight Helm (Blue)
    if (EventFlag(24007255)) {
        SetSpEffect(10000, 160706440);
    }

    if (!EventFlag(24007255)) {
        ClearSpEffect(10000, 160706440);
    }

    //  Lothric Knight Helm
    if (EventFlag(24007256)) {
        SetSpEffect(10000, 160706460);
    }

    if (!EventFlag(24007256)) {
        ClearSpEffect(10000, 160706460);
    }

    // Consumed King's Knight
    if (EventFlag(24007257)) {
        SetSpEffect(10000, 160706460);
    }

    if (!EventFlag(24007257)) {
        ClearSpEffect(10000, 160706460);
    }

    // Elite Soldier
    if (EventFlag(24007259)) {
        SetSpEffect(10000, 160706480);
    }

    if (!EventFlag(24007259)) {
        ClearSpEffect(10000, 160706480);
    }

    // Gertrude's Knight
    if (EventFlag(24007260)) {
        SetSpEffect(10000, 160706490);
    }

    if (!EventFlag(24007260)) {
        ClearSpEffect(10000, 160706490);
    }

    // Worker (Red)
    if (EventFlag(24007261)) {
        SetSpEffect(10000, 160706500);
    }

    if (!EventFlag(24007261)) {
        ClearSpEffect(10000, 160706500);
    }

    // Profaned Handmaid
    if (EventFlag(24007262)) {
        SetSpEffect(10000, 160706510);
    }

    if (!EventFlag(24007262)) {
        ClearSpEffect(10000, 160706510);
    }

    // Burned Firelink
    if (EventFlag(24007263)) {
        SetSpEffect(10000, 160706520);
    }

    if (!EventFlag(24007263)) {
        ClearSpEffect(10000, 160706520);
    }

    // Lothric Knight (Overgrown)
    if (EventFlag(24007264)) {
        SetSpEffect(10000, 160706530);
    }

    if (!EventFlag(24007264)) {
        ClearSpEffect(10000, 160706530);
    }

    // Herald Helm (Low Visor)
    if (EventFlag(24007265)) {
        SetSpEffect(10000, 160706540);
    }

    if (!EventFlag(24007265)) {
        ClearSpEffect(10000, 160706540);
    }

    // Undead Legion Cap
    if (EventFlag(24007266)) {
        SetSpEffect(10000, 160706550);
    }

    if (!EventFlag(24007266)) {
        ClearSpEffect(10000, 160706550);
    }

    // Carthus Swordsman
    if (EventFlag(24007267)) {
        SetSpEffect(10000, 160706560);
    }

    if (!EventFlag(24007267)) {
        ClearSpEffect(10000, 160706560);
    }

    // Royal Swordsman
    if (EventFlag(24007268)) {
        SetSpEffect(10000, 160706570);
    }

    if (!EventFlag(24007268)) {
        ClearSpEffect(10000, 160706570);
    }

    // Vordt's
    if (EventFlag(24007269)) {
        SetSpEffect(10000, 160706580);
    }

    if (!EventFlag(24007269)) {
        ClearSpEffect(10000, 160706580);
    }

    // Throne Watcher
    if (EventFlag(24007270)) {
        SetSpEffect(10000, 160706590);
    }

    if (!EventFlag(24007270)) {
        ClearSpEffect(10000, 160706590);
    }

    // Throne Defender
    if (EventFlag(24007271)) {
        SetSpEffect(10000, 160706600);
    }

    if (!EventFlag(24007271)) {
        ClearSpEffect(10000, 160706600);
    }

    // Mirrah ALT
    if (EventFlag(24007272)) {
        SetSpEffect(10000, 160706610);
    }

    if (!EventFlag(24007272)) {
        ClearSpEffect(10000, 160706610);
    }

    // Smelter Demon (Blue)
    if (EventFlag(24007273)) {
        SetSpEffect(10000, 160706620);
    }

    if (!EventFlag(24007273)) {
        ClearSpEffect(10000, 160706620);
    }

    // Dragonform DS1
    if (EventFlag(24007274)) {
        SetSpEffect(10000, 160703210);
    }

    if (!EventFlag(24007274)) {
        ClearSpEffect(10000, 160703210);
    }

    RestartEvent();
});

//----------------------------------------------
// Body Armor - Monitor
//----------------------------------------------
$Event(20290, Default, function() {
    WaitFixedTimeSeconds(1.0);

    // Dragonform (DS3)
    if (EventFlag(24007500)) {
        SetSpEffect(10000, 160703101);
    }

    if (!EventFlag(24007500)) {
        ClearSpEffect(10000, 160703101);
    }

    // Bloodborne Hunter
    if (EventFlag(24007501)) {
        SetSpEffect(10000, 160703111);
    }

    if (!EventFlag(24007501)) {
        ClearSpEffect(10000, 160703111);
    }

    // Skeleton (Normal)
    if (EventFlag(24007502)) {
        SetSpEffect(10000, 160703161);
    }

    if (!EventFlag(24007502)) {
        ClearSpEffect(10000, 160703161);
    }

    // Skeleton (Tree)
    if (EventFlag(24007503)) {
        SetSpEffect(10000, 160703171);
    }

    if (!EventFlag(24007503)) {
        ClearSpEffect(10000, 160703171);
    }

    // Skeleton (Peasant)
    if (EventFlag(24007504)) {
        SetSpEffect(10000, 160703181);
    }

    if (!EventFlag(24007504)) {
        ClearSpEffect(10000, 160703181);
    }

    // Skeleton (Overgrown)
    if (EventFlag(24007505)) {
        SetSpEffect(10000, 160703191);
    }

    if (!EventFlag(24007505)) {
        ClearSpEffect(10000, 160703191);
    }

    // Capra Demon
    if (EventFlag(24007506)) {
        SetSpEffect(10000, 160703121);
    }

    if (!EventFlag(24007506)) {
        ClearSpEffect(10000, 160703121);
    }

    // Titanite Demon
    if (EventFlag(24007507)) {
        SetSpEffect(10000, 160703131);
    }

    if (!EventFlag(24007507)) {
        ClearSpEffect(10000, 160703131);
    }

    // Murkman
    if (EventFlag(24007508)) {
        SetSpEffect(10000, 160703141);
    }

    if (!EventFlag(24007508)) {
        ClearSpEffect(10000, 160703141);
    }

    // Humanity Sprite
    if (EventFlag(24007510)) {
        SetSpEffect(10000, 160703151);
    }

    if (!EventFlag(24007510)) {
        ClearSpEffect(10000, 160703151);
    }

    // Havel's
    if (EventFlag(24007511)) {
        SetSpEffect(10000, 160704001);
    }

    if (!EventFlag(24007511)) {
        ClearSpEffect(10000, 160704001);
    }

    // Golem
    if (EventFlag(24007514)) {
        SetSpEffect(10000, 160704031);
    }

    if (!EventFlag(24007514)) {
        ClearSpEffect(10000, 160704031);
    }

    // Giant's
    if (EventFlag(24007515)) {
        SetSpEffect(10000, 160704041);
    }

    if (!EventFlag(24007515)) {
        ClearSpEffect(10000, 160704041);
    }

    // Pursuer's
    if (EventFlag(24007516)) {
        SetSpEffect(10000, 160704051);
    }

    if (!EventFlag(24007516)) {
        ClearSpEffect(10000, 160704051);
    }

    // Smough's
    if (EventFlag(24007517)) {
        SetSpEffect(10000, 160704061);
    }

    if (!EventFlag(24007517)) {
        ClearSpEffect(10000, 160704061);
    }

    // Gundyr's
    if (EventFlag(24007518)) {
        SetSpEffect(10000, 160704071);
    }

    if (!EventFlag(24007518)) {
        ClearSpEffect(10000, 160704071);
    }

    // Brushwood
    if (EventFlag(24007519)) {
        SetSpEffect(10000, 160704081);
    }

    if (!EventFlag(24007519)) {
        ClearSpEffect(10000, 160704081);
    }

    // Winged Knight
    if (EventFlag(24007520)) {
        SetSpEffect(10000, 160704091);
    }

    if (!EventFlag(24007520)) {
        ClearSpEffect(10000, 160704091);
    }

    // Millwood Knight
    if (EventFlag(24007522)) {
        SetSpEffect(10000, 160704111);
    }

    if (!EventFlag(24007522)) {
        ClearSpEffect(10000, 160704111);
    }

    // Mirror Knight
    if (EventFlag(24007523)) {
        SetSpEffect(10000, 160704121);
    }

    if (!EventFlag(24007523)) {
        ClearSpEffect(10000, 160704121);
    }

    // Dragonrider
    if (EventFlag(24007524)) {
        SetSpEffect(10000, 160704131);
    }

    if (!EventFlag(24007524)) {
        ClearSpEffect(10000, 160704131);
    }

    // Catarina
    if (EventFlag(24007525)) {
        SetSpEffect(10000, 160704141);
    }

    if (!EventFlag(24007525)) {
        ClearSpEffect(10000, 160704141);
    }

    // Stone
    if (EventFlag(24007526)) {
        SetSpEffect(10000, 160704151);
    }

    if (!EventFlag(24007526)) {
        ClearSpEffect(10000, 160704151);
    }

    // Guardian
    if (EventFlag(24007527)) {
        SetSpEffect(10000, 160704161);
    }

    if (!EventFlag(24007527)) {
        ClearSpEffect(10000, 160704161);
    }

    // Steel
    if (EventFlag(24007528)) {
        SetSpEffect(10000, 160704171);
    }

    if (!EventFlag(24007528)) {
        ClearSpEffect(10000, 160704171);
    }

    // Cathedral Knight
    if (EventFlag(24007529)) {
        SetSpEffect(10000, 160704181);
    }

    if (!EventFlag(24007529)) {
        ClearSpEffect(10000, 160704181);
    }

    // Dragon Hunter
    if (EventFlag(24007530)) {
        SetSpEffect(10000, 160704191);
    }

    if (!EventFlag(24007530)) {
        ClearSpEffect(10000, 160704191);
    }

    // Black Iron
    if (EventFlag(24007531)) {
        SetSpEffect(10000, 160704201);
    }

    if (!EventFlag(24007531)) {
        ClearSpEffect(10000, 160704201);
    }

    // Iron Dragonslayer
    if (EventFlag(24007532)) {
        SetSpEffect(10000, 160704211);
    }

    if (!EventFlag(24007532)) {
        ClearSpEffect(10000, 160704211);
    }

    // Lapp
    if (EventFlag(24007533)) {
        SetSpEffect(10000, 160704221);
    }

    if (!EventFlag(24007533)) {
        ClearSpEffect(10000, 160704221);
    }

    // Penetrator
    if (EventFlag(24007534)) {
        SetSpEffect(10000, 160704231);
    }

    if (!EventFlag(24007534)) {
        ClearSpEffect(10000, 160704231);
    }

    // Morne's
    if (EventFlag(24007535)) {
        SetSpEffect(10000, 160704241);
    }

    if (!EventFlag(24007535)) {
        ClearSpEffect(10000, 160704241);
    }

    // Paladin
    if (EventFlag(24007536)) {
        SetSpEffect(10000, 160704251);
    }

    if (!EventFlag(24007536)) {
        ClearSpEffect(10000, 160704251);
    }

    // Quicksilver
    if (EventFlag(24007537)) {
        SetSpEffect(10000, 160704261);
    }

    if (!EventFlag(24007537)) {
        ClearSpEffect(10000, 160704261);
    }

    // Executioner
    if (EventFlag(24007538)) {
        SetSpEffect(10000, 160704271);
    }

    if (!EventFlag(24007538)) {
        ClearSpEffect(10000, 160704271);
    }

    // Dragonslayer
    if (EventFlag(24007539)) {
        SetSpEffect(10000, 160704281);
    }

    if (!EventFlag(24007539)) {
        ClearSpEffect(10000, 160704281);
    }

    // Lothric Knight
    if (EventFlag(24007540)) {
        SetSpEffect(10000, 160704291);
    }

    if (!EventFlag(24007540)) {
        ClearSpEffect(10000, 160704291);
    }

    // Harald Legion
    if (EventFlag(24007543)) {
        SetSpEffect(10000, 160704321);
    }

    if (!EventFlag(24007543)) {
        ClearSpEffect(10000, 160704321);
    }

    // Exile
    if (EventFlag(24007544)) {
        SetSpEffect(10000, 160704331);
    }

    if (!EventFlag(24007544)) {
        ClearSpEffect(10000, 160704331);
    }

    // Raime's
    if (EventFlag(24007546)) {
        SetSpEffect(10000, 160704351);
    }

    if (!EventFlag(24007546)) {
        ClearSpEffect(10000, 160704351);
    }

    // Black Knight
    if (EventFlag(24007547)) {
        SetSpEffect(10000, 160704361);
    }

    if (!EventFlag(24007547)) {
        ClearSpEffect(10000, 160704361);
    }

    // Silver Knight
    if (EventFlag(24007548)) {
        SetSpEffect(10000, 160704371);
    }

    if (!EventFlag(24007548)) {
        ClearSpEffect(10000, 160704371);
    }

    // Tarnished Knight
    if (EventFlag(24007549)) {
        SetSpEffect(10000, 160704381);
    }

    if (!EventFlag(24007549)) {
        ClearSpEffect(10000, 160704381);
    }

    // Heide Knight
    if (EventFlag(24007550)) {
        SetSpEffect(10000, 160704391);
    }

    if (!EventFlag(24007550)) {
        ClearSpEffect(10000, 160704391);
    }

    // Syan Knight
    if (EventFlag(24007551)) {
        SetSpEffect(10000, 160704401);
    }

    if (!EventFlag(24007551)) {
        ClearSpEffect(10000, 160704401);
    }

    // Alonne Captain
    if (EventFlag(24007552)) {
        SetSpEffect(10000, 160704411);
    }

    if (!EventFlag(24007552)) {
        ClearSpEffect(10000, 160704411);
    }

    // Gloom
    if (EventFlag(24007553)) {
        SetSpEffect(10000, 160704421);
    }

    if (!EventFlag(24007553)) {
        ClearSpEffect(10000, 160704421);
    }

    // Ruin
    if (EventFlag(24007554)) {
        SetSpEffect(10000, 160704431);
    }

    if (!EventFlag(24007554)) {
        ClearSpEffect(10000, 160704431);
    }

    // Rampart Golem
    if (EventFlag(24007555)) {
        SetSpEffect(10000, 160704441);
    }

    if (!EventFlag(24007555)) {
        ClearSpEffect(10000, 160704441);
    }

    // Gargoyle
    if (EventFlag(24007557)) {
        SetSpEffect(10000, 160704461);
    }

    if (!EventFlag(24007557)) {
        ClearSpEffect(10000, 160704461);
    }

    // Lorian
    if (EventFlag(24007562)) {
        SetSpEffect(10000, 160704511);
    }

    if (!EventFlag(24007562)) {
        ClearSpEffect(10000, 160704511);
    }

    // Great Lord
    if (EventFlag(24007563)) {
        SetSpEffect(10000, 160704521);
    }

    if (!EventFlag(24007563)) {
        ClearSpEffect(10000, 160704521);
    }

    // Drakeblood
    if (EventFlag(24007569)) {
        SetSpEffect(10000, 160704581);
    }

    if (!EventFlag(24007569)) {
        ClearSpEffect(10000, 160704581);
    }

    // Gough's
    if (EventFlag(24007571)) {
        SetSpEffect(10000, 160704601);
    }

    if (!EventFlag(24007571)) {
        ClearSpEffect(10000, 160704601);
    }

    // Mad Warrior
    if (EventFlag(24007572)) {
        SetSpEffect(10000, 160704611);
    }

    if (!EventFlag(24007572)) {
        ClearSpEffect(10000, 160704611);
    }

    // Imperious
    if (EventFlag(24007573)) {
        SetSpEffect(10000, 160704621);
    }

    if (!EventFlag(24007573)) {
        ClearSpEffect(10000, 160704621);
    }

    // Vengarl
    if (EventFlag(24007574)) {
        SetSpEffect(10000, 160704631);
    }

    if (!EventFlag(24007574)) {
        ClearSpEffect(10000, 160704631);
    }

    // Black Dragon
    if (EventFlag(24007577)) {
        SetSpEffect(10000, 160704661);
    }

    if (!EventFlag(24007577)) {
        ClearSpEffect(10000, 160704661);
    }

    // Ringed Knight
    if (EventFlag(24007578)) {
        SetSpEffect(10000, 160704671);
    }

    if (!EventFlag(24007578)) {
        ClearSpEffect(10000, 160704671);
    }

    // Grave Keeper
    if (EventFlag(24007579)) {
        SetSpEffect(10000, 160704681);
    }

    if (!EventFlag(24007579)) {
        ClearSpEffect(10000, 160704681);
    }

    // Ivory King
    if (EventFlag(24007580)) {
        SetSpEffect(10000, 160704691);
    }

    if (!EventFlag(24007580)) {
        ClearSpEffect(10000, 160704691);
    }

    // Yhorm
    if (EventFlag(24007581)) {
        SetSpEffect(10000, 160704701);
    }

    if (!EventFlag(24007581)) {
        ClearSpEffect(10000, 160704701);
    }

    // Smelter Demon
    if (EventFlag(24007582)) {
        SetSpEffect(10000, 160704711);
    }

    if (!EventFlag(24007582)) {
        ClearSpEffect(10000, 160704711);
    }

    // Firelink
    if (EventFlag(24007583)) {
        SetSpEffect(10000, 160704721);
    }

    if (!EventFlag(24007583)) {
        ClearSpEffect(10000, 160704721);
    }

    // Corvian Knight
    if (EventFlag(24007586)) {
        SetSpEffect(10000, 160704751);
    }

    if (!EventFlag(24007586)) {
        ClearSpEffect(10000, 160704751);
    }

    // Eastern
    if (EventFlag(24007587)) {
        SetSpEffect(10000, 160704761);
    }

    if (!EventFlag(24007587)) {
        ClearSpEffect(10000, 160704761);
    }

    // Alonne
    if (EventFlag(24007588)) {
        SetSpEffect(10000, 160704771);
    }

    if (!EventFlag(24007588)) {
        ClearSpEffect(10000, 160704771);
    }

    // Brass
    if (EventFlag(24007589)) {
        SetSpEffect(10000, 160704781);
    }

    if (!EventFlag(24007589)) {
        ClearSpEffect(10000, 160704781);
    }

    // Charred Loyce
    if (EventFlag(24007590)) {
        SetSpEffect(10000, 160704791);
    }

    if (!EventFlag(24007590)) {
        ClearSpEffect(10000, 160704791);
    }

    // Loyce
    if (EventFlag(24007591)) {
        SetSpEffect(10000, 160704801);
    }

    if (!EventFlag(24007591)) {
        ClearSpEffect(10000, 160704801);
    }

    // Favored
    if (EventFlag(24007592)) {
        SetSpEffect(10000, 160704811);
    }

    if (!EventFlag(24007592)) {
        ClearSpEffect(10000, 160704811);
    }

    // King's
    if (EventFlag(24007593)) {
        SetSpEffect(10000, 160704821);
    }

    if (!EventFlag(24007593)) {
        ClearSpEffect(10000, 160704821);
    }

    // Lord's Blade
    if (EventFlag(24007594)) {
        SetSpEffect(10000, 160704831);
    }

    if (!EventFlag(24007594)) {
        ClearSpEffect(10000, 160704831);
    }

    // Sunset
    if (EventFlag(24007595)) {
        SetSpEffect(10000, 160704841);
    }

    if (!EventFlag(24007595)) {
        ClearSpEffect(10000, 160704841);
    }

    // Wolf Knight
    if (EventFlag(24007596)) {
        SetSpEffect(10000, 160704851);
    }

    if (!EventFlag(24007596)) {
        ClearSpEffect(10000, 160704851);
    }

    // Ancient King
    if (EventFlag(24007599)) {
        SetSpEffect(10000, 160704881);
    }

    if (!EventFlag(24007599)) {
        ClearSpEffect(10000, 160704881);
    }

    // Elite Knight
    if (EventFlag(24007602)) {
        SetSpEffect(10000, 160704911);
    }

    if (!EventFlag(24007602)) {
        ClearSpEffect(10000, 160704911);
    }

    // Burial Knight
    if (EventFlag(24007604)) {
        SetSpEffect(10000, 160704931);
    }

    if (!EventFlag(24007604)) {
        ClearSpEffect(10000, 160704931);
    }

    // Adventurer
    if (EventFlag(24007605)) {
        SetSpEffect(10000, 160704941);
    }

    if (!EventFlag(24007605)) {
        ClearSpEffect(10000, 160704941);
    }

    // Knight
    if (EventFlag(24007606)) {
        SetSpEffect(10000, 160704951);
    }

    if (!EventFlag(24007606)) {
        ClearSpEffect(10000, 160704951);
    }

    // Thorn
    if (EventFlag(24007607)) {
        SetSpEffect(10000, 160704961);
    }

    if (!EventFlag(24007607)) {
        ClearSpEffect(10000, 160704961);
    }

    // Nameless Knight
    if (EventFlag(24007608)) {
        SetSpEffect(10000, 160704971);
    }

    if (!EventFlag(24007608)) {
        ClearSpEffect(10000, 160704971);
    }

    // Faraam
    if (EventFlag(24007617)) {
        SetSpEffect(10000, 160705061);
    }

    if (!EventFlag(24007617)) {
        ClearSpEffect(10000, 160705061);
    }

    // Alva
    if (EventFlag(24007618)) {
        SetSpEffect(10000, 160705071);
    }

    if (!EventFlag(24007618)) {
        ClearSpEffect(10000, 160705071);
    }

    // Attendant
    if (EventFlag(24007619)) {
        SetSpEffect(10000, 160705081);
    }

    if (!EventFlag(24007619)) {
        ClearSpEffect(10000, 160705081);
    }

    // Footman
    if (EventFlag(24007620)) {
        SetSpEffect(10000, 160705091);
    }

    if (!EventFlag(24007620)) {
        ClearSpEffect(10000, 160705091);
    }

    // Outrider
    if (EventFlag(24007621)) {
        SetSpEffect(10000, 160705101);
    }

    if (!EventFlag(24007621)) {
        ClearSpEffect(10000, 160705101);
    }

    // Dark
    if (EventFlag(24007622)) {
        SetSpEffect(10000, 160705111);
    }

    if (!EventFlag(24007622)) {
        ClearSpEffect(10000, 160705111);
    }

    // Undead Legion
    if (EventFlag(24007625)) {
        SetSpEffect(10000, 160705141);
    }

    if (!EventFlag(24007625)) {
        ClearSpEffect(10000, 160705141);
    }

    // Fallen Mirrah
    if (EventFlag(24007626)) {
        SetSpEffect(10000, 160705151);
    }

    if (!EventFlag(24007626)) {
        ClearSpEffect(10000, 160705151);
    }

    // Herald
    if (EventFlag(24007627)) {
        SetSpEffect(10000, 160705161);
    }

    if (!EventFlag(24007627)) {
        ClearSpEffect(10000, 160705161);
    }

    // Fallen Knight
    if (EventFlag(24007628)) {
        SetSpEffect(10000, 160705171);
    }

    if (!EventFlag(24007628)) {
        ClearSpEffect(10000, 160705171);
    }

    // Hallowed Knight
    if (EventFlag(24007629)) {
        SetSpEffect(10000, 160705181);
    }

    if (!EventFlag(24007629)) {
        ClearSpEffect(10000, 160705181);
    }

    // Forlorn
    if (EventFlag(24007630)) {
        SetSpEffect(10000, 160705191);
    }

    if (!EventFlag(24007630)) {
        ClearSpEffect(10000, 160705191);
    }

    // Aurous
    if (EventFlag(24007631)) {
        SetSpEffect(10000, 160705201);
    }

    if (!EventFlag(24007631)) {
        ClearSpEffect(10000, 160705201);
    }

    // Sun
    if (EventFlag(24007632)) {
        SetSpEffect(10000, 160705211);
    }

    if (!EventFlag(24007632)) {
        ClearSpEffect(10000, 160705211);
    }

    // Fire Witch
    if (EventFlag(24007633)) {
        SetSpEffect(10000, 160705221);
    }

    if (!EventFlag(24007633)) {
        ClearSpEffect(10000, 160705221);
    }

    // Channeler
    if (EventFlag(24007634)) {
        SetSpEffect(10000, 160705231);
    }

    if (!EventFlag(24007634)) {
        ClearSpEffect(10000, 160705231);
    }

    // Chain
    if (EventFlag(24007635)) {
        SetSpEffect(10000, 160705241);
    }

    if (!EventFlag(24007635)) {
        ClearSpEffect(10000, 160705241);
    }

    // Vilhelm
    if (EventFlag(24007636)) {
        SetSpEffect(10000, 160705251);
    }

    if (!EventFlag(24007636)) {
        ClearSpEffect(10000, 160705251);
    }

    // Bone Ash
    if (EventFlag(24007637)) {
        SetSpEffect(10000, 160705261);
    }

    if (!EventFlag(24007637)) {
        ClearSpEffect(10000, 160705261);
    }

    // Varangian
    if (EventFlag(24007638)) {
        SetSpEffect(10000, 160705271);
    }

    if (!EventFlag(24007638)) {
        ClearSpEffect(10000, 160705271);
    }

    // Thorolund
    if (EventFlag(24007639)) {
        SetSpEffect(10000, 160705281);
    }

    if (!EventFlag(24007639)) {
        ClearSpEffect(10000, 160705281);
    }

    // Bear
    if (EventFlag(24007640)) {
        SetSpEffect(10000, 160705291);
    }

    if (!EventFlag(24007640)) {
        ClearSpEffect(10000, 160705291);
    }

    // Northern
    if (EventFlag(24007643)) {
        SetSpEffect(10000, 160705321);
    }

    if (!EventFlag(24007643)) {
        ClearSpEffect(10000, 160705321);
    }

    // Slave Knight
    if (EventFlag(24007644)) {
        SetSpEffect(10000, 160705331);
    }

    if (!EventFlag(24007644)) {
        ClearSpEffect(10000, 160705331);
    }

    // Nameless King
    if (EventFlag(24007645)) {
        SetSpEffect(10000, 160705341);
    }

    if (!EventFlag(24007645)) {
        ClearSpEffect(10000, 160705341);
    }

    // Courtier
    if (EventFlag(24007646)) {
        SetSpEffect(10000, 160705351);
    }

    if (!EventFlag(24007646)) {
        ClearSpEffect(10000, 160705351);
    }

    // Follower
    if (EventFlag(24007647)) {
        SetSpEffect(10000, 160705361);
    }

    if (!EventFlag(24007647)) {
        ClearSpEffect(10000, 160705361);
    }

    // Royal Soldier
    if (EventFlag(24007648)) {
        SetSpEffect(10000, 160705371);
    }

    if (!EventFlag(24007648)) {
        ClearSpEffect(10000, 160705371);
    }

    // Pontiff Knight
    if (EventFlag(24007649)) {
        SetSpEffect(10000, 160705381);
    }

    if (!EventFlag(24007649)) {
        ClearSpEffect(10000, 160705381);
    }

    // Dancer
    if (EventFlag(24007650)) {
        SetSpEffect(10000, 160705391);
    }

    if (!EventFlag(24007650)) {
        ClearSpEffect(10000, 160705391);
    }

    // Evangelist
    if (EventFlag(24007652)) {
        SetSpEffect(10000, 160705411);
    }

    if (!EventFlag(24007652)) {
        ClearSpEffect(10000, 160705411);
    }

    // Mirrah
    if (EventFlag(24007653)) {
        SetSpEffect(10000, 160705421);
    }

    if (!EventFlag(24007653)) {
        ClearSpEffect(10000, 160705421);
    }

    // Hard Leather
    if (EventFlag(24007654)) {
        SetSpEffect(10000, 160705431);
    }

    if (!EventFlag(24007654)) {
        ClearSpEffect(10000, 160705431);
    }

    // Jailer
    if (EventFlag(24007655)) {
        SetSpEffect(10000, 160705441);
    }

    if (!EventFlag(24007655)) {
        ClearSpEffect(10000, 160705441);
    }

    // Black
    if (EventFlag(24007656)) {
        SetSpEffect(10000, 160705451);
    }

    if (!EventFlag(24007656)) {
        ClearSpEffect(10000, 160705451);
    }

    // Sellsword
    if (EventFlag(24007657)) {
        SetSpEffect(10000, 160705461);
    }

    if (!EventFlag(24007657)) {
        ClearSpEffect(10000, 160705461);
    }

    // Vileblood
    if (EventFlag(24007658)) {
        SetSpEffect(10000, 160705471);
    }

    if (!EventFlag(24007658)) {
        ClearSpEffect(10000, 160705471);
    }

    // Sunless
    if (EventFlag(24007659)) {
        SetSpEffect(10000, 160705481);
    }

    if (!EventFlag(24007659)) {
        ClearSpEffect(10000, 160705481);
    }

    // Leonhard
    if (EventFlag(24007660)) {
        SetSpEffect(10000, 160705491);
    }

    if (!EventFlag(24007660)) {
        ClearSpEffect(10000, 160705491);
    }

    // Xanthous
    if (EventFlag(24007661)) {
        SetSpEffect(10000, 160705501);
    }

    if (!EventFlag(24007661)) {
        ClearSpEffect(10000, 160705501);
    }

    // Deserter
    if (EventFlag(24007668)) {
        SetSpEffect(10000, 160705571);
    }

    if (!EventFlag(24007668)) {
        ClearSpEffect(10000, 160705571);
    }

    // Black Leather
    if (EventFlag(24007671)) {
        SetSpEffect(10000, 160705601);
    }

    if (!EventFlag(24007671)) {
        ClearSpEffect(10000, 160705601);
    }

    // Brigand
    if (EventFlag(24007672)) {
        SetSpEffect(10000, 160705611);
    }

    if (!EventFlag(24007672)) {
        ClearSpEffect(10000, 160705611);
    }

    // Pharis
    if (EventFlag(24007673)) {
        SetSpEffect(10000, 160705621);
    }

    if (!EventFlag(24007673)) {
        ClearSpEffect(10000, 160705621);
    }

    // Shira
    if (EventFlag(24007674)) {
        SetSpEffect(10000, 160705631);
    }

    if (!EventFlag(24007674)) {
        ClearSpEffect(10000, 160705631);
    }

    // Black Hand
    if (EventFlag(24007675)) {
        SetSpEffect(10000, 160705641);
    }

    if (!EventFlag(24007675)) {
        ClearSpEffect(10000, 160705641);
    }

    // Conjurator
    if (EventFlag(24007676)) {
        SetSpEffect(10000, 160705651);
    }

    if (!EventFlag(24007676)) {
        ClearSpEffect(10000, 160705651);
    }

    // Jester
    if (EventFlag(24007677)) {
        SetSpEffect(10000, 160705661);
    }

    if (!EventFlag(24007677)) {
        ClearSpEffect(10000, 160705661);
    }

    // Grotto
    if (EventFlag(24007678)) {
        SetSpEffect(10000, 160705671);
    }

    if (!EventFlag(24007678)) {
        ClearSpEffect(10000, 160705671);
    }

    // Cleric
    if (EventFlag(24007681)) {
        SetSpEffect(10000, 160705701);
    }

    if (!EventFlag(24007681)) {
        ClearSpEffect(10000, 160705701);
    }

    // Velka's
    if (EventFlag(24007682)) {
        SetSpEffect(10000, 160705711);
    }

    if (!EventFlag(24007682)) {
        ClearSpEffect(10000, 160705711);
    }

    // Astrologist
    if (EventFlag(24007683)) {
        SetSpEffect(10000, 160705721);
    }

    if (!EventFlag(24007683)) {
        ClearSpEffect(10000, 160705721);
    }

    // Worker
    if (EventFlag(24007684)) {
        SetSpEffect(10000, 160705731);
    }

    if (!EventFlag(24007684)) {
        ClearSpEffect(10000, 160705731);
    }

    // Chester
    if (EventFlag(24007686)) {
        SetSpEffect(10000, 160705751);
    }

    if (!EventFlag(24007686)) {
        ClearSpEffect(10000, 160705751);
    }

    // Binded
    if (EventFlag(24007687)) {
        SetSpEffect(10000, 160705761);
    }

    if (!EventFlag(24007687)) {
        ClearSpEffect(10000, 160705761);
    }

    // Assassin
    if (EventFlag(24007689)) {
        SetSpEffect(10000, 160705781);
    }

    if (!EventFlag(24007689)) {
        ClearSpEffect(10000, 160705781);
    }

    // Painting Guardian
    if (EventFlag(24007690)) {
        SetSpEffect(10000, 160705791);
    }

    if (!EventFlag(24007690)) {
        ClearSpEffect(10000, 160705791);
    }

    // Drang
    if (EventFlag(24007691)) {
        SetSpEffect(10000, 160705801);
    }

    if (!EventFlag(24007691)) {
        ClearSpEffect(10000, 160705801);
    }

    // Serpentine
    if (EventFlag(24007692)) {
        SetSpEffect(10000, 160705811);
    }

    if (!EventFlag(24007692)) {
        ClearSpEffect(10000, 160705811);
    }

    // Scholar
    if (EventFlag(24007693)) {
        SetSpEffect(10000, 160705821);
    }

    if (!EventFlag(24007693)) {
        ClearSpEffect(10000, 160705821);
    }

    // Pyromancer
    if (EventFlag(24007695)) {
        SetSpEffect(10000, 160705841);
    }

    if (!EventFlag(24007695)) {
        ClearSpEffect(10000, 160705841);
    }

    // Dragon Acolyte
    if (EventFlag(24007697)) {
        SetSpEffect(10000, 160705861);
    }

    if (!EventFlag(24007697)) {
        ClearSpEffect(10000, 160705861);
    }

    // Karla
    if (EventFlag(24007698)) {
        SetSpEffect(10000, 160705871);
    }

    if (!EventFlag(24007698)) {
        ClearSpEffect(10000, 160705871);
    }

    // Black Witch
    if (EventFlag(24007699)) {
        SetSpEffect(10000, 160705881);
    }

    if (!EventFlag(24007699)) {
        ClearSpEffect(10000, 160705881);
    }

    // Rosaria's Dress
    if (EventFlag(24007701)) {
        SetSpEffect(10000, 160705901);
    }

    if (!EventFlag(24007701)) {
        ClearSpEffect(10000, 160705901);
    }

    // Sorcerer
    if (EventFlag(24007702)) {
        SetSpEffect(10000, 160705911);
    }

    if (!EventFlag(24007702)) {
        ClearSpEffect(10000, 160705911);
    }

    // Court Sorcerer
    if (EventFlag(24007703)) {
        SetSpEffect(10000, 160705921);
    }

    if (!EventFlag(24007703)) {
        ClearSpEffect(10000, 160705921);
    }

    // Old Sorcerer
    if (EventFlag(24007704)) {
        SetSpEffect(10000, 160705931);
    }

    if (!EventFlag(24007704)) {
        ClearSpEffect(10000, 160705931);
    }

    // Venerable Sage
    if (EventFlag(24007705)) {
        SetSpEffect(10000, 160705941);
    }

    if (!EventFlag(24007705)) {
        ClearSpEffect(10000, 160705941);
    }

    // Clandestine Coat
    if (EventFlag(24007706)) {
        SetSpEffect(10000, 160705951);
    }

    if (!EventFlag(24007706)) {
        ClearSpEffect(10000, 160705951);
    }

    // Wanderer
    if (EventFlag(24007707)) {
        SetSpEffect(10000, 160705961);
    }

    if (!EventFlag(24007707)) {
        ClearSpEffect(10000, 160705961);
    }

    // Moonlight
    if (EventFlag(24007709)) {
        SetSpEffect(10000, 160705981);
    }

    if (!EventFlag(24007709)) {
        ClearSpEffect(10000, 160705981);
    }

    // Gold-hemmed
    if (EventFlag(24007710)) {
        SetSpEffect(10000, 160705991);
    }

    if (!EventFlag(24007710)) {
        ClearSpEffect(10000, 160705991);
    }

    // Crimson
    if (EventFlag(24007711)) {
        SetSpEffect(10000, 160706001);
    }

    if (!EventFlag(24007711)) {
        ClearSpEffect(10000, 160706001);
    }

    // Pale Shade
    if (EventFlag(24007712)) {
        SetSpEffect(10000, 160706011);
    }

    if (!EventFlag(24007712)) {
        ClearSpEffect(10000, 160706011);
    }

    // Shadow
    if (EventFlag(24007713)) {
        SetSpEffect(10000, 160706021);
    }

    if (!EventFlag(24007713)) {
        ClearSpEffect(10000, 160706021);
    }

    // Maiden
    if (EventFlag(24007714)) {
        SetSpEffect(10000, 160706031);
    }

    if (!EventFlag(24007714)) {
        ClearSpEffect(10000, 160706031);
    }

    // Hexer
    if (EventFlag(24007715)) {
        SetSpEffect(10000, 160706041);
    }

    if (!EventFlag(24007715)) {
        ClearSpEffect(10000, 160706041);
    }

    // Cornyx's
    if (EventFlag(24007716)) {
        SetSpEffect(10000, 160706051);
    }

    if (!EventFlag(24007716)) {
        ClearSpEffect(10000, 160706051);
    }

    // Grave Warden
    if (EventFlag(24007717)) {
        SetSpEffect(10000, 160706061);
    }

    if (!EventFlag(24007717)) {
        ClearSpEffect(10000, 160706061);
    }

    // Ordained
    if (EventFlag(24007718)) {
        SetSpEffect(10000, 160706071);
    }

    if (!EventFlag(24007718)) {
        ClearSpEffect(10000, 160706071);
    }

    // Desert Pyromancer
    if (EventFlag(24007719)) {
        SetSpEffect(10000, 160706081);
    }

    if (!EventFlag(24007719)) {
        ClearSpEffect(10000, 160706081);
    }

    // Manikin
    if (EventFlag(24007720)) {
        SetSpEffect(10000, 160706091);
    }

    if (!EventFlag(24007720)) {
        ClearSpEffect(10000, 160706091);
    }

    // Archdeacon
    if (EventFlag(24007722)) {
        SetSpEffect(10000, 160706111);
    }

    if (!EventFlag(24007722)) {
        ClearSpEffect(10000, 160706111);
    }

    // Prayer
    if (EventFlag(24007723)) {
        SetSpEffect(10000, 160706121);
    }

    if (!EventFlag(24007723)) {
        ClearSpEffect(10000, 160706121);
    }

    // Fire Keeper
    if (EventFlag(24007724)) {
        SetSpEffect(10000, 160706131);
    }

    if (!EventFlag(24007724)) {
        ClearSpEffect(10000, 160706131);
    }

    // Antiquated
    if (EventFlag(24007727)) {
        SetSpEffect(10000, 160706161);
    }

    if (!EventFlag(24007727)) {
        ClearSpEffect(10000, 160706161);
    }

    // Antiquated Plain
    if (EventFlag(24007728)) {
        SetSpEffect(10000, 160706171);
    }

    if (!EventFlag(24007728)) {
        ClearSpEffect(10000, 160706171);
    }

    // Master
    if (EventFlag(24007729)) {
        SetSpEffect(10000, 160706181);
    }

    if (!EventFlag(24007729)) {
        ClearSpEffect(10000, 160706181);
    }

    // Deacon
    if (EventFlag(24007730)) {
        SetSpEffect(10000, 160706191);
    }

    if (!EventFlag(24007730)) {
        ClearSpEffect(10000, 160706191);
    }

    // Saint
    if (EventFlag(24007731)) {
        SetSpEffect(10000, 160706201);
    }

    if (!EventFlag(24007731)) {
        ClearSpEffect(10000, 160706201);
    }

    // Gallant
    if (EventFlag(24007732)) {
        SetSpEffect(10000, 160706211);
    }

    if (!EventFlag(24007732)) {
        ClearSpEffect(10000, 160706211);
    }

    // Warden
    if (EventFlag(24007733)) {
        SetSpEffect(10000, 160706221);
    }

    if (!EventFlag(24007733)) {
        ClearSpEffect(10000, 160706221);
    }

    // Dull Gold
    if (EventFlag(24007734)) {
        SetSpEffect(10000, 160706231);
    }

    if (!EventFlag(24007734)) {
        ClearSpEffect(10000, 160706231);
    }

    // Fluted
    if (EventFlag(24007735)) {
        SetSpEffect(10000, 160706241);
    }

    if (!EventFlag(24007735)) {
        ClearSpEffect(10000, 160706241);
    }

    // Huntsman
    if (EventFlag(24007736)) {
        SetSpEffect(10000, 160706251);
    }

    if (!EventFlag(24007736)) {
        ClearSpEffect(10000, 160706251);
    }

    // Mirdan
    if (EventFlag(24007737)) {
        SetSpEffect(10000, 160706261);
    }

    if (!EventFlag(24007737)) {
        ClearSpEffect(10000, 160706261);
    }

    // Sentinel
    if (EventFlag(24007738)) {
        SetSpEffect(10000, 160706271);
    }

    if (!EventFlag(24007738)) {
        ClearSpEffect(10000, 160706271);
    }

    // Raggedy
    if (EventFlag(24007739)) {
        SetSpEffect(10000, 160706281);
    }

    if (!EventFlag(24007739)) {
        ClearSpEffect(10000, 160706281);
    }

    // Charlatan
    if (EventFlag(24007740)) {
        SetSpEffect(10000, 160706291);
    }

    if (!EventFlag(24007740)) {
        ClearSpEffect(10000, 160706291);
    }

    // Martyr
    if (EventFlag(24007741)) {
        SetSpEffect(10000, 160706301);
    }

    if (!EventFlag(24007741)) {
        ClearSpEffect(10000, 160706301);
    }

    // Pickpocket
    if (EventFlag(24007742)) {
        SetSpEffect(10000, 160706311);
    }

    if (!EventFlag(24007742)) {
        ClearSpEffect(10000, 160706311);
    }

    // Magician
    if (EventFlag(24007743)) {
        SetSpEffect(10000, 160706321);
    }

    if (!EventFlag(24007743)) {
        ClearSpEffect(10000, 160706321);
    }

    // Nullus
    if (EventFlag(24007744)) {
        SetSpEffect(10000, 160706331);
    }

    if (!EventFlag(24007744)) {
        ClearSpEffect(10000, 160706331);
    }

    // Ironclad
    if (EventFlag(24007745)) {
        SetSpEffect(10000, 160706341);
    }

    if (!EventFlag(24007745)) {
        ClearSpEffect(10000, 160706341);
    }

    // Sanctum
    if (EventFlag(24007746)) {
        SetSpEffect(10000, 160706351);
    }

    if (!EventFlag(24007746)) {
        ClearSpEffect(10000, 160706351);
    }

    // Imported
    if (EventFlag(24007747)) {
        SetSpEffect(10000, 160706361);
    }

    if (!EventFlag(24007747)) {
        ClearSpEffect(10000, 160706361);
    }

    // Stalwart Knight
    if (EventFlag(24007748)) {
        SetSpEffect(10000, 160706371);
    }

    if (!EventFlag(24007748)) {
        ClearSpEffect(10000, 160706371);
    }

    // Okami
    if (EventFlag(24007749)) {
        SetSpEffect(10000, 160706381);
    }

    if (!EventFlag(24007749)) {
        ClearSpEffect(10000, 160706381);
    }

    // Eastern General
    if (EventFlag(24007750)) {
        SetSpEffect(10000, 160706391);
    }

    if (!EventFlag(24007750)) {
        ClearSpEffect(10000, 160706391);
    }

    // Eastern Wolf
    if (EventFlag(24007751)) {
        SetSpEffect(10000, 160706401);
    }

    if (!EventFlag(24007751)) {
        ClearSpEffect(10000, 160706401);
    }

    // Fallen Prince
    if (EventFlag(24007752)) {
        SetSpEffect(10000, 160706411);
    }

    if (!EventFlag(24007752)) {
        ClearSpEffect(10000, 160706411);
    }

    // Eastern Commander
    if (EventFlag(24007753)) {
        SetSpEffect(10000, 160706421);
    }

    if (!EventFlag(24007753)) {
        ClearSpEffect(10000, 160706421);
    }

    // Lothric Knight (Blue)
    if (EventFlag(24007754)) {
        SetSpEffect(10000, 160706431);
    }

    if (!EventFlag(24007754)) {
        ClearSpEffect(10000, 160706431);
    }

    // Consumed King's Knight
    if (EventFlag(24007757)) {
        SetSpEffect(10000, 160706461);
    }

    if (!EventFlag(24007757)) {
        ClearSpEffect(10000, 160706461);
    }

    // Elite Deacon
    if (EventFlag(24007758)) {
        SetSpEffect(10000, 160706471);
    }

    if (!EventFlag(24007758)) {
        ClearSpEffect(10000, 160706471);
    }

    // Elite Soldier
    if (EventFlag(24007759)) {
        SetSpEffect(10000, 160706481);
    }

    if (!EventFlag(24007759)) {
        ClearSpEffect(10000, 160706481);
    }

    // Gertrude's Knight
    if (EventFlag(24007760)) {
        SetSpEffect(10000, 160706491);
    }

    if (!EventFlag(24007760)) {
        ClearSpEffect(10000, 160706491);
    }

    // Worker (Red)
    if (EventFlag(24007761)) {
        SetSpEffect(10000, 160706501);
    }

    if (!EventFlag(24007761)) {
        ClearSpEffect(10000, 160706501);
    }

    // Profaned Handmaid
    if (EventFlag(24007762)) {
        SetSpEffect(10000, 160706511);
    }

    if (!EventFlag(24007762)) {
        ClearSpEffect(10000, 160706511);
    }

    // Burned Firelink
    if (EventFlag(24007763)) {
        SetSpEffect(10000, 160706521);
    }

    if (!EventFlag(24007763)) {
        ClearSpEffect(10000, 160706521);
    }

    // Lothric Knight (Overgrown)
    if (EventFlag(24007764)) {
        SetSpEffect(10000, 160706531);
    }

    if (!EventFlag(24007764)) {
        ClearSpEffect(10000, 160706531);
    }

    // Carthus Swordsman
    if (EventFlag(24007767)) {
        SetSpEffect(10000, 160706561);
    }

    if (!EventFlag(24007767)) {
        ClearSpEffect(10000, 160706561);
    }

    // Royal Swordsman
    if (EventFlag(24007768)) {
        SetSpEffect(10000, 160706571);
    }

    if (!EventFlag(24007768)) {
        ClearSpEffect(10000, 160706571);
    }

    // Vordt's
    if (EventFlag(24007769)) {
        SetSpEffect(10000, 160706581);
    }

    if (!EventFlag(24007769)) {
        ClearSpEffect(10000, 160706581);
    }

    // Throne Watcher
    if (EventFlag(24007770)) {
        SetSpEffect(10000, 160706591);
    }

    if (!EventFlag(24007770)) {
        ClearSpEffect(10000, 160706591);
    }

    // Throne Defender
    if (EventFlag(24007771)) {
        SetSpEffect(10000, 160706601);
    }

    if (!EventFlag(24007771)) {
        ClearSpEffect(10000, 160706601);
    }

    // Smelter Demon (Blue)
    if (EventFlag(24007773)) {
        SetSpEffect(10000, 160706621);
    }

    if (!EventFlag(24007773)) {
        ClearSpEffect(10000, 160706621);
    }

    // Dragonform DS1
    if (EventFlag(24007774)) {
        SetSpEffect(10000, 160703211);
    }

    if (!EventFlag(24007774)) {
        ClearSpEffect(10000, 160703211);
    }

    RestartEvent();
});

//----------------------------------------------
// Perspective - Monitor
//----------------------------------------------
$Event(20600, Default, function() {
    WaitFixedTimeSeconds(1.0);

    // Wait for Numbness to expire if it has been used
    WaitFor(!CharacterHasSpEffect(10000, 160500060));

    if (EventFlag(25007371)) {
        ChangeCamera(-1, -1);
        SetEventFlag(25007371, OFF);
    }

    // Skip if no override is set
    if (!EventFlag(25007370)) {

        // Standard 
        if (EventFlag(25007360)) {
            if (EventFlag(25007365)) {
                ChangeCamera(30000, 30000);
            }
        }

        if (EventFlag(25007360)) {
            if (EventFlag(25007366)) {
                ChangeCamera(30001, 30001);
            }
        }

        if (EventFlag(25007360)) {
            if (EventFlag(25007367)) {
                ChangeCamera(30002, 30002);
            }
        }

        if (EventFlag(25007360)) {
            if (EventFlag(25007368)) {
                ChangeCamera(30003, 30003);
            }
        }

        if (EventFlag(25007360)) {
            if (EventFlag(25007369)) {
                ChangeCamera(30004, 30004);
            }
        }

        // Narrow
        if (EventFlag(25007361)) {
            if (EventFlag(25007365)) {
                ChangeCamera(30010, 30010);
            }
        }

        if (EventFlag(25007361)) {
            if (EventFlag(25007366)) {
                ChangeCamera(30011, 30011);
            }
        }

        if (EventFlag(25007361)) {
            if (EventFlag(25007367)) {
                ChangeCamera(30012, 30012);
            }
        }

        if (EventFlag(25007361)) {
            if (EventFlag(25007368)) {
                ChangeCamera(30013, 30013);
            }
        }

        if (EventFlag(25007361)) {
            if (EventFlag(25007369)) {
                ChangeCamera(30014, 30014);
            }
        }

        // Very Narrow
        if (EventFlag(25007362)) {
            if (EventFlag(25007365)) {
                ChangeCamera(30020, 30020);
            }
        }

        if (EventFlag(25007362)) {
            if (EventFlag(25007366)) {
                ChangeCamera(30021, 30021);
            }
        }

        if (EventFlag(25007362)) {
            if (EventFlag(25007367)) {
                ChangeCamera(30022, 30022);
            }
        }

        if (EventFlag(25007362)) {
            if (EventFlag(25007368)) {
                ChangeCamera(30023, 30023);
            }
        }

        if (EventFlag(25007362)) {
            if (EventFlag(25007369)) {
                ChangeCamera(30024, 30024);
            }
        }

        // Wide
        if (EventFlag(25007363)) {
            if (EventFlag(25007365)) {
                ChangeCamera(30030, 30030);
            }
        }

        if (EventFlag(25007363)) {
            if (EventFlag(25007366)) {
                ChangeCamera(30031, 30031);
            }
        }

        if (EventFlag(25007363)) {
            if (EventFlag(25007367)) {
                ChangeCamera(30032, 30032);
            }
        }

        if (EventFlag(25007363)) {
            if (EventFlag(25007368)) {
                ChangeCamera(30033, 30033);
            }
        }

        if (EventFlag(25007363)) {
            if (EventFlag(25007369)) {
                ChangeCamera(30034, 30034);
            }
        }

        // Very Wide
        if (EventFlag(25007364)) {
            if (EventFlag(25007365)) {
                ChangeCamera(30040, 30040);
            }
        }

        if (EventFlag(25007364)) {
            if (EventFlag(25007366)) {
                ChangeCamera(30041, 30041);
            }
        }

        if (EventFlag(25007364)) {
            if (EventFlag(25007367)) {
                ChangeCamera(30042, 30042);
            }
        }

        if (EventFlag(25007364)) {
            if (EventFlag(25007368)) {
                ChangeCamera(30043, 30043);
            }
        }

        if (EventFlag(25007364)) {
            if (EventFlag(25007369)) {
                ChangeCamera(30044, 30044);
            }
        }
    }

L0:

    RestartEvent();
});

//----------------------------------------------
// Perspective - Add Standard FOV flag if only Camera Distance is set
//----------------------------------------------
$Event(20601, Default, function() {
    WaitFor(
        !EventFlag(25007360)
            && !EventFlag(25007361)
            && !EventFlag(25007362)
            && !EventFlag(25007363)
            && !EventFlag(25007364));

    WaitFor(
        EventFlag(25007365)
            || EventFlag(25007366)
            || EventFlag(25007367)
            || EventFlag(25007368)
            || EventFlag(25007369));

    SetEventFlag(25007360, ON);

    RestartEvent();
});

//----------------------------------------------
// Perspective - Numbness
//----------------------------------------------
$Event(20602, Default, function() {
    WaitFor(CharacterHasSpEffect(10000, 160500060));

    ChangeCamera(20000, 20000);

    WaitFor(!CharacterHasSpEffect(10000, 160500060));

    SetEventFlag(25007360, ON);

    RestartEvent();
});
