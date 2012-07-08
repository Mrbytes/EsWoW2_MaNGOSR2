/*Script reservado unicamente para llevar a cabo FIX de las revisiones */

-- Este líneas corrigen varios errores detectados en la tabla script_texts y gossip_texts de mangosR2 --

-- borra líneas duplicadas --
DELETE FROM `script_texts` WHERE `entry`='-1580098';
DELETE FROM `script_texts` WHERE `entry`='-1713741';
DELETE FROM `script_texts` WHERE `entry`='-1999900';
DELETE FROM `script_texts` WHERE `entry`='-1999901';
DELETE FROM `script_texts` WHERE `entry`='-1999903';
DELETE FROM `script_texts` WHERE `entry`='-1999905';
DELETE FROM `script_texts` WHERE `entry`='-1724000';
DELETE FROM `script_texts` WHERE `entry`='-1724001';
DELETE FROM `script_texts` WHERE `entry`='-1724002';
DELETE FROM `script_texts` WHERE `entry`='-1724003';
DELETE FROM `script_texts` WHERE `entry`='-1724004';
DELETE FROM `script_texts` WHERE `entry`='-1724005';
DELETE FROM `script_texts` WHERE `entry`='-1724006';
DELETE FROM `script_texts` WHERE `entry`='-1724007';
DELETE FROM `script_texts` WHERE `entry`='-1724008';
DELETE FROM `script_texts` WHERE `entry`='-1724009';
DELETE FROM `script_texts` WHERE `entry`='-1724024';
DELETE FROM `script_texts` WHERE `entry`='-1724025';
DELETE FROM `script_texts` WHERE `entry`='-1724026';
DELETE FROM `script_texts` WHERE `entry`='-1724027';
DELETE FROM `script_texts` WHERE `entry`='-1724028';
DELETE FROM `script_texts` WHERE `entry`='-1724029';
DELETE FROM `script_texts` WHERE `entry`='-1724030';
DELETE FROM `script_texts` WHERE `entry`='-1724031';
DELETE FROM `script_texts` WHERE `entry`='-1724032';
DELETE FROM `script_texts` WHERE `entry`='-1724010';
DELETE FROM `script_texts` WHERE `entry`='-1724011';
DELETE FROM `script_texts` WHERE `entry`='-1724012';
DELETE FROM `script_texts` WHERE `entry`='-1724013';
DELETE FROM `script_texts` WHERE `entry`='-1724014';
DELETE FROM `script_texts` WHERE `entry`='-1724015';
DELETE FROM `script_texts` WHERE `entry`='-1724016';
DELETE FROM `script_texts` WHERE `entry`='-1724017';
DELETE FROM `script_texts` WHERE `entry`='-1724018';
DELETE FROM `script_texts` WHERE `entry`='-1724019';
DELETE FROM `script_texts` WHERE `entry`='-1724020';
DELETE FROM `script_texts` WHERE `entry`='-1724021';
DELETE FROM `script_texts` WHERE `entry`='-1724022';
DELETE FROM `script_texts` WHERE `entry`='-1724023';
DELETE FROM `script_texts` WHERE `entry`='-1649000';
DELETE FROM `script_texts` WHERE `entry`='-1649002';
DELETE FROM `script_texts` WHERE `entry`='-1649003';
DELETE FROM `script_texts` WHERE `entry`='-1649004';
DELETE FROM `script_texts` WHERE `entry`='-1649005';
DELETE FROM `script_texts` WHERE `entry`='-1649006';
DELETE FROM `script_texts` WHERE `entry`='-1649007';
DELETE FROM `script_texts` WHERE `entry`='-1649008';
DELETE FROM `script_texts` WHERE `entry`='-1649009';
DELETE FROM `script_texts` WHERE `entry`='-1649010';
DELETE FROM `script_texts` WHERE `entry`='-1649011';
DELETE FROM `script_texts` WHERE `entry`='-1649012';
DELETE FROM `script_texts` WHERE `entry`='-1649013';
DELETE FROM `script_texts` WHERE `entry`='-1649014';
DELETE FROM `script_texts` WHERE `entry`='-1649015';
DELETE FROM `script_texts` WHERE `entry`='-1649016';
DELETE FROM `script_texts` WHERE `entry`='-1649017';
DELETE FROM `script_texts` WHERE `entry`='-1649018';
DELETE FROM `script_texts` WHERE `entry`='-1649019';
DELETE FROM `script_texts` WHERE `entry`='-1649020';
DELETE FROM `script_texts` WHERE `entry`='-1649021';
DELETE FROM `script_texts` WHERE `entry`='-1649022';
DELETE FROM `script_texts` WHERE `entry`='-1649023';
DELETE FROM `script_texts` WHERE `entry`='-1649024';
DELETE FROM `script_texts` WHERE `entry`='-1649025';
DELETE FROM `script_texts` WHERE `entry`='-1649026';
DELETE FROM `script_texts` WHERE `entry`='-1649027';
DELETE FROM `script_texts` WHERE `entry`='-1649028';
DELETE FROM `script_texts` WHERE `entry`='-1649029';
DELETE FROM `script_texts` WHERE `entry`='-1649030';
DELETE FROM `script_texts` WHERE `entry`='-1649031';
DELETE FROM `script_texts` WHERE `entry`='-1649032';
DELETE FROM `script_texts` WHERE `entry`='-1649033';
DELETE FROM `script_texts` WHERE `entry`='-1649034';
DELETE FROM `script_texts` WHERE `entry`='-1649035';
DELETE FROM `script_texts` WHERE `entry`='-1649036';
DELETE FROM `script_texts` WHERE `entry`='-1649037';
DELETE FROM `script_texts` WHERE `entry`='-1649038';
DELETE FROM `script_texts` WHERE `entry`='-1649040';
DELETE FROM `script_texts` WHERE `entry`='-1649043';
DELETE FROM `script_texts` WHERE `entry`='-1649045';
DELETE FROM `script_texts` WHERE `entry`='-1649046';
DELETE FROM `script_texts` WHERE `entry`='-1649047';
DELETE FROM `script_texts` WHERE `entry`='-1649056';
DELETE FROM `script_texts` WHERE `entry`='-1649056';
DELETE FROM `script_texts` WHERE `entry`='-1649058';
DELETE FROM `script_texts` WHERE `entry`='-1649059';
DELETE FROM `script_texts` WHERE `entry`='-1649060';
DELETE FROM `script_texts` WHERE `entry`='-1649061';
DELETE FROM `script_texts` WHERE `entry`='-1649062';
DELETE FROM `script_texts` WHERE `entry`='-1649063';
DELETE FROM `script_texts` WHERE `entry`='-1649064';
DELETE FROM `script_texts` WHERE `entry`='-1649065';
DELETE FROM `script_texts` WHERE `entry`='-1649066';
DELETE FROM `script_texts` WHERE `entry`='-1649067';
DELETE FROM `script_texts` WHERE `entry`='-1649069';
DELETE FROM `script_texts` WHERE `entry`='-1649070';

-- Corrige ID de sound incorrectas --
UPDATE `script_texts` SET `sound`='12574' WHERE `entry`='-1110006';
UPDATE `script_texts` SET `sound`='14161' WHERE `entry`='-1602020';

-- [PATCH] Fixed all quotes ["] and apostrophes ['] (without slash) improperly implemented --
-- By Mrbytes --

REPLACE INTO `script_texts` (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES 
 -- Ignis:
(-1603010,'Insolent whelps! Your blood will temper the weapons used to reclaim this world!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15564, 1, 0, 0,'IgnisAggro'),
(-1603011,'Let the inferno consume you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15567, 1, 0, 0,'Ignis Scorch1'),
(-1603012,'BURN! Burn in the makers fire!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15568, 1, 0, 0,'Ignis scroch2'),
(-1603013,'I will burn away your impurities!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15566, 1, 0, 0,'Ignis Slagpot'),
(-1603015,'Arise, soldiers of the Iron Crucible! The Makers\' will be done!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15565, 1, 0, 0,'Ignis summon'),
(-1603016,'More scraps for the scrapheap!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15569, 1, 0, 0,'IgnisSlay1'),
(-1603017,'Your bones will serve as kindling!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15570, 1, 0, 0,'IgnisSlay2'),
(-1603018,'Let it be finished!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15571, 1, 0, 0,'IgnisBerserk'),
(-1603019,'I. Have. Failed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15572, 1, 0, 0,'Ignis death'),

 -- razorscale
(-1603020,'Welcome, champions! All of our attempts at grounding her have failed. We could use a hand in bring her down with these harpoon guns.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15647,0,0,0,'razorscale intro - commander'),
(-1603024,'Move! Quickly! She won\'t remain grounded for long.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'razor ground - commander'),

 -- Xt002
(-1603030,'You are bad... Toys... Very... Baaaaad!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15731,1,0,0,'XT-002 Death'),
(-1603031,'I\'m tired of these toys. I don\'t want to play anymore!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15730,1,0,0,'XT-002 Berserk'),
(-1603032,'Time for a new game! My old toys will fight my new toys!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15732,1,0,0,'XT-002 Adds'),
(-1603033,'I\'m ready to play!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15726,1,0,0,'XT-002 Heart Closed'),
(-1603034,'So tired. I will rest for just a moment!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15725,1,0,0,'XT-002 Heart Opened'),
(-1603035,'I guess it doesn\'t bend that way.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15729,1,0,0,'XT-002 Slay 2'),
(-1603036,'I... I think I broke it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Кажется... Я сломал эту игрушку.',15728,1,0,0,'XT-002 Slay 1'),
(-1603037,'NO! NO! NO! NO! NO!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Неееет! Нет! Нет! Нет! Нет!',15727,1,0,0,'XT-002 Tympanic Tantrum'),
(-1603038,'New toys? For me? I promise I won\'t break them this time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Новые игрушки? Для меня? Обещаю, в этот раз я их не поламаю!',15724,1,0,0,'XT-002 Aggro'),

 -- Molgeim
(-1603040,'Nothing short of total decimation will suffice!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15657,1,0,0,'MolgeimAggro'),
(-1603041,'The legacy of storms shall not be undone...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15662, 1, 0, 0,'MolgeimDeath1'),
(-1603042,'What have you gained from my defeat? You are no less doomed, mortals...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15663, 1, 0, 0,'MolgeimDeath2'),
(-1603043,'Decipher this!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15660, 1, 0, 0,'MolgeimDeathRune'),
(-1603044,'Face the lightning surge!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15661, 1, 0, 0,'MolgeimSummon'),
(-1603045,'The world on suffers yet another insignificant loss!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15658, 1, 0, 0,'MolgeimSlay1'),
(-1603046,'Death is the price of your arrogance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15659, 1, 0, 0,'MolgeimSlay2'),
(-1603047,'This meeting of the Assembly of Iron is adjourned!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15664, 1, 0, 0,'MolgeimBerserk'),

 -- Steelbreaker
(-1603050,'You will not defeat the Assembly of Iron so easily, invaders!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15674, 1, 0, 0,'SteelAggro'),
(-1603051,'My death only serves to hasten your demise.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15678, 1, 0, 0,'SteelDeath1'),
(-1603052,'Impossible!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15679, 1, 0, 0,'SteelDeath2'),
(-1603053,'So fragile and weak!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15675, 1, 0, 0,'SteelSlay1'),
(-1603054,'Flesh... such a hindrance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15676, 1, 0, 0,'SteelSlay2'),
(-1603055,'You seek the secrets of Ulduar? Then take them!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15677, 1, 0, 0,'SteelOverwhelming'),
(-1603056,'This meeting of the Assembly of Iron is adjourned!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15680, 1, 0, 0,'SteelBerserk'),

 -- Brudir
(-1603060,'Whether the world\'s greatest gnats or the world\'s greatest heroes, you\'re still only mortal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15684, 1, 0, 0,'BrundirAggro'),
(-1603062,'Stand still and stare into the light!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15687, 1, 0, 0,'BrundirWhirl'),
(-1603063,'The power of the storm lives on...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15689, 1, 0, 0,'BrundirDeath1'),
(-1603064,'You rush headlong into the maw of madness!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15690, 1, 0, 0,'BrundirDeath2'),
(-1603065,'A merciful kill!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15685, 1, 0, 0,'BrundirSlay1'),
(-1603066,'HAH!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15686, 1, 0, 0,'BrundirSlay2'),
(-1603067,'This meeting of the Assembly of Iron is adjourned!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15691, 1, 0, 0,'BrundirBerserk'),
(-1603068,'Let the storm clouds rise and rain down death from above!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15688, 1, 0, 0,'BrundirFly'),

 -- Kologarn:
(-1603150,'None shall pass!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15586, 1, 0, 0,'KologarnAggro'),
(-1603151,'OBLIVION!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15591, 1, 0, 0,'Kologarn shockweave'),
(-1603152,'I will squeeze the life from you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15592, 1, 0, 0,'Kologarn grab'),
(-1603153,'Just a scratch!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15589, 1, 0, 0,'left arm lost'),
(-1603154,'Only a flesh wound!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15590, 1, 0, 0,'right arm lost'),
(-1603155,'KOL-THARISH!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15587, 1, 0, 0,'KologarnSlay1'),
(-1603156,'YOU FAIL!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15588, 1, 0, 0,'KologarnSlay2'),
(-1603157,'I am invincible!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15594, 1, 0, 0,'KologarnBerserk'),
(-1603158,'Master, they come...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15593, 1, 0, 0,'Kologarndeath'),

 -- Auriaya:
(-1603070,'Some things are better left alone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15473,1,0,0,'auriaya aggro'),
(-1603071,'The secret dies with you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15474,1,0,0,'auriaya Slay 1'),
(-1603072,'There is no escape!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15475,1,0,0,'auriaya Slay 2'),
(-1603073,'You waste my time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15477,1,0,0,'auriaya berserk'),
(-1603074,'Auriaya screams in agony.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15476,2,0,0,'auriaya death'),

 -- Hodir
(-1603080,'<Furious Roar>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15556,2,0,0,'Hodir Frozen Blows'),
(-1603081,'Winds of the north consume you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15555,1,0,0,'Hodir Flash Freeze'),
(-1603082,'Welcome to the endless winter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15554,1,0,0,'Hodir Slay 2'),
(-1603083,'Tragic. To come so far, only to fail.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15553,1,0,0,'Hodir Slay 1'),
(-1603084,'I... I am released from his grasp... at last.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15557,1,0,0,'Hodir Death'),
(-1603085,'You will suffer for this trespass!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15552,1,0,0,'Hodir Aggro'),
(-1603086,'The veil of winter will protect you, champions!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15559,1,0,0,'Hodir yogg'),
(-1603087,'Enough! This ends now!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15558,1,0,0,'Hodir berserk'),

 -- Freya: 
(-1603000,'The Conservatory must be protected!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15526,1,0,0,'freya aggro'),
(-1603001,'Elders, grant me your strength!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15527,1,0,0,'freya aggro hard'),
(-1603002,'Eonar, your servant requires aid!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15528,1,0,0,'summon conservator'),
(-1603003,'Children, assist me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15533,1,0,0,'summon trio'),
(-1603004,'The swarm of the elements shall overtake you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15534,1,0,0,'summon lashers'),
(-1603005,'Forgive me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15529,1,0,0,'freya slay1'),
(-1603006,'From your death springs life anew!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15530,1,0,0,'freya slay2'),
(-1603007,'His hold on me dissipates. I can see clearly once more. Thank you, heroes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15531,1,0,0,'freya Death'),
(-1603008,'You have strayed too far, wasted too much time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15532,1,0,0,'freya berserk'),
(-1603009,'Eonar, your servant calls for your blessing!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15535,1,0,0,'freya yogg'),

 -- Brightleaf
(-1603160,'Matron, the Conservatory has been breached!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15483,1,0,0,'brightleaf aggro'),
(-1603161,'Fertilizer.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15485,1,0,0,'brightleaf slay1'),
(-1603162,'Your corpse will nourish the soil!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15486,1,0,0,'brightleaf slay2'),
(-1603163,'Matron, one has fallen!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15487,1,0,0,'brightleaf dead'),

 -- Ironbranch
(-1603170,'Mortals have no place here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15493,1,0,0,'ironbranch aggro'),
(-1603171,'I return you whence you came!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15494,1,0,0,'ironbranch slay1'),
(-1603172,'BEGONE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15495,1,0,0,'ironbranch slay2'),
(-1603173,'Freya! They come for you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15496,1,0,0,'summon trio'),

 -- Stonebark
(-1603180,'This place will serve as your graveyard.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15500,1,0,0,'stonebark aggro'),
(-1603181,'<Angry roar>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15501,1,0,0,'stonebark slay1'),
(-1603182,'Such a waste.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15502,1,0,0,'stonebark slay2'),
(-1603183,'Matron, flee! They are ruthless....',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15503,1,0,0,'stonebark death'),

 -- Leviathan: needs intro & outro
(-1603201,'Threat assessment routine modified. Current target threat level: zero. Acquiring new target.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15521,1,0,0,'Flame Leviathan Slay'),
(-1603202,'Total systems failure. Defense protocols breached. Leviathan Unit shutting down.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15520,1,0,0,'Flame Leviathan Death'),
(-1603203,'Hostile entities detected. Threat assessment protocol active. Primary target engaged. Time minus thirty seconds to re-evaluation.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15506,1,0,0,'Flame Leviathan Aggro'),
(-1603204,'Threat re-evaluated. Target assessment complete. Changing course.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15507,1,0,0,'Flame Leviathan change1'),
(-1603205,'Pursuit objective modified. Changing course.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15508,1,0,0,'Flame Leviathan change2'),
(-1603206,'Hostile entity stratagem predicted. Rerouting battle function. Changing course.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15509,1,0,0,'Flame Leviathan change3'),
(-1603207,'Unauthorized entity attempting circuit overload. Activating anti-personnel countermeasures.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15516,1,0,0,'Flame Leviathan player on top'),
(-1603208,'System malfunction. Diverting power to support systems.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15517,1,0,0,'Flame Leviathan overload1'),
(-1603209,'Combat matrix overload. Powering do-o-o-own...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15518,1,0,0,'Flame Leviathan overload2'),
(-1603210,'System restart required. Deactivating weapon systems.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15519,1,0,0,'Flame Leviathan overload3'),
(-1603211,'Orbital countermeasures enabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15510,1,0,0,'Flame Leviathan hard mode'),
(-1603212,'Alert! Static defense system failure. Orbital countermeasures disabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15511,1,0,0,'Flame Leviathan towers down'),
(-1603213,'\'Hodir\'s Fury\' online. Acquiring target.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15512,1,0,0,'Flame Leviathan frost'),
(-1603214,'\'Mimiron\'s Inferno\' online. Acquiring target.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15513,1,0,0,'Flame Leviathan fire'),
(-1603215,'\'Thorim\'s Hammer\' online. Acquiring target.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15515,1,0,0,'Flame Leviathan energy'),
(-1603216,'\'Freya\'s Ward\' online. Acquiring target.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15514,1,0,0,'Flame Leviathan nature'),
(-1603217,'%s pursues $N' ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_pursue'),

 -- Thorim:
(-1603221,'Interlopers! You mortals who dare to interfere with my sport will pay... Wait--you...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15733,1,0,0,'thorim aggro 1'),
(-1603222,'I remember you... In the mountains... But you... what is this? Where am--',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15734,1,0,0,'thorim aggro 2'),
(-1603223,'Behold the power of the storms and despair!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15735,1,0,0,'thorim special 1'),
(-1603224,'Do not hold back! Destroy them!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15736,1,0,0,'thorim special 2'),
(-1603225,'Have you begun to regret your intrusion?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15737,1,0,0,'thorim special 3'),
(-1603226,'Impertinent whelps! You dare challenge me atop my pedestal! I will crush you myself!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15738,1,0,0,'thorim jump'),
(-1603227,'Can\'t you at least put up a fight!?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15739,1,0,0,'thorim slay1'),
(-1603228,'Pathetic!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15740,1,0,0,'thorim slay2'),
(-1603229,'My patience has reached its limit!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15741,1,0,0,'Thorim berserk'),
(-1603230,'Failures! Weaklings!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15742,1,0,0,'thorim arena wipe'),
(-1603231,'Stay your arms! I yield!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15743,1,0,0,'thorim defeat'),
(-1603232,'I feel as though I am awakening from a nightmare, but the shadows in this place yet linger.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15744,1,0,0,'thorim outro n1'),
(-1603233,'Sif... was Sif here? Impossible--she died by my brother\'s hand. A dark nightmare indeed....',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15745,1,0,0,'thorim outro n2'),
(-1603234,'I need time to reflect.... I will aid your cause if you should require it. I owe you at least that much. Farewell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15746,1,0,0,'thorim outro n3'),
(-1603235,'You! Fiend! You are not my beloved! Be gone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15747,1,0,0,'thorim outro hard1'),
(-1603236,'Behold the hand behind all the evil that has befallen Ulduar! Left my kingdom in ruins, corrupted my brother and slain my wife!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15748,1,0,0,'thorim outro hard2'),
(-1603237,'And now it falls to you, champions, to avenge us all! The task before you is great, but I will lend you my aid as I am able. You must prevail!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15749,1,0,0,'thorim outro hard3'),
(-1603238,'Golganneth, lend me your strengh! Grant my mortal allies the power of thunder!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15750,1,0,0,'thorim yogg'),

 -- Sif:
(-1603185,'Thorim, my lord, why else would these invaders have come into your sanctum but to slay you? They must be stopped!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15668,1,0,0,'sif start'),
(-1603186,'Impossible! Lord Thorim, I will bring your foes a frigid death!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15670,1,0,0,'sif event'),
(-1603187,'These pathetic mortals are harmless, beneath my station. Dispose of them!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15669,1,0,0,'sif despawn'),

 -- Mimiron:
(-1603241,'Oh, my! I wasn\'t expecting company! The workshop is such a mess! How embarrassing!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15611,1,0,0,'mimiron aggro'), 
(-1603242,'Now why would you go and do something like that? Didn\'t you see the sign that said \'DO NOT PUSH THIS BUTTON!\'? How will we finish testing with the self-destruct mechanism active?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15629,1,0,0,'mimiron hard mode'),
(-1603243,'Oh, my! It would seem that we are out of time, my friends!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15628,1,0,0,'mimiron berserk'),
(-1603244,'We haven\'t much time, friends! You\'re going to help me test out my latest and greatest creation. Now, before you change your minds, remember, that you kind of owe it to me after the mess you made with the XT-002.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15612,1,0,0,'tank active'),
(-1603245,'MEDIC!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15613,1,0,0,'tank kill1'),
(-1603246,'I can fix that... or, maybe not! Sheesh, what a mess...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15614,1,0,0,'tank kill2'),
(-1603247,'WONDERFUL! Positively marvelous results! Hull integrity at 98.9 percent! Barely a dent! Moving right along.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15615,1,0,0,'tank dead'),
(-1603248,'Behold the VX-001 Anti-personnel Assault Cannon! You might want to take cover.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15616,1,0,0,'torso active'),
(-1603249,'Fascinating. I think they call that a \'clean kill\'.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15617,1,0,0,'torso kill1'),
(-1603250,'Note to self: Cannon highly effective against flesh.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15618,1,0,0,'torso kill2'),
(-1603251,'Thank you, friends! Your efforts have yielded some fantastic data! Now, where did I put-- oh, there it is!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15619,1,0,0,'torso dead'),
(-1603252,'Isn\'t it beautiful? I call it the magnificent aerial command unit!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15620,1,0,0,'head active'),
(-1603253,'Outplayed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Обхитрил!',15621,1,0,0,'head kill1'),
(-1603254,'You can do better than that!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Плохо стараешся!',15622,1,0,0,'head kill2'),
(-1603255,'Preliminary testing phase complete. Now comes the true test!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15623,1,0,0,'head defeat'),
(-1603256,'Gaze upon its magnificence! Bask in its glorious, um, glory! I present you... V-07-TR-0N!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15624,1,0,0,'robot active'),
(-1603257,'Prognosis: Negative!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15625,1,0,0,'robot kill1'),
(-1603258,'You\'re not going to get up from that one, friend.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15626,1,0,0,'robot kill2'),	
(-1603259,'It would appear that I\'ve made a slight miscalculation. I allowed my mind to be corrupted by the fiend in the prison, overriding my primary directive. All systems seem to be functional now. Clear.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15627,1,0,0,'robot defeat'),
(-1603260,'Combat matrix enhanced. Behold wonderous rapidity!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15630,1,0,0,'mimiron yogg'),
(-1603371,'Leviathan Mk II begins to cast Plasma Blast!' ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_plasma_blast'),
(-1606241,'Self-destruct sequence initiated.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15413,1,0,0,'mimiron aggro'), 
(-1606242,'This area will self-destruct in ten minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15415,1,0,0,'mimiron aggro'), 
(-1606243,'This area will self-destruct in nine minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15416,1,0,0,'mimiron aggro'), 
(-1606244,'This area will self-destruct in eight minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15417,1,0,0,'mimiron aggro'),
(-1606245,'This area will self-destruct in seven minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15418,1,0,0,'mimiron aggro'),
(-1606246,'This area will self-destruct in six minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15419,1,0,0,'mimiron aggro'),
(-1606247,'This area will self-destruct in five minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15420,1,0,0,'mimiron aggro'),
(-1606248,'This area will self-destruct in four minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15421,1,0,0,'mimiron aggro'),
(-1606249,'This area will self-destruct in three minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15422,1,0,0,'mimiron aggro'),
(-1606250,'This area will self-destruct in two minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15423,1,0,0,'mimiron aggro'),
(-1606251,'This area will self-destruct in one minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15424,1,0,0,'mimiron aggro'),
(-1606252,'The self-destruction timer is over. Have a nice day.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15425,1,0,0,'mimiron aggro'),
(-1606253,'The self-destruction timer canceled. Exit code A905.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15414,1,0,0,'mimiron aggro'),

 -- vezax
(-1603120,'Your destruction will herald a new age of suffering!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15542,1,0,0,'vezax aggro'),
(-1603121,'You thought to stand before the legions of death... and survive?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15543,1,0,0,'vezax kill1'),
(-1603122,'Defiance... a flaw of mortality.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15544,1,0,0,'vezax kill2'),
(-1603123,'The black blood of Yogg-Saron courses through me! I. AM. UNSTOPPABLE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15545,1,0,0,'vezaz surge'),
(-1603124,'Oh, what horrors await....',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15546,1,0,0,'vezax death'),
(-1603125,'Your defeat was inevitable!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15547,1,0,0,'vezax enrage'),
(-1603126,'Behold, now! Terror, absolute!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15548,1,0,0,'vezax hard'),

 -- Yogg:
 -- Sara:
(-1603300,'The time to strike at the head of the beast will soon be upon us! Focus your anger and hatred on his minions!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15775,1,0,0,'sara aggro'),
(-1603301,'Yes! YES! Show them no mercy! Give no pause to your attacks!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15773,1,0,0,'sara help1'),
(-1603302,'Let hatred and rage guide your blows!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15774,1,0,0,'sara help2'),
(-1603303,'Could they have been saved?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15779,1,0,0,'sara kill1'),
(-1603304,'Powerless to act...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15778,1,0,0,'sara kill 1'),
(-1603305,'Tremble, mortals, before the coming of the end!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15777,1,0,0,'sara yell2 p2'),
(-1603306,'Suffocate upon your own hate!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15776,1,0,0,'sara yell1 p1'),
(-1603307,'Aaaaaaaaaaaaaaaaa... Help me!!! Please got to help me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15771,1,0,0,'sara prefight'),
(-1603308,'What do you want from me? Leave me alone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15772,1,0,0,'sara prefight2'),
(-1603309,'Weak-minded fools!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15780,4,0,0,'sara slay phase1'),

 -- Yogg:
(-1603321,'I am the lucid dream. The monster in your nightmares. The fiend of a thousand faces. Cower before my true form. BOW DOWN BEFORE THE GOD OF DEATH!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15754,1,0,0,'yogg p2 intro'),
(-1603322,'MADNESS WILL CONSUME YOU!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15756,1,0,0,'yogg vision'),
(-1603323,'Look upon the true face of death and know that your end comes soon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15755,1,0,0,'yogg phase 3'),
(-1603324,'Hoohehehahahaha... AHAHAHAHAHAHA!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15757,1,0,0,'yogg slay1'),
(-1603325,'Eternal suffering awaits!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15758,1,0,0,'yogg slay2'),
(-1603326,'Your fate is sealed. The end of days is finally upon you and ALL who inhabit this miserable little seedling. Uulwi ifis halahs gag erh\'ongg w\'ssh.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15761,1,0,0,'yogg death'),
(-1603327,'Your will is no longer you own...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15759,4,0,0,'yogg insanity1'),
(-1603328,'Destroy them minion, your master commands it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15760,4,0,0,'yogg insanity2'),

 -- Alagon:
(-1603140,'Your actions are illogical. All possible results for this encounter have been calculated. The pantheon will receive the observer\'s message regardless outcome.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15386,1,0,0,'Agro_algalon the observer'),
(-1603141,'See your world through my eyes. A universe so vast as to be immeasurable. Incomprehensible even to your greatest minds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15390,1,0,0,'Engaged for the first time algalon'),
(-1603142,'Witness the fury of cosmos!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15396,1,0,0,'BIG BANG 1_Algalon'),
(-1603143,'Behold the tools of creation!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15397,1,0,0,'BIG BANG 2_Algalon'),
(-1603144,'Beware!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15391,1,0,0,'Phase2_algalon'),
(-1603145,'Loss of life, unavoidable.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15387,1,0,0,'Killing a player_alagalon'),
(-1603146,'I do what I must.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15388,1,0,0,'killing a player2_algalon'),
(-1603147,'You are... out of time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15394,1,0,0,'BERSEKER_ALGALON'),
(-1603148,'The stars come to my aid.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15392,1,0,0,'Summoning Collapsing Stars_Algalon1'),
(-1603149,'I lack the strength to transmit this signal. You must hurry. Find a place of power, close to the skies.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15403,1,0,0,'Summoning Collapsing Stars_Algalon2'),
(-1603279,'Do not worry about my fate <name>. If the signal is not transmitted in time re-origination will proceed regardless. Save. Your. World.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15404,1,0,0,'algalon outro 5'),
(-1603278,'I\'ve rearranged the reply code. Your planet will be spared. I cannot be certain of my own calculations anymore.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15402,1,0,0,'algalon outro 3'),
(-1603277,'Perhaps it is your imperfection that which grants you free will. That allows you to persevere against cosmically calculated odds. You prevailed where the Titans\' own perfect creations have failed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15401,1,0,0,'algalon outro 2'),
(-1603276,'I have seen worlds bathed in the Makers\' flames. Their denizens fading without so much as a whimper. Entire planetary systems born and raised in the time that it takes your mortal hearts to beat once. Yet all throughout, my own heart, devoid of emotion... of empathy. I... have... felt... NOTHING! A million, million lives wasted. Had they all held within them your tenacity? Had they all loved life as you do?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL',15393,1,0,0,'algalon outro1'),
(-1603275,'Farewell, mortals. Your bravery is admirable, for such flawed creatures.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15400,1,0,0,'algalon despwnd 3'),
(-1603274,'Begin uplink: Reply Code: \'Omega\'. Planetary re-origination requested.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15399,1,0,0,'algalon despawn 2'),
(-1603273,'Analysis complete. There is partial corruption in the plane\'s life-support systems as well as complete corruption in most of the planet\'s defense mechanisms.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15398,1,0,0,'algalon despawn1'),
(-1603272,'It is in the universe\'s best interest to re-originate this planet should my analysis find systemic corruption. Do not interfere.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15407,1,0,0,'algalon intro3'),
(-1603271,'Stand back, mortals. I am not here to fight you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15406,1,0,0,'Algalon intro2'),
(-1603270,'Trans-location complete. Commencing planetary analysis of Azeroth.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15405,1,0,0,'Algalon intro1');

-- trial of crusader
INSERT INTO `script_texts`
(`comment`,`sound`, `entry`,`type`,`language`,`emote`,`content_default`) VALUES
('34780','0','-1713518','3','0','0','You has been sent to |cFFFF0000Burning Legion!|r'),
('34780','0','-1713520','3','0','0','%s creates a |cFF00FF00Infernal Eruption!|r'),
('34780','0','-1713522','3','0','0','$n has been the target of |cFF00FFFFIncinerate Flesh!|r Heal it!'),
('34497','0','-1713538','3','0','0','%s begins reading a spell |cFFFFFFFFLight Vortex!|r switch to |cFFFFFFFFLight Essence!|r'),
('34496','0','-1713540','3','0','0','%s begins reading a spell |cFF9932CDDark Vortex!|r switch to |cFF9932CDDark Essence!|r');

 -- teleporter from /dev/rsa
DELETE FROM `gossip_texts` WHERE `entry` BETWEEN -3050009 AND -3050000;
INSERT INTO `gossip_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `comment`) VALUES
(-3050001,'Expedition Base Camp',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,  'Ulduar teleporter text 1'),
(-3050002,'Formation Grounds',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ulduar teleporter text 2'),
(-3050003,'Colossal Forge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ulduar teleporter text 3'),
(-3050004,'Scrapyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ulduar teleporter text 4'),
(-3050005,'Antechamber of Ulduar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ulduar teleporter text 5'),
(-3050006,'Shattered Walkway',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ulduar teleporter text 6'),
(-3050007,'Conservatory of Life',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ulduar teleporter text 7'),
(-3050008,'Spark of Imagination',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ulduar teleporter text 8'),
(-3050009,'Prison of Yogg-Saron',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ulduar teleporter text 9');
