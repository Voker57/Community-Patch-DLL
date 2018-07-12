-- Unlock Time
UPDATE PolicyBranchTypes
SET EraPrereq = 'ERA_INDUSTRIAL'
WHERE Type = 'POLICY_BRANCH_EXPLORATION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Opener -- Now called Imperialism -- Grants +1 Movement and +1 Sight for Naval Units, and speeds production of land units by +5%, with an additional +4% for every policy unlocked in Imperialism. Receive 1 extra happiness for every owned luxury, and 1 Happiness for every garrisoned unit.

UPDATE Policies
SET EmbarkedExtraMoves = '1'
WHERE Type = 'POLICY_EXPLORATION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );



-- Maritime Infrastructure -- Now Martial Law
UPDATE Policies
SET PuppetYieldPenaltyMod = '30'
WHERE Type = 'POLICY_MARITIME_INFRASTRUCTURE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET GarrisonFreeMaintenance = '1'
WHERE Type = 'POLICY_MARITIME_INFRASTRUCTURE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

DELETE FROM Policy_CoastalCityYieldChanges
WHERE PolicyType = 'POLICY_MARITIME_INFRASTRUCTURE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET PortraitIndex = '0'
WHERE Type = 'POLICY_MARITIME_INFRASTRUCTURE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET IconAtlas = 'EXPANSIONPATCH_POLICY_ATLAS'
WHERE Type = 'POLICY_MARITIME_INFRASTRUCTURE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET IconAtlasAchieved = 'EXPANSIONPATCH_POLICY_ACHIEVED_ATLAS'
WHERE Type = 'POLICY_MARITIME_INFRASTRUCTURE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

INSERT INTO Policy_BuildingClassHappiness
	(PolicyType, BuildingClassType, Happiness)
VALUES
	('POLICY_MARITIME_INFRASTRUCTURE', 'BUILDINGCLASS_CONSTABLE', 1);

-- Merchant Navy -- Now called Exploitation -- +1 Gold and +1 Production from Farms and Plantations
DELETE FROM Policy_BuildingClassYieldChanges
WHERE PolicyType = 'POLICY_MERCHANT_NAVY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

DELETE FROM Policy_BuildingClassCultureChanges
WHERE PolicyType = 'POLICY_MERCHANT_NAVY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET UpgradeCSVassalTerritory = '1'
WHERE Type = 'POLICY_MERCHANT_NAVY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Naval Tradition -- Military Tradition -- Free GA, Improved Embark, and reveals all capitals.
DELETE FROM Policy_BuildingClassHappiness
WHERE PolicyType = 'POLICY_NAVAL_TRADITION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET MonopolyModFlat = '4'
WHERE Type = 'POLICY_NAVAL_TRADITION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET MonopolyModPercent = '10'
WHERE Type = 'POLICY_NAVAL_TRADITION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET RevealAllCapitals = '0'
WHERE Type = 'POLICY_NAVAL_TRADITION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Navigation School - Now Exploration --  +33% to Great Admiral and Great General Production -- Barracks, Armories and Military Academies provide +1 Science.
DELETE FROM Policy_FreePromotions
WHERE PolicyType = 'POLICY_NAVIGATION_SCHOOL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET GreatAdmiralRateModifier = '33'
WHERE Type = 'POLICY_NAVIGATION_SCHOOL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET GreatGeneralRateModifier = '33'
WHERE Type = 'POLICY_NAVIGATION_SCHOOL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

DELETE FROM Policy_FreeUnitClasses
WHERE PolicyType = 'POLICY_NAVIGATION_SCHOOL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET IncludesOneShotFreeUnits = '0'
WHERE Type = 'POLICY_NAVIGATION_SCHOOL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Treasure Fleets -- Now called Civilizing Mission -- Receive a free Factory, and a lump sum of Gold, when you conquer a city. Garrisons are free.
UPDATE Policies
SET SeaTradeRouteGoldChange = '0'
WHERE Type = 'POLICY_TREASURE_FLEETS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET ConquestPerEraBuildingProductionMod = '10'
WHERE Type = 'POLICY_TREASURE_FLEETS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Finisher
--UPDATE Policies
--SET IdeologyPoint = '1'
--WHERE Type = 'POLICY_EXPLORATION_FINISHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

--Finisher 

UPDATE Policies
SET NeedsModifierFromAirUnits = '3'
WHERE Type = 'POLICY_EXPLORATION_FINISHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET FlatDefenseFromAirUnits = '3'
WHERE Type = 'POLICY_EXPLORATION_FINISHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET AdmiralLuxuryBonus = '2'
WHERE Type = 'POLICY_EXPLORATION_FINISHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );



-- scaler

UPDATE Policies
SET UnitUpgradeCostMod = '-10'
WHERE Type = 'POLICY_EXPLORATION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET UnitUpgradeCostMod = '-5'
WHERE Type = 'POLICY_MARITIME_INFRASTRUCTURE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET UnitUpgradeCostMod = '-5'
WHERE Type = 'POLICY_NAVAL_TRADITION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET UnitUpgradeCostMod = '-5'
WHERE Type = 'POLICY_MERCHANT_NAVY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET UnitUpgradeCostMod = '-5'
WHERE Type = 'POLICY_NAVIGATION_SCHOOL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET UnitUpgradeCostMod = '-5'
WHERE Type = 'POLICY_TREASURE_FLEETS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- NEW

-- scaler

INSERT INTO Policy_UnitCombatProductionModifiers
	(PolicyType, UnitCombatType, ProductionModifier)
VALUES
	('POLICY_EXPLORATION', 'UNITCOMBAT_NAVALRANGED', 10),
	('POLICY_EXPLORATION', 'UNITCOMBAT_SUBMARINE', 10),
	('POLICY_EXPLORATION', 'UNITCOMBAT_CARRIER', 10),
	('POLICY_EXPLORATION', 'UNITCOMBAT_NAVALMELEE', 10),
	('POLICY_EXPLORATION', 'UNITCOMBAT_BOMBER', 10),
	('POLICY_EXPLORATION', 'UNITCOMBAT_FIGHTER', 10),
	('POLICY_MARITIME_INFRASTRUCTURE', 'UNITCOMBAT_NAVALRANGED', 5),
	('POLICY_MARITIME_INFRASTRUCTURE', 'UNITCOMBAT_SUBMARINE', 5),
	('POLICY_MARITIME_INFRASTRUCTURE', 'UNITCOMBAT_CARRIER', 5),
	('POLICY_MARITIME_INFRASTRUCTURE', 'UNITCOMBAT_NAVALMELEE', 5),
	('POLICY_MARITIME_INFRASTRUCTURE', 'UNITCOMBAT_BOMBER', 5),
	('POLICY_MARITIME_INFRASTRUCTURE', 'UNITCOMBAT_FIGHTER', 5),
	('POLICY_NAVAL_TRADITION', 'UNITCOMBAT_NAVALRANGED', 5),
	('POLICY_NAVAL_TRADITION', 'UNITCOMBAT_SUBMARINE', 5),
	('POLICY_NAVAL_TRADITION', 'UNITCOMBAT_CARRIER', 5),
	('POLICY_NAVAL_TRADITION', 'UNITCOMBAT_NAVALMELEE', 5),
	('POLICY_NAVAL_TRADITION', 'UNITCOMBAT_BOMBER', 5),
	('POLICY_NAVAL_TRADITION', 'UNITCOMBAT_FIGHTER', 5),
	('POLICY_MERCHANT_NAVY', 'UNITCOMBAT_NAVALRANGED', 5),
	('POLICY_MERCHANT_NAVY', 'UNITCOMBAT_SUBMARINE', 5),
	('POLICY_MERCHANT_NAVY', 'UNITCOMBAT_CARRIER', 5),
	('POLICY_MERCHANT_NAVY', 'UNITCOMBAT_NAVALMELEE', 5),
	('POLICY_MERCHANT_NAVY', 'UNITCOMBAT_BOMBER', 5),
	('POLICY_MERCHANT_NAVY', 'UNITCOMBAT_FIGHTER', 5),
	('POLICY_NAVIGATION_SCHOOL', 'UNITCOMBAT_NAVALRANGED', 5),
	('POLICY_NAVIGATION_SCHOOL', 'UNITCOMBAT_SUBMARINE', 5),
	('POLICY_NAVIGATION_SCHOOL', 'UNITCOMBAT_CARRIER', 5),
	('POLICY_NAVIGATION_SCHOOL', 'UNITCOMBAT_NAVALMELEE', 5),
	('POLICY_NAVIGATION_SCHOOL', 'UNITCOMBAT_BOMBER', 5),
	('POLICY_NAVIGATION_SCHOOL', 'UNITCOMBAT_FIGHTER', 5),
	('POLICY_TREASURE_FLEETS', 'UNITCOMBAT_NAVALRANGED', 5),
	('POLICY_TREASURE_FLEETS', 'UNITCOMBAT_SUBMARINE', 5),
	('POLICY_TREASURE_FLEETS', 'UNITCOMBAT_CARRIER', 5),
	('POLICY_TREASURE_FLEETS', 'UNITCOMBAT_NAVALMELEE', 5),
	('POLICY_TREASURE_FLEETS', 'UNITCOMBAT_BOMBER', 5),
	('POLICY_TREASURE_FLEETS', 'UNITCOMBAT_FIGHTER', 5),
	('POLICY_EXPLORATION', 'UNITCOMBAT_MELEE', 10),
	('POLICY_EXPLORATION', 'UNITCOMBAT_ARMOR', 10),
	('POLICY_EXPLORATION', 'UNITCOMBAT_HELICOPTER', 10),
	('POLICY_EXPLORATION', 'UNITCOMBAT_GUN', 10),
	('POLICY_EXPLORATION', 'UNITCOMBAT_SIEGE', 10),
	('POLICY_EXPLORATION', 'UNITCOMBAT_MOUNTED', 10),
	('POLICY_EXPLORATION', 'UNITCOMBAT_ARCHER', 10),
	('POLICY_EXPLORATION', 'UNITCOMBAT_RECON', 10),
	('POLICY_MARITIME_INFRASTRUCTURE', 'UNITCOMBAT_MELEE', 5),
	('POLICY_MARITIME_INFRASTRUCTURE', 'UNITCOMBAT_ARMOR', 5),
	('POLICY_MARITIME_INFRASTRUCTURE', 'UNITCOMBAT_HELICOPTER', 5),
	('POLICY_MARITIME_INFRASTRUCTURE', 'UNITCOMBAT_GUN', 5),
	('POLICY_MARITIME_INFRASTRUCTURE', 'UNITCOMBAT_SIEGE', 5),
	('POLICY_MARITIME_INFRASTRUCTURE', 'UNITCOMBAT_MOUNTED', 5),
	('POLICY_MARITIME_INFRASTRUCTURE', 'UNITCOMBAT_ARCHER', 5),
	('POLICY_MARITIME_INFRASTRUCTURE', 'UNITCOMBAT_RECON', 5),
	('POLICY_NAVAL_TRADITION', 'UNITCOMBAT_MELEE', 5),
	('POLICY_NAVAL_TRADITION', 'UNITCOMBAT_ARMOR', 5),
	('POLICY_NAVAL_TRADITION', 'UNITCOMBAT_HELICOPTER', 5),
	('POLICY_NAVAL_TRADITION', 'UNITCOMBAT_GUN', 5),
	('POLICY_NAVAL_TRADITION', 'UNITCOMBAT_SIEGE', 5),
	('POLICY_NAVAL_TRADITION', 'UNITCOMBAT_MOUNTED', 5),
	('POLICY_NAVAL_TRADITION', 'UNITCOMBAT_ARCHER', 5),
	('POLICY_NAVAL_TRADITION', 'UNITCOMBAT_RECON', 5),
	('POLICY_MERCHANT_NAVY', 'UNITCOMBAT_MELEE', 5),
	('POLICY_MERCHANT_NAVY', 'UNITCOMBAT_ARMOR', 5),
	('POLICY_MERCHANT_NAVY', 'UNITCOMBAT_HELICOPTER', 5),
	('POLICY_MERCHANT_NAVY', 'UNITCOMBAT_GUN', 5),
	('POLICY_MERCHANT_NAVY', 'UNITCOMBAT_SIEGE', 5),
	('POLICY_MERCHANT_NAVY', 'UNITCOMBAT_MOUNTED', 5),
	('POLICY_MERCHANT_NAVY', 'UNITCOMBAT_ARCHER', 5),
	('POLICY_MERCHANT_NAVY', 'UNITCOMBAT_RECON', 5),
	('POLICY_NAVIGATION_SCHOOL', 'UNITCOMBAT_MELEE', 5),
	('POLICY_NAVIGATION_SCHOOL', 'UNITCOMBAT_ARMOR', 5),
	('POLICY_NAVIGATION_SCHOOL', 'UNITCOMBAT_HELICOPTER', 5),
	('POLICY_NAVIGATION_SCHOOL', 'UNITCOMBAT_GUN', 5),
	('POLICY_NAVIGATION_SCHOOL', 'UNITCOMBAT_SIEGE', 5),
	('POLICY_NAVIGATION_SCHOOL', 'UNITCOMBAT_MOUNTED', 5),
	('POLICY_NAVIGATION_SCHOOL', 'UNITCOMBAT_ARCHER', 5),
	('POLICY_NAVIGATION_SCHOOL', 'UNITCOMBAT_RECON', 5),
	('POLICY_TREASURE_FLEETS', 'UNITCOMBAT_MELEE', 5),
	('POLICY_TREASURE_FLEETS', 'UNITCOMBAT_ARMOR', 5),
	('POLICY_TREASURE_FLEETS', 'UNITCOMBAT_HELICOPTER', 5),
	('POLICY_TREASURE_FLEETS', 'UNITCOMBAT_GUN', 5),
	('POLICY_TREASURE_FLEETS', 'UNITCOMBAT_SIEGE', 5),
	('POLICY_TREASURE_FLEETS', 'UNITCOMBAT_MOUNTED', 5),
	('POLICY_TREASURE_FLEETS', 'UNITCOMBAT_ARCHER', 5),
	('POLICY_TREASURE_FLEETS', 'UNITCOMBAT_RECON', 5);


INSERT INTO Policy_ConquerorYield
	(PolicyType, YieldType, Yield)
VALUES
	('POLICY_TREASURE_FLEETS', 'YIELD_GOLD', 150);

INSERT INTO Policy_ImprovementYieldChanges
	(PolicyType, ImprovementType, YieldType, Yield)
VALUES
	('POLICY_MERCHANT_NAVY', 'IMPROVEMENT_FARM', 'YIELD_PRODUCTION', 1),
	('POLICY_MERCHANT_NAVY', 'IMPROVEMENT_FARM', 'YIELD_FOOD', 2),
	('POLICY_MERCHANT_NAVY', 'IMPROVEMENT_PLANTATION', 'YIELD_PRODUCTION', 1),
	('POLICY_MERCHANT_NAVY', 'IMPROVEMENT_PLANTATION', 'YIELD_FOOD', 2),
	('POLICY_MERCHANT_NAVY', 'IMPROVEMENT_CAMP', 'YIELD_PRODUCTION', 1),
	('POLICY_MERCHANT_NAVY', 'IMPROVEMENT_CAMP', 'YIELD_FOOD', 2),
	('POLICY_NAVAL_TRADITION', 'IMPROVEMENT_FORT', 'YIELD_SCIENCE', 3),
	('POLICY_NAVAL_TRADITION', 'IMPROVEMENT_CITADEL', 'YIELD_SCIENCE', 3),
	('POLICY_NAVAL_TRADITION', 'IMPROVEMENT_FORT', 'YIELD_CULTURE', 2),
	('POLICY_NAVAL_TRADITION', 'IMPROVEMENT_CITADEL', 'YIELD_CULTURE', 2);

INSERT INTO Policy_PlotYieldChanges
	(PolicyType, PlotType, YieldType, Yield)
VALUES
	('POLICY_MERCHANT_NAVY', 'PLOT_OCEAN', 'YIELD_SCIENCE', 2),
	('POLICY_MERCHANT_NAVY', 'PLOT_OCEAN', 'YIELD_PRODUCTION', 1);

INSERT INTO Policy_BuildingClassYieldChanges
	(PolicyType, BuildingClassType, YieldType, YieldChange)
VALUES
	('POLICY_NAVAL_TRADITION', 'BUILDINGCLASS_BARRACKS', 'YIELD_SCIENCE', 3),
	('POLICY_NAVAL_TRADITION', 'BUILDINGCLASS_ARMORY', 'YIELD_SCIENCE', 3),
	('POLICY_NAVAL_TRADITION', 'BUILDINGCLASS_MILITARY_ACADEMY', 'YIELD_SCIENCE', 3);

INSERT INTO Policy_BuildingClassCultureChanges
	(PolicyType, BuildingClassType, CultureChange)
VALUES
	('POLICY_NAVAL_TRADITION', 'BUILDINGCLASS_BARRACKS', 2),
	('POLICY_NAVAL_TRADITION', 'BUILDINGCLASS_ARMORY', 2),
	('POLICY_NAVAL_TRADITION', 'BUILDINGCLASS_MILITARY_ACADEMY', 2);

INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
VALUES
	('PROMOTION_NAVAL_DEFENSE_BOOST', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_NAVAL_DEFENSE_BOOST', 'UNITCOMBAT_NAVALRANGED'),
	('PROMOTION_NAVAL_DEFENSE_BOOST', 'UNITCOMBAT_CARRIER'),
	('PROMOTION_NAVAL_DEFENSE_BOOST', 'UNITCOMBAT_SUBMARINE'),
	('PROMOTION_IMPERIALISM_OPENER', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_IMPERIALISM_OPENER', 'UNITCOMBAT_MELEE'),
	('PROMOTION_IMPERIALISM_OPENER', 'UNITCOMBAT_GUN'),
	('PROMOTION_IMPERIALISM_OPENER', 'UNITCOMBAT_RECON');

INSERT INTO Policy_FreePromotions
	(PolicyType, PromotionType)
VALUES
	('POLICY_EXPLORATION_FINISHER', 'PROMOTION_NAVAL_DEFENSE_BOOST'),
	('POLICY_EXPLORATION', 'PROMOTION_FASTER_GENERAL'),
	('POLICY_EXPLORATION', 'PROMOTION_IMPERIALISM_OPENER'),
	('POLICY_NAVIGATION_SCHOOL', 'PROMOTION_BETTER_LEADERSHIP');
