-- Difficulty Names

	UPDATE Language_en_US
	SET Text = 'Easy. The AI is at a slight disadvantage.'
	WHERE Tag = 'TXT_KEY_HANDICAP_SETTLER_HELP';

	UPDATE Language_en_US
	SET Text = 'A standard challenge. The AI receives a few bonuses.'
	WHERE Tag = 'TXT_KEY_HANDICAP_CHIEFTAIN_HELP';

	UPDATE Language_en_US
	SET Text = 'A little challenging. The AI receives noticeable bonuses.'
	WHERE Tag = 'TXT_KEY_HANDICAP_WARLORD_HELP';

	UPDATE Language_en_US
	SET Text = 'A good test of skill. The AI has many advantages.'
	WHERE Tag = 'TXT_KEY_HANDICAP_PRINCE_HELP';

	UPDATE Language_en_US
	SET Text = 'Quite hard. The AI has major bonuses.'
	WHERE Tag = 'TXT_KEY_HANDICAP_KING_HELP';

	UPDATE Language_en_US
	SET Text = 'Very difficult. The AI has substantial bonuses.'
	WHERE Tag = 'TXT_KEY_HANDICAP_EMPEROR_HELP';

	UPDATE Language_en_US
	SET Text = 'Extremely challenging. AI players have very large advantages.'
	WHERE Tag = 'TXT_KEY_HANDICAP_IMMORTAL_HELP';

	UPDATE Language_en_US
	SET Text = 'The AI has massive bonuses at all stages of the game. You have been warned!'
	WHERE Tag = 'TXT_KEY_HANDICAP_DEITY_HELP';

-- Top Panel Tooltip Adjustment (make generic for more than just founder beliefs)
	UPDATE Language_en_US
	SET Text = '[ICON_BULLET][COLOR_POSITIVE_TEXT]+{1_Num}[ENDCOLOR] from Religion.'
	WHERE Tag = 'TXT_KEY_TP_FAITH_FROM_RELIGION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'Allows Research Agreements (if enabled)'
	WHERE Tag = 'TXT_KEY_ABLTY_R_PACT_STRING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'A city has a Ranged Combat Strength equal to its full Strength at the start of combat, and it has a range of 1. This range increases as the game progresses based on researched technologies (look for the "ranged strike" icon in the tech tree for these technologies). It may attack any one enemy unit within that range. Note that the city''s Ranged Combat Strength doesn''t decline as the city takes damage; it remains equal to the city''s initial Strength until the city is captured.'
	WHERE Tag = 'TXT_KEY_COMBAT_CITYFIRINGATTACKERS_HEADING3_BODY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'A unit gains XPs for surviving a round of combat (or, if a scout, from exploration). The unit doesn''t have to win the combat or destroy the enemy to get the experience; it accrues each round that the unit lives through.[NEWLINE][NEWLINE]The amount of XPs the unit gets depends upon the circumstances of the combat. Generally, units get more XPs for attacking than defending, and more for engaging in melee combat than for other types. Here are some numbers (see the Charts and Tables section for a complete list):[NEWLINE]An Attacking Melee Unit: 5 XPs[NEWLINE]Defending Against a Melee Attack: 4 XPs[NEWLINE]An Attacking Ranged Unit: 2 XPs[NEWLINE]Being Attacked by a Ranged Unit: 2 XPs[NEWLINE]Barbarian Limitations: Once a unit has gotten 45 XPs, it no longer gets any additional XPs for fighting Barbarians.'
	WHERE Tag = 'TXT_KEY_COMBAT_ACQUIRINGXP_HEADING3_BODY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'Once their civilization has learned certain technologies (see tech tree), workers can remove forests, jungles, and marshes from tiles. Once these features are removed, they are gone forever.'
	WHERE Tag = 'TXT_KEY_WORKERS_CLEARINGLAND_HEADING2_BODY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'Once their civilization has learned certain technologies (see tech tree), workers can remove forests, jungles, and marshes from tiles. Once these features are removed, they are gone forever.'
	WHERE Tag = 'TXT_KEY_WORKERS_CLEARINGLAND_HEADING2_BODY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'If your civilization is unhappy, then the city will produce less food. The city will produce enough food to feed its citizens, but there is a decrease in growth locally, and a reduction in national yields like gold, faith, or science.'
	WHERE Tag = 'TXT_KEY_FOOD_UNHAPPINESS_HEADING3_BODY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'If your civilization is unhappy, then the city will produce less food. The city will produce enough food to feed its citizens, but there is a decrease in growth locally, and a reduction in national yields like gold, faith, or science.'
	WHERE Tag = 'TXT_KEY_FOOD_UNHAPPINESS_HEADING3_BODY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

-- Resource Limit breached
	UPDATE Language_en_US
	SET Text = ' You are currently using more {1_Resource:textkey} than you have! All units which require it are [COLOR_NEGATIVE_TEXT]unable to heal[ENDCOLOR].'
	WHERE Tag = 'TXT_KEY_NOTIFICATION_OVER_RESOURCE_LIMIT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );
	
-- Text Changes for Spies in Cities
	UPDATE Language_en_US
	SET Text = 'Potential reflects the vulnerability of a city to Espionage. The higher the value, the more vulnerable the city. The base value [COLOR_POSITIVE_TEXT](a scale, from 1 to 10)[ENDCOLOR] is based on the overall prosperity and happiness of the city, specifically its science and gold output. Potential may be decreased by defensive buildings in the city, such as the Constabulary and the Police Station. Potential may increase when using a higher ranking spy to steal technologies from the city.[NEWLINE][NEWLINE]Click to sort cities by their potential.'
	WHERE Tag = 'TXT_KEY_EO_POTENTIAL_SORT_TT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'The Potential of {1_CityName} is {2_Num}.[NEWLINE][NEWLINE]If your cities have high Potential, you should consider protecting them. There are two ways to do this. You may move your own spies to your cities to act as counterspies that have a chance to catch and kill enemy spies before they steal a technology. You may also slow down how quickly enemy spies can steal technologies by constructing buildings like the Constabulary, Police Station, and the Great Firewall.'
	WHERE Tag = 'TXT_KEY_EO_OWN_CITY_POTENTIAL_TT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '{1_SpyRank} {2_SpyName} is stealing from {4_CityName}.[NEWLINE]The current Potential of {5_CityName} is {6_Num}.[NEWLINE][NEWLINE]Potential reflects the vulnerability of a city to Espionage. The higher the value, the more vulnerable the city. The base value [COLOR_POSITIVE_TEXT](a scale, from 1 to 10)[ENDCOLOR] is based on the overall prosperity and happiness of the city, specifically its science and gold output. Potential may be decreased by defensive buildings in the city, such as the Constabulary and the Police Station.'
	WHERE Tag = 'TXT_KEY_EO_CITY_POTENTIAL_TT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '{1_SpyRank} {2_SpyName} cannot steal technologies from {3_CityName}, however they can continue to disrupt the player through additional actions like sabotage.[NEWLINE][NEWLINE]The base Potential of {4_CityName} is {5_Num}.[NEWLINE][NEWLINE]Potential reflects the vulnerability of a city to Espionage. The higher the value, the more vulnerable the city. The base value [COLOR_POSITIVE_TEXT](a scale, from 1 to 10)[ENDCOLOR] is based on the overall prosperity and happiness of the city, specifically its science and gold output. Potential may be decreased by defensive buildings in the city, such as the Constabulary and the Police Station.'
	WHERE Tag = 'TXT_KEY_EO_CITY_POTENTIAL_CANNOT_STEAL_TT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'The Potential of {1_CityName} is believed to be {2_Num}.[NEWLINE][NEWLINE]Potential reflects the vulnerability of a city to Espionage. The higher the value, the more vulnerable the city. The base value [COLOR_POSITIVE_TEXT](a scale, from 1 to 10)[ENDCOLOR] is based on the overall prosperity and happiness of the city, specifically its science and gold output. Potential may be decreased by defensive buildings in the city, such as the Constabulary and the Police Station.'
	WHERE Tag = 'TXT_KEY_EO_CITY_ONCE_KNOWN_POTENTIAL_TT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '{1_SpyRank} {2_SpyName} is in {3_CityName}. While {4_SpyRank} {5_SpyName} is in your city, they will perform counter-espionage operations to capture and kill any enemy spies that try to steal your technology or perform Advanced Actions.'
	WHERE Tag = 'TXT_KEY_CITY_SPY_YOUR_CITY_TT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '{1_SpyRank} {2_SpyName} is in {3_CityName}. While {4_SpyRank} {5_SpyName} is in the city, they establish surveillance, attempt to steal any technology from that civilization, and perform Advanced Actions such as stealing Gold. {6_SpyRank} {7_SpyName} will also inform you of any intrigue that they discover during their operations.'
	WHERE Tag = 'TXT_KEY_CITY_SPY_OTHER_CIV_TT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

-- Lua for Cities
	UPDATE Language_en_US
	SET Text = 'We have no tradeable cities and/or we do not have a Declaration of Friendship.'
	WHERE Tag = 'TXT_KEY_DIPLO_TO_TRADE_CITY_NO_TT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'They have no tradeable cities and/or we do not have a Declaration of Friendship.'
	WHERE Tag = 'TXT_KEY_DIPLO_TO_TRADE_CITY_NO_THEM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );
	
-- Public Opinion

	UPDATE Language_en_US
	SET Text = '{1_Num} from Public Opinion (Ideological Pressure or War Weariness).'
	WHERE Tag = 'TXT_KEY_TP_UNHAPPINESS_PUBLIC_OPINION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

-- Building Purchased
	UPDATE Language_en_US
	SET Text = 'When you have enough [ICON_GOLD] Gold or [ICON_PEACE] Faith, you can spend it on units and buildings.'
	WHERE Tag = 'TXT_KEY_CITYVIEW_PURCHASE_TT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'You can change city construction orders on the City Screen. You can also expend gold to purchase a unit (or invest in a building) on this screen as well. See the City Screen section for details.'
	WHERE Tag = 'TXT_KEY_BUILDINGS_PURCHASING_HEADING3_BODY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'You can purchase units with gold, or invest gold in buildings to reduce their construction cost, from within your city screen. This can be helpful if you need something in a hurry, like additional units to defend against an invader.'
	WHERE Tag = 'TXT_KEY_CITIES_PURCHASINGITEM_HEADING3_BODY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = ' You can spend gold to purchase units or invest in a building in a city. Click on a unit (if you can afford it!) and it will be immediately trained in the city, and the amount deducted from your treasury. If you click on a building, you will invest in it, reducing the production cost of the building by 50%.[NEWLINE][NEWLINE]Note that "projects" - the Manhattan Project, etc. - cannot be purchased.'
	WHERE Tag = 'TXT_KEY_GOLD_PURCHASEUNITS_HEADING3_BODY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

-- Happiness from Policies to Culture/Science change
	UPDATE Language_en_US
	SET Text = '[ICON_BULLET][COLOR_POSITIVE_TEXT]+{1_Num}[ENDCOLOR] from Policies.'
	WHERE Tag = 'TXT_KEY_TP_CULTURE_FROM_HAPPINESS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '[ICON_BULLET][COLOR_POSITIVE_TEXT]+{1_Num}[ENDCOLOR] [ICON_RESEARCH] from Policies.'
	WHERE Tag = 'TXT_KEY_TP_SCIENCE_FROM_HAPPINESS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '[ICON_BULLET][COLOR_POSITIVE_TEXT]+{1_Num}[ENDCOLOR] [ICON_RESEARCH] from Scholasticism.'
	WHERE Tag = 'TXT_KEY_TP_SCIENCE_FROM_MINORS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '[ICON_RES_ARTIFACTS] Sites Left: {1_Num}'
	WHERE Tag = 'TXT_KEY_ANTIQUITY_SITES_TO_EXCAVATE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '[ICON_RES_HIDDEN_ARTIFACTS] Hidden Sites Left: {1_Num}'
	WHERE Tag = 'TXT_KEY_HIDDEN_SITES_TO_EXCAVATE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	-- Update text for diplomat.
	UPDATE Language_en_US
	SET Text = '+{1_Num}% Bonus from Diplomat[NEWLINE]'
	WHERE Tag = 'TXT_KEY_CO_PLAYER_TOURISM_PROPAGANDA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

	-- Update text for tooltips based on what you changed above.
	INSERT INTO Language_en_US (
	Text, Tag)
	SELECT '[NEWLINE][NEWLINE][COLOR_CYAN]Influence Benefits:[ENDCOLOR][NEWLINE][COLOR_POSITIVE_TEXT]Trade Routes to this Civ Generate:[ENDCOLOR][NEWLINE][ICON_BULLET]  [COLOR_POSITIVE_TEXT]+3%[ENDCOLOR] [ICON_FOOD] Growth in Origin City[NEWLINE][ICON_BULLET]  [COLOR_POSITIVE_TEXT]+2[ENDCOLOR] [ICON_GOLD] Gold[NEWLINE][ICON_BULLET]  [COLOR_POSITIVE_TEXT]+1[ENDCOLOR] [ICON_RESEARCH] Science (if already gaining [ICON_RESEARCH] Science)[NEWLINE][COLOR_POSITIVE_TEXT]Espionage Bonuses versus this Civ:[ENDCOLOR][NEWLINE][ICON_BULLET]   [ICON_SPY] Spies Establish Surveillance in [COLOR_POSITIVE_TEXT]5[ENDCOLOR] turns[NEWLINE][COLOR_POSITIVE_TEXT]City Conquest Bonuses versus this Civ:[ENDCOLOR][NEWLINE][ICON_BULLET]   [COLOR_POSITIVE_TEXT]-15%[ENDCOLOR] [ICON_RESISTANCE] Unrest Time[NEWLINE][ICON_BULLET]   [COLOR_POSITIVE_TEXT]-15%[ENDCOLOR] [ICON_CITIZEN] Citizen loss from City conquest' , 'TXT_KEY_CO_INFLUENCE_BONUSES_EXOTIC'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

	-- Update texts for tooltips based on what you changed above.
	UPDATE Language_en_US
	SET Text = '[NEWLINE][NEWLINE][COLOR_CYAN]Influence Benefits:[ENDCOLOR][NEWLINE][COLOR_POSITIVE_TEXT]Trade Routes to this Civ Generate:[ENDCOLOR][NEWLINE][ICON_BULLET]  [COLOR_POSITIVE_TEXT]+6%[ENDCOLOR] [ICON_FOOD] Growth in Origin City[NEWLINE][ICON_BULLET]  [COLOR_POSITIVE_TEXT]+4[ENDCOLOR] [ICON_GOLD] Gold[NEWLINE][ICON_BULLET]  [COLOR_POSITIVE_TEXT]+2[ENDCOLOR] [ICON_RESEARCH] Science (if already gaining [ICON_RESEARCH] Science)[NEWLINE][COLOR_POSITIVE_TEXT]Espionage Bonuses versus this Civ:[ENDCOLOR][NEWLINE][ICON_BULLET]   [ICON_SPY] Spies Establish Surveillance in [COLOR_POSITIVE_TEXT]4[ENDCOLOR] turns[NEWLINE][COLOR_POSITIVE_TEXT]City Conquest Bonuses versus this Civ:[ENDCOLOR][NEWLINE][ICON_BULLET]   [COLOR_POSITIVE_TEXT]-30%[ENDCOLOR] [ICON_RESISTANCE] Unrest Time[NEWLINE][ICON_BULLET]   [COLOR_POSITIVE_TEXT]-30%[ENDCOLOR] [ICON_CITIZEN] Citizen loss from City conquest'
	WHERE Tag = 'TXT_KEY_CO_INFLUENCE_BONUSES_FAMILIAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

	-- Update texts for tooltips based on what you changed above.
	UPDATE Language_en_US
	SET Text = '[NEWLINE][NEWLINE][COLOR_CYAN]Influence Benefits:[ENDCOLOR][NEWLINE][COLOR_POSITIVE_TEXT]Trade Routes to this Civ Generate:[ENDCOLOR][NEWLINE][ICON_BULLET]  [COLOR_POSITIVE_TEXT]+9%[ENDCOLOR] [ICON_FOOD] Growth in Origin City[NEWLINE][ICON_BULLET]  [COLOR_POSITIVE_TEXT]+6[ENDCOLOR] [ICON_GOLD] Gold[NEWLINE][ICON_BULLET]  [COLOR_POSITIVE_TEXT]+3[ENDCOLOR] [ICON_RESEARCH] Science (if already gaining [ICON_RESEARCH] Science)[NEWLINE][COLOR_POSITIVE_TEXT]Espionage Bonuses versus this Civ:[ENDCOLOR][NEWLINE][ICON_BULLET]   [ICON_SPY] Spies Establish Surveillance in [COLOR_POSITIVE_TEXT]3[ENDCOLOR] turns[NEWLINE][COLOR_POSITIVE_TEXT]City Conquest Bonuses versus this Civ:[ENDCOLOR][NEWLINE][ICON_BULLET]   [COLOR_POSITIVE_TEXT]-55%[ENDCOLOR] [ICON_RESISTANCE] Unrest Time[NEWLINE][ICON_BULLET]   [COLOR_POSITIVE_TEXT]-55%[ENDCOLOR] [ICON_CITIZEN] Citizen loss from City conquest'
	WHERE Tag = 'TXT_KEY_CO_INFLUENCE_BONUSES_POPULAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

	-- Update texts for tooltips based on what you changed above.
	UPDATE Language_en_US
	SET Text = '[NEWLINE][NEWLINE][COLOR_CYAN]Influence Benefits:[ENDCOLOR][NEWLINE][COLOR_POSITIVE_TEXT]Trade Routes to this Civ Generate:[ENDCOLOR][NEWLINE][ICON_BULLET]  [COLOR_POSITIVE_TEXT]+12%[ENDCOLOR] [ICON_FOOD] Growth in Origin City[NEWLINE][ICON_BULLET]  [COLOR_POSITIVE_TEXT]+8[ENDCOLOR] [ICON_GOLD] Gold[NEWLINE][ICON_BULLET]  [COLOR_POSITIVE_TEXT]+4[ENDCOLOR] [ICON_RESEARCH] Science (if already gaining [ICON_RESEARCH] Science)[NEWLINE][COLOR_POSITIVE_TEXT]Espionage Bonuses versus this Civ:[ENDCOLOR][NEWLINE][ICON_BULLET]   [ICON_SPY] Spies Establish Surveillance in [COLOR_POSITIVE_TEXT]2[ENDCOLOR] turns[NEWLINE][COLOR_POSITIVE_TEXT]City Conquest Bonuses versus this Civ:[ENDCOLOR][NEWLINE][ICON_BULLET]   [COLOR_POSITIVE_TEXT]-80%[ENDCOLOR] [ICON_RESISTANCE] Unrest Time[NEWLINE][ICON_BULLET]   [COLOR_POSITIVE_TEXT]-80%[ENDCOLOR] [ICON_CITIZEN] Citizen loss from City conquest'
	WHERE Tag = 'TXT_KEY_CO_INFLUENCE_BONUSES_INFLUENTIAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

	-- Update texts for tooltips based on what you changed above.
	UPDATE Language_en_US
	SET Text = '[NEWLINE][NEWLINE][COLOR_CYAN]Influence Benefits:[ENDCOLOR][NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]Trade Routes to this Civ Generate:[ENDCOLOR][NEWLINE][ICON_BULLET]  [COLOR_POSITIVE_TEXT]+15%[ENDCOLOR] [ICON_FOOD] Growth in Origin City[NEWLINE][ICON_BULLET]  [COLOR_POSITIVE_TEXT]+10[ENDCOLOR] [ICON_GOLD] Gold[NEWLINE][ICON_BULLET]  [COLOR_POSITIVE_TEXT]+5[ENDCOLOR] [ICON_RESEARCH] Science (if already gaining [ICON_RESEARCH] Science)[NEWLINE][COLOR_POSITIVE_TEXT]Espionage Bonuses versus this Civ:[ENDCOLOR][NEWLINE][ICON_BULLET]   [ICON_SPY] Spies Establish Surveillance in [COLOR_POSITIVE_TEXT]1[ENDCOLOR] turn[NEWLINE][COLOR_POSITIVE_TEXT]City Conquest Bonuses versus this Civ:[ENDCOLOR][NEWLINE][ICON_BULLET]   [COLOR_POSITIVE_TEXT]-100%[ENDCOLOR] [ICON_RESISTANCE] Unrest Time[NEWLINE][ICON_BULLET]   [COLOR_POSITIVE_TEXT]-100%[ENDCOLOR] [ICON_CITIZEN] Citizen loss from City conquest'
	WHERE Tag = 'TXT_KEY_CO_INFLUENCE_BONUSES_DOMINANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

	-- Text for trade view tooltip.
	INSERT INTO Language_en_US (
	Text, Tag)
	SELECT '+{2_Num} [ICON_GOLD] Gold due to your Cultural Influence over {1_CivName}', 'TXT_KEY_CHOOSE_INTERNATIONAL_TRADE_ROUTE_ITEM_TT_YOUR_GOLD_EXPLAINED'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

	-- Text for trade view tooltip.
	INSERT INTO Language_en_US (
	Text, Tag)
	SELECT '+{2_Num} [ICON_GOLD] Gold due to the Cultural Influence of {1_CivName} over you', 'TXT_KEY_CHOOSE_INTERNATIONAL_TRADE_ROUTE_ITEM_TT_THEIR_GOLD_EXPLAINED'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

	-- Text changes for Vote Purchase
	UPDATE Language_en_US
	SET Text = 'In the next World Congress session, [COLOR_POSITIVE_TEXT]{1_NumVotes}[ENDCOLOR] {1_NumVotes: plural 1?Delegate; other?Delegates;} currently controlled by this player will support {2_ChoiceText} on the proposal to [COLOR_POSITIVE_TEXT]enact[ENDCOLOR] these changes:[NEWLINE][NEWLINE]{3_ProposalText}[NEWLINE][NEWLINE]The number of delegates above is based on the number of delegates this player controls, and the Rank of your [ICON_DIPLOMAT] Diplomat. Higher ranks allow you to trade for more delegates.'
	WHERE Tag = 'TXT_KEY_DIPLO_VOTE_TRADE_ENACT_TT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'In the next World Congress session, [COLOR_POSITIVE_TEXT]{1_NumVotes}[ENDCOLOR] {1_NumVotes: plural 1?Delegate; other?Delegates;} currently controlled by this player will support {2_ChoiceText} on the proposal to [COLOR_WARNING_TEXT]repeal[ENDCOLOR] these effects:[NEWLINE][NEWLINE]{3_ProposalText}[NEWLINE][NEWLINE]The number of delegates above is based on the number of delegates this player controls, and the rank of your [ICON_DIPLOMAT] Diplomat. Higher ranks allow you to trade for more delegates.'
	WHERE Tag = 'TXT_KEY_DIPLO_VOTE_TRADE_REPEAL_TT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'Artifact will be placed in nearest Great Work of Art slot. Artifact provides +1 [ICON_CULTURE] Culture and +2 [ICON_TOURISM] Tourism. Archaeologist will be consumed.'
	WHERE Tag = 'TXT_KEY_CHOOSE_ARCH_ARTIFACT_RESULT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'Ancient writing will be placed in nearest Great Work of Writing slot. Writing provides +1 [ICON_CULTURE] Culture and +2 [ICON_TOURISM] Tourism. Archaeologist will be consumed.'
	WHERE Tag = 'TXT_KEY_CHOOSE_ARCH_WRITTEN_ARTIFACT_RESULT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'Barbarian Encampment'
	WHERE Tag = 'TXT_KEY_CIV5_IMPROVEMENTS_ENCAMPMENT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'Barbarian Encampment'
	WHERE Tag = 'TXT_KEY_IMPROVEMENT_ENCAMPMENT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'A Barbarian Encampment is a temporary settlement by a group of rampaging barbarians intent upon overthrowing and destroying your civilization. These perpetual thorns in the sides of civilizations are capable of spitting out an unending stream of angry barbarians, all who seek to overrun your cities, pillage your lands and stare lewdly at your women. Encampments near to your cities should be destroyed without question. Encampments nearer to competing civilizations may be left to harass your foes, if you are that kind of sneaky leader...'
	WHERE Tag = 'TXT_KEY_IMPROVEMENT_BARBARIAN_CAMP_PEDIA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

	-- CS Protection Tooltip for new influence perk
	UPDATE Language_en_US
	SET Text = 'Pledging to protect a City-State lets the other major powers in the game know that you will protect the City-State from attacks and tribute demands. This action is only possible if you are in the top [COLOR_POSITIVE_TEXT]60%[ENDCOLOR] of the world in terms of Military Power.[NEWLINE][NEWLINE]During protection, your resting point for [ICON_INFLUENCE] Influence with this City-State is increased by {1_InfluenceMinimum}, and you will earn [COLOR_POSITIVE_TEXT]{3_InfluenceBoost}%[ENDCOLOR] [ICON_INFLUENCE] Influence from quests completed for this City-State. The City-State [ICON_CAPITAL] Capital''s base [ICON_STRENGTH] Combat Strength will be increased by [COLOR_POSITIVE_TEXT]{4_DefenseBoost}%[ENDCOLOR], up to a global maximum of [COLOR_POSITIVE_TEXT]{5_DefenseTotal}%[ENDCOLOR]. [NEWLINE][NEWLINE]Protection cannot be revoked until {2_TurnsMinimum} turns after the pledge is made.'
	WHERE Tag = 'TXT_KEY_POP_CSTATE_PLEDGE_TT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );
	
	
	UPDATE Language_en_US
	SET Text = '[NEWLINE][NEWLINE][COLOR_WARNING_TEXT]You must be at peace, have {1_InfluenceNeededToPledge} or more [ICON_INFLUENCE] Influence to pledge, and be in the top 60% (in terms of military power) of major civilizations.[ENDCOLOR]'
	WHERE Tag = 'TXT_KEY_POP_CSTATE_PLEDGE_DISABLED_INFLUENCE_TT';

	UPDATE Language_en_US
	SET Text = '[ICON_INFLUENCE] Influence too high'
	WHERE Tag = 'TXT_KEY_POP_CSTATE_BULLY_FACTOR_LOW_INFLUENCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );
	
	UPDATE Language_en_US
	SET Text = '[COLOR_NEGATIVE_TEXT]Fallout deals 15 Damage to Units that end their turn on a tile with Fallout.[ENDCOLOR][NEWLINE][NEWLINE]Fallout is the residual radiation left over following a nuclear explosion. The fallout "falls out" of the air as a layer of radioactive particles which are highly dangerous to plants and animals, killing them immediately or damaging their DNA, giving them cancer, other diseases, or unfortunate mutations. Depending upon the type of nuclear explosion, the land may remain poisoned for decades, possibly centuries. Cleanup requires the replacement of the contaminated buildings, soil and vegetation.'
	WHERE Tag = 'TXT_KEY_FEATURE_FALLOUT_PEDIA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
	
	INSERT INTO Language_en_US (
	Tag, Text)
	SELECT 'TXT_KEY_BUILD_FARM_REC', 'It will boost your [ICON_FOOD] Food output on this tile. For every two Farms adjacent to this one, it will gain an additional +1 [ICON_FOOD] Food!'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'Farms can be constructed on most any land to improve the output of food on the tile. For every two Farms adjacent to each other, Farms gain additional Food.[NEWLINE][NEWLINE]Farming is one of the earliest and most important of all human professions, as it allowed mankind to stop migrating and settle in one location without depleting the local resources.'
	WHERE Tag = 'TXT_KEY_CIV5_IMPROVEMENTS_FARM_TEXT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	INSERT INTO Language_en_US (
	Tag, Text)
	SELECT 'TXT_KEY_BUILD_FARM_HELP', 'Gain an additional +1 [ICON_FOOD] Food for every 2 Farms adjacent to one another.'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

	-- Trading Post - name change

	UPDATE Language_en_US
	SET Text = 'Villages are smaller settlements scattered around the countryside of a civilization, representative of the people that live off of the land and trade. They can generate a lot of wealth for a society, particularly when placed on Roads, Railroads, or on Trade Routes.[NEWLINE][NEWLINE]Receive [ICON_GOLD] Gold [ICON_PRODUCTION] Production if built on a Road or Railroad that connects two owned Cities.[NEWLINE][NEWLINE]Receive additional [ICON_GOLD] Gold and [ICON_PRODUCTION] Production (+1 pre-Industrial Era, +2 Industrial Era or later) if a Trade Route, either internal or international, passes over this Village.'
	WHERE Tag = 'TXT_KEY_CIV5_IMPROVEMENTS_TRADING_POST_TEXT';

	UPDATE Language_en_US
	SET Text = 'Village'
	WHERE Tag = 'TXT_KEY_CIV5_IMPROVEMENTS_TRADINGPOST';

	UPDATE Language_en_US
	SET Text = 'Village'
	WHERE Tag = 'TXT_KEY_IMPROVEMENT_TRADING_POST';

	UPDATE Language_en_US
	SET Text = 'Construct a [LINK=IMPROVEMENT_TRADING_POST]Village[\LINK]'
	WHERE Tag = 'TXT_KEY_BUILD_TRADING_POST';

	UPDATE Language_en_US
	SET Text = 'Does the village provide gold?'
	WHERE Tag = 'TXT_KEY_GOLD_TRADINGPOST_ADV_QUEST';

	UPDATE Language_en_US
	SET Text = 'Construct a Village improvement in a tile to increase its gold output. Earns additional gold and production if placed on a Road or Railroad that connects two owned cities and/or if a Trade Route, either internal or international, passes over it. Cannot be built adjacent to one another.'
	WHERE Tag = 'TXT_KEY_GOLD_TRADINGPOST_HEADING3_BODY';

	UPDATE Language_en_US
	SET Text = 'The village increases output of a tile by 3 gold and 1 culture. It does not access a resource. It generates additional gold and production if on a route and/or if built on a trade route.[NEWLINE]Technology Required: Currency[NEWLINE]Construction Time: 5 Turns[NEWLINE]May Be Constructed On: Any land tile but ice. Cannot be built adjacent to one another.'
	WHERE Tag = 'TXT_KEY_WORKERS_TRADINGPOST_HEADING3_BODY';

	UPDATE Language_en_US
	SET Text = 'The Village'
	WHERE Tag = 'TXT_KEY_GOLD_TRADINGPOST_HEADING3_TITLE';

	UPDATE Language_en_US
	SET Text = 'During a game, you will create "workers" - non-military units who will "improve" the land around your cities, increasing productivity or providing access to a nearby "resource." Improvements include farms, villages, lumber mills, quarries, mines, and more. During wartime your enemy may "pillage" (destroy) your improvements. Pillaged improvements are ineffective until a worker has "repaired" them.'
	WHERE Tag = 'TXT_KEY_PEDIA_IMPROVEMENT_HELP_TEXT';

	-- Fort
	UPDATE Language_en_US
	SET Text = 'A fort is a special improvement that improves the defensive bonus of the tile by 50% for units stationed in that tile. However, forts do not provide a defensive bonus to units in enemy territory. Cannot be built adjacent to one another.'
	WHERE Tag = 'TXT_KEY_CIV5_IMPROVEMENTS_FORT_TEXT';

	-- Landmark
	UPDATE Language_en_US
	SET Text = 'A Landmark is any magnificent artifact, structure, work of art, or wonder of nature that draws visitors to a location. Nelson''s Column in London is a landmark, as is Mount Rushmore in the United States. Not every significantly sized object, however, is a landmark: the World''s Largest Ball of Twine may never rise to that stature (though it might well be worth a visit). Landmarks provide +1 [ICON_CULTURE] Culture and +1 [ICON_GOLD] Gold for each additional Era that has passed in comparison to the original Era of the Artifact.'
	WHERE Tag = 'TXT_KEY_CIV5_IMPROVEMENTS_LANDMARK_TEXT';

	UPDATE Language_en_US
	SET Text = 'You have found {@1_Name}!'
	WHERE Tag = 'TXT_KEY_FOUND_NATURAL_WONDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	-- Theming
	UPDATE Language_en_US
	SET Text = '{1_Num} [ICON_TOURISM] Tourism from Theming Bonuses'
	WHERE Tag = 'TXT_KEY_CO_CITY_TOURISM_THEMING_BONUSES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

	-- Happiness
	
	UPDATE Language_en_US
	SET Text = '[ICON_CITIZEN] Citizens in non-occupied Cities do not produce [ICON_HAPPINESS_3] Unhappiness directly. See the tooltips below for the sources of [ICON_HAPPINESS_3] Unhappiness in each City'
	WHERE Tag = 'TXT_KEY_POP_UNHAPPINESS_TT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'Every (non-occupied) City produces 0 [ICON_HAPPINESS_3] Unhappiness.'
	WHERE Tag = 'TXT_KEY_NUMBER_OF_CITIES_TT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'Every (non-occupied) City produces 0 [ICON_HAPPINESS_3] Unhappiness (normally).'
	WHERE Tag = 'TXT_KEY_NUMBER_OF_CITIES_TT_NORMALLY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'Every [ICON_OCCUPIED] Occupied City produces 0 [ICON_HAPPINESS_3] Unhappiness.'
	WHERE Tag = 'TXT_KEY_NUMBER_OF_OCCUPIED_CITIES_TT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'Every [ICON_CITIZEN] Citizen in an [ICON_OCCUPIED] Occupied City produces 1 [ICON_HAPPINESS_3] Unhappiness'
	WHERE Tag = 'TXT_KEY_OCCUPIED_POP_UNHAPPINESS_TT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'Sort By Unhappiness'
	WHERE Tag = 'TXT_KEY_EO_SORT_STRENGTH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'City will be [ICON_RAZING] Razed to the ground in {1_Num} turn(s)! While being Razed, 50% of the [ICON_CITIZEN] Population will produce [ICON_HAPPINESS_3] Unhappiness!'
	WHERE Tag = 'TXT_KEY_CITY_BURNING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'City is in [ICON_RESISTANCE] Resistance for {1_Num} turn(s)! While in Resistance, a City cannot do anything useful and 50% of the [ICON_CITIZEN] Population will produce [ICON_HAPPINESS_3] Unhappiness!'
	WHERE Tag = 'TXT_KEY_CITY_RESISTANCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '{1_Num} from [ICON_CITIZEN] Population in [ICON_OCCUPIED] Occupied or [ICON_RESISTANCE] Resisting Cities.'
	WHERE Tag = 'TXT_KEY_TP_UNHAPPINESS_OCCUPIED_POPULATION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '{1_Num : number "#.##"} from [ICON_CITIZEN] Urbanization (Specialists).'
	WHERE Tag = 'TXT_KEY_TP_UNHAPPINESS_SPECIALISTS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

	-- Tutorial Text

	UPDATE Language_en_US
	SET Text = 'The happiness system in the Community Balance Patch is completely revised, favoring neither tall nor wide playstyles. Happiness is now based on a cause-and-effect mechanism that makes your empire feel far more alive, and dynamic, than ever before. [NEWLINE][NEWLINE]Your happiness is displayed on the status line of the Main Screen (in the upper left-hand corner of the game). Watch it carefully. If it reaches zero, your population is getting restless. If it starts to dip into negative numbers, you are in trouble. (Incidentally, you can get an excellent snapshot of your happiness by hovering your cursor over this number.)[NEWLINE][NEWLINE]One important note to remember - happiness generated from city buildings and city-based policies can never exceed its population.[NEWLINE][NEWLINE]Positive happiness increases the value of your national yields (i.e. your total science per turn), whereas unhappiness decreases them. You can see your current modifier by hovering over the [ICON_HAPPINESS_1] icon in the Top Panel bar.'
	WHERE Tag = 'TXT_KEY_HAPPINESS_HEADING1_BODY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'The following increase your happiness:[NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]Luxury Resources[ENDCOLOR]: Improve resources within your territory or trade for them with other civs. Each kind of resource improves your happiness. Luxuries grant happiness as a factor of total empire population. The higher your pop, the more happiness your luxuries provide. This makes luxuries less vital early on, as +1 Happiness is not as big of a deal, yet it does not punish tall or wide strategies because the focus is on overall population, not the number of cities. In short, Luxuries "level up" as your empire grows in population.[NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]Buildings[ENDCOLOR]: Certain buildings increase your happiness, while others reduce Unhappiness from things like Crime and Poverty (thus indirectly boosting your Happiness). These include the Arena, the Circus, the Zoo, and others. Each building constructed anywhere in your civ increases your overall happiness (so two Arenas produce twice as much happiness as one, unlike Luxuries).[NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]Wonders[ENDCOLOR]: Certain wonders like Notre Dame and the Hanging Gardens can give you a big boost in happiness.[NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]Social Policies[ENDCOLOR]: Policies provide a lot of happiness, but in different ways.[NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]Technologies[ENDCOLOR]: Technologies in themselves do not provide happiness, but they do unlock the buildings, wonders, resources and social policies which do.'
	WHERE Tag = 'TXT_KEY_HAPPINESS_CAUSES_HEADING2_BODY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'City happiness is no longer directly affected by the number of citizens in a city. Instead, happiness is based on a set of functions that look at economic variables. Overall, population is still key, however per-city unhappiness is a bit easier to manage (and tailor to certain play-styles). This makes Tall and Wide gameplay equally feasible, so long as your empire is well-managed. Furthermore, Citizens can only be "unhappy" for one value at a time, based on a scale of want. If a citizen is unhappy from Poverty, for example, that same citizen cannot be unhappy from anything else until the Poverty issue is resolved (thus the unhappiness generated by any one city is capped at the population of the city).[NEWLINE][NEWLINE]How this works: The yield-based functions combine the yields of your city, dividing this value by its population. This value is then compared to the rate value per citizen as a global average of all city yields per pop. If the global rate value per citizen is higher than the rate value of your city, (i.e. you are not producing as much as the rate value expects), the difference between the two is factored by the per-citizen unhappiness value and the unhappiness is generated. In other words, if your cities are behind the global average in yields per pop, the difference will be converted into unhappiness. This Global Average will gradually increase as the game progresses (all cities become more and more wealthy over time, therefore the Global Average of what defines Poverty changes), and increases gradually (around 2%) for every City you found or conquer.[NEWLINE][NEWLINE] Sources of Unhappiness: [NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]Starvation[ENDCOLOR]: This one can be fatal, so be careful. If a city is starving, this function looks at the value of that starvation (i.e. the negative value of food being consumed) and compares that to the rate value of the function.[NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]Pillaged tiles[ENDCOLOR]: Similar to city connections, this function will generate unhappiness based on a rate per citizen value which looks at the number of pillaged tiles. The more pillaged tiles there are, the higher this unhappiness.[NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]Poverty[ENDCOLOR]: This looks at gold yields. If these yields do not exceed the rate criteria, your city has some element of poverty. This is largely inevitable in all but the wealthiest cities.[NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]Isolation[ENDCOLOR]: Blockades or a lack of a city connection will generate unhappiness based on a rate per citizen value. Should only be a problem if you are besieged from the sea, your routes are pillaged and/or you have not connected your cities together. If you connect cities to your capital via an internal trade route (daisy chain or individually), this unhappiness penalty is negated (so blockades or long-distance cities can be "connected" to your capital via trade).[NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]Crime[ENDCOLOR]: This function looks at the defensive capabilities of your city and its garrison. This test takes defense as a "yield" (i.e. the defense produced by defensive structures and garrisons) and subtracts city damage, if any. If these yields do not exceed the rate criteria, your city has some element of crime. This is inevitable in large cities or cities under siege, especially if you do not have a garrison. Cities that are damaged or surrounded by enemies have increased crime.[NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]Religious Tension[ENDCOLOR]: This looks at the majority religion of the city, and compares it to the number of citizens that are not part of that religion. If that value exceeds the rate value of the function, you will have some religious strife. This is largely inevitable in most large cities, but should never be a major source of unhappiness. You can reduce this value further by building more faith-producing buildings in the city (high faith production has the ability to subtract from your minority population), or simply converting people to your one, true faith.[NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]Illiteracy[ENDCOLOR]: This looks at the science yield of the city. If this yield does not exceed the rate criteria, your city has some element of illiteracy. This is largely inevitable in all but the smartest cities. [NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]Boredom[ENDCOLOR]: This looks at the culture yields of the city. If these yields do not exceed the rate criteria, your city has some element of boredom (i.e. your citizenry is not entertained). This is can be circumvented by building Arena and other such buildings, or through Great Works. [NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]Specialists[ENDCOLOR]: Specialists generate unhappiness at a flat rate based on the number of specialists in your empire. [NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]War Weariness[ENDCOLOR]: Once you have an ideology, you have the potential to gain empire-wide War Weariness (this is in addition to ideological unrest).'
	WHERE Tag = 'TXT_KEY_HAPPINESS_CAUSESUNHAPPINESS_HEADING2_BODY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'The happiness system in the Community Balance Patch is completely revised, favoring neither tall nor wide playstyles. Happiness is now based on a cause-and-effect mechanism that makes your empire feel far more alive, and dynamic, than ever before. [NEWLINE][NEWLINE]Your happiness is displayed on the status line of the Main Screen (in the upper left-hand corner of the game). Watch it carefully. If it reaches zero, your population is getting restless. If it starts to dip into negative numbers, you are in trouble. (Incidentally, you can get an excellent snapshot of your happiness by hovering your cursor over this number.)[NEWLINE][NEWLINE]One important note to remember - happiness generated from city buildings and city-based policies can never exceed its population.[NEWLINE][NEWLINE]Positive happiness increases the value of your national yields (i.e. your total science per turn), whereas unhappiness decreases them. You can see your current modifier by hovering over the [ICON_HAPPINESS_1] icon in the Top Panel bar.'
	WHERE Tag = 'TXT_KEY_HAPPINESS_HEADING1_BODY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'There are three levels of unhappiness. Unhappy, Unrest, and Revolt. An Unhappy civilization will reduce growth in all cities and the value of your national yields (i.e. your total science per turn). A civilization experiencing Unrest can have many more problems, including combat penalties and open rebellion, and a civilization in Revolt can potentially have cities abandon your empire.'
	WHERE Tag = 'TXT_KEY_HAPPINESS_LEVELSUNHAPPINESS_HEADING2_BODY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

	-- Text for city view tooltip.
	INSERT INTO Language_en_US (
	Text, Tag)
	SELECT '[NEWLINE][ICON_BULLET][ICON_HAPPINESS_1] Happiness Modifier: {1_Num}%', 'TXT_KEY_FOODMOD_HAPPY'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_HAPPINESS' AND Value= 0 );


	INSERT INTO Language_en_US (
	Text, Tag)
	SELECT '[NEWLINE][ICON_BULLET]Modified due to Happiness: {1_Num}%', 'TXT_KEY_PRODMOD_BALANCE_HAPPINESS_MOD'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_HAPPINESS' AND Value= 0 );

-- Text for city view tooltip.
	INSERT INTO Language_en_US (
	Text, Tag)
	SELECT '[NEWLINE][ICON_BULLET][ICON_HAPPINESS_1] Happiness Modifier: {1_Num}%', 'TXT_KEY_FOODMOD_HAPPY'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_HAPPINESS' AND Value= 1 );

-- Text for city view tooltip.
	INSERT INTO Language_en_US (
	Text, Tag)
	SELECT '[NEWLINE][ICON_BULLET]Modified due to Happiness: {1_Num}%', 'TXT_KEY_PRODMOD_BALANCE_HAPPINESS_MOD'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_HAPPINESS' AND Value= 1 );

-- Text for city view tooltip.
	UPDATE Language_en_US
	Set Text = '[ICON_BULLET][COLOR_POSITIVE_TEXT]+{1_Num}[ENDCOLOR] from your [ICON_GOLDEN_AGE] Golden Age.'
	WHERE Tag = 'TXT_KEY_TP_CULTURE_FROM_GOLDEN_AGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_HAPPINESS' AND Value= 1 );

-- Rebels!
	UPDATE Language_en_US
	SET Text = 'Because the empire has at least 20 [ICON_HAPPINESS_4] Unhappiness, an uprising has occurred in our territory!'
	WHERE Tag = 'TXT_KEY_NOTIFICATION_REBELS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

-- Update Text for Very Unhappy and Super Unhappy

-- Update text for top panel depending on which yields you have enabled above. Change as desired.
	UPDATE Language_en_US
	SET Text = 'Your empire is [ICON_HAPPINESS_3] very unhappy![ENDCOLOR] [NEWLINE][NEWLINE]Because of this, empire-wide [ICON_CULTURE] Culture, [ICON_PEACE] Faith, [ICON_GOLD] Gold, [ICON_FOOD] Growth, and [ICON_RESEARCH] Science are reduced by[COLOR_NEGATIVE_TEXT] {1_num}% [ENDCOLOR], and [ICON_STRENGTH] Combat effectiveness is reduced by[COLOR_NEGATIVE_TEXT] {1_Num}%[ENDCOLOR]!'
	WHERE Tag = 'TXT_KEY_TP_EMPIRE_VERY_UNHAPPY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_HAPPINESS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'Because your [ICON_HAPPINESS_4] Unhappiness has reached 20, the Empire is is in revolt! [ENDCOLOR]Cities may abandon your empire and flip to the civilization that is most culturally influential over your people, and uprisings may occur with rebel (barbarian) units appearing in your territory!'
	WHERE Tag = 'TXT_KEY_TP_EMPIRE_SUPER_UNHAPPY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_HAPPINESS' AND Value= 1 );
	
-- Update text for top panel depending on which yields you have enabled above. Change as desired.
	UPDATE Language_en_US
	SET Text = 'Your empire is [ICON_HAPPINESS_3] unhappy! [NEWLINE][NEWLINE][ENDCOLOR]Because of this, empire-wide [ICON_CULTURE] Culture, [ICON_PEACE] Faith, [ICON_GOLD] Gold, [ICON_FOOD] Growth, and [ICON_RESEARCH] Science are reduced by[COLOR_NEGATIVE_TEXT] {1_num}%[ENDCOLOR], and [ICON_STRENGTH] Combat effectiveness is reduced by[COLOR_NEGATIVE_TEXT] {1_Num}%[ENDCOLOR]!'
	WHERE Tag = 'TXT_KEY_TP_EMPIRE_UNHAPPY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_HAPPINESS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'Total [ICON_HAPPINESS_1] Happiness Level of the empire is {1_Num}. Because of this, empire-wide [ICON_CULTURE] Culture, [ICON_PEACE] Faith, [ICON_GOLD] Gold, [ICON_FOOD] Growth, and [ICON_RESEARCH] Science are increased by [COLOR_POSITIVE_TEXT] +{2_num}% [ENDCOLOR].'
	WHERE Tag = 'TXT_KEY_TP_TOTAL_HAPPINESS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_HAPPINESS' AND Value= 1 );

-- TOOLTIPS FOR TOP BAR

-- Text for city view tooltip.
	INSERT INTO Language_en_US (
	Text, Tag)
	SELECT '{1_Num} due to [ICON_HAPPINESS_1] Happiness.', 'TXT_KEY_TP_GOLD_GAINED_FROM_HAPPINESS'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_HAPPINESS' AND Value= 1 );


-- Text for city view tooltip.
	INSERT INTO Language_en_US (
	Text, Tag)
	SELECT '{1_NUM} due to [ICON_HAPPINESS_3] Unhappiness.', 'TXT_KEY_TP_GOLD_LOST_FROM_UNHAPPINESS'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_HAPPINESS' AND Value= 1 );

-- Text for city view tooltip.
	INSERT INTO Language_en_US (
	Text, Tag)
	SELECT '[ICON_BULLET] [COLOR_POSITIVE_TEXT]+{1_Num}[ENDCOLOR] due to [ICON_HAPPINESS_1] Happiness.', 'TXT_KEY_TP_FAITH_GAINED_FROM_HAPPINESS'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_HAPPINESS' AND Value= 1 );


-- Text for city view tooltip.
	INSERT INTO Language_en_US (
	Text, Tag)
	SELECT '[ICON_BULLET] [COLOR_NEGATIVE_TEXT]{1_NUM}[ENDCOLOR] due to [ICON_HAPPINESS_3] Unhappiness.', 'TXT_KEY_TP_FAITH_LOST_FROM_UNHAPPINESS'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_HAPPINESS' AND Value= 1 );

-- Text for city view tooltip.
	INSERT INTO Language_en_US (
	Text, Tag)
	SELECT '[ICON_BULLET] [COLOR_POSITIVE_TEXT]+{1_Num}[ENDCOLOR] [ICON_RESEARCH] due to [ICON_HAPPINESS_1] Happiness.', 'TXT_KEY_TP_SCIENCE_GAINED_FROM_HAPPINESS'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_HAPPINESS' AND Value= 1 );


-- Text for city view tooltip.
	INSERT INTO Language_en_US (
	Text, Tag)
	SELECT '[ICON_BULLET] [COLOR_NEGATIVE_TEXT]{1_Num}[ENDCOLOR] [ICON_RESEARCH] due to [ICON_HAPPINESS_3] Unhappiness.', 'TXT_KEY_TP_SCIENCE_LOST_FROM_UNHAPPINESS'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_HAPPINESS' AND Value= 1 );

-- Text for city view tooltip.
	INSERT INTO Language_en_US (
	Text, Tag)
	SELECT '[ICON_BULLET] [COLOR_NEGATIVE_TEXT]{1_NUM}[ENDCOLOR] due to due to [ICON_HAPPINESS_3] Unhappiness.', 'TXT_KEY_TP_CULTURE_LOST_FROM_UNHAPPINESS'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_HAPPINESS' AND Value= 1 );

-- Text for city view tooltip.
	INSERT INTO Language_en_US (
	Text, Tag)
	SELECT '[ICON_BULLET] [COLOR_POSITIVE_TEXT]+{1_Num}[ENDCOLOR] due to [ICON_HAPPINESS_1] Happiness.', 'TXT_KEY_TP_CULTURE_GAINED_FROM_HAPPINESS'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_NATIONAL_HAPPINESS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '{@1_CityName} can no longer work on {@2_BldgName}. The lost [ICON_PRODUCTION] is converted into {3_NumGold}[ICON_CULTURE]!'
	WHERE Tag = 'TXT_KEY_MISC_LOST_WONDER_PROD_CONVERTED' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK' AND Value= 2 );

	UPDATE Language_en_US
	SET Text = '{@1_CityName} can no longer work on {@2_BldgName}. The lost [ICON_PRODUCTION] is converted into {3_NumGold}[ICON_GOLDEN_AGE]!'
	WHERE Tag = 'TXT_KEY_MISC_LOST_WONDER_PROD_CONVERTED' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK' AND Value= 3 );

	UPDATE Language_en_US
	SET Text = '{@1_CityName} can no longer work on {@2_BldgName}. The lost [ICON_PRODUCTION] is converted into {3_NumGold}[ICON_RESEARCH]!'
	WHERE Tag = 'TXT_KEY_MISC_LOST_WONDER_PROD_CONVERTED' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK' AND Value= 4 );

	UPDATE Language_en_US
	SET Text = '{@1_CityName} can no longer work on {@2_BldgName}. The lost [ICON_PRODUCTION] is converted into {3_NumGold}[ICON_PEACE]!'
	WHERE Tag = 'TXT_KEY_MISC_LOST_WONDER_PROD_CONVERTED' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK' AND Value= 5 );
