// TR: Sync Scripts | 22/10/22
#priority 1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.techreborn.alloySmelter;
import scripts.utils.mode as pack_mode;
import scripts.utils.eu_cost_multiplier;


alloySmelter.removeAll();

val Recipes = {
	<techreborn:ingot:2> : [
		[<techreborn:ingot:4> * 4, <ore:ingotTin>],
		[<techreborn:dust:14> * 4, <ore:ingotTin>],
		[<techreborn:ingot:4> * 4, <ore:dustTin>],
		[<techreborn:dust:14> * 4, <ore:dustTin>]
	],
	<techreborn:nuggets:5> * 3 : [
		[<ore:ingotGold>, <ore:ingotSilver>],
		[<ore:dustGold>, <ore:ingotSilver>],
		[<ore:ingotGold>, <ore:dustSilver>],
		[<ore:dustGold>, <ore:dustSilver>]
	],
	<techreborn:ingot:1> : [
		[<techreborn:ingot:4> * 6, <ore:ingotZinc>],
		[<techreborn:dust:14> * 6, <ore:dustZinc>],
		[<techreborn:ingot:4> * 6, <ore:ingotZinc>],
		[<techreborn:dust:14> * 6, <ore:dustZinc>]
	],
	<techreborn:ingot:6> : [
		[<techreborn:ingot:19> * 6, <techreborn:ingot:9> * 2],
		[<techreborn:ingot:19> * 6, <techreborn:dust:34> * 2],
		[<contenttweaker:refined_iron_dust> * 6, <techreborn:ingot:9> * 2],
		[<contenttweaker:refined_iron_dust> * 6, <techreborn:dust:34> * 2]
	],
	<techreborn:ingot:20> : [
		[<techreborn:ingot:21> * 2, <techreborn:ingot:21> * 2]
	],
	<enderio:item_alloy_nugget:4> * 2 : [
		[<ore:ingotRefinedIron>, <fluxnetworks:flux>],
		[<ore:dustRefinedIron>, <fluxnetworks:flux>]
	],
	<contenttweaker:rough_energetic_alloy_ingot> : [
		[<ore:ingotGold>, <minecraft:redstone> * 2],
		[<ore:dustGold>, <minecraft:redstone> * 2]
	],
	<enderio:item_alloy_nugget:1> * 2 : [
		[<ore:ingotConductiveIron>, <contenttweaker:rough_energetic_alloy_ingot> * 2]
	],
	<enderio:item_alloy_nugget:7> * 4 : [
		[<ore:ingotAdvancedAlloy>, <minecraft:soul_sand> * 2]
	],
	<enderio:item_alloy_nugget:9> * 4 : [
		[<ore:ingotIron>, <ore:ingotLead>],
		[<ore:dustIron>, <ore:ingotLead>],
		[<ore:ingotIron>, <ore:dustLead>],
		[<ore:dustIron>, <ore:dustLead>]
	],
	<enderio:item_alloy_nugget:3> * 3 : [
		[<ore:ingotRefinedIron>, <minecraft:redstone> * 8],
		[<ore:dustRefinedIron>, <minecraft:redstone> * 8]
	],
	<enderio:item_alloy_endergy_ingot> : [
		[<techreborn:ingot:19> * 2, <techreborn:dust:13> * 8],
		[<contenttweaker:refined_iron_dust> * 2, <techreborn:dust:13> * 8]
	],
	<enderio:item_alloy_nugget> * 3 : [
		[<enderio:item_alloy_endergy_ingot> * 2, <ore:ingotRedstoneAlloy>]
	],
	<enderio:block_fused_quartz> : [
		[<minecraft:quartz> * 6, <minecraft:quartz> * 6]
	],
	<enderio:item_alloy_nugget:2> * 3 : [
		[<enderio:item_alloy_ingot:1>, <minecraft:ender_eye>],
		[<enderio:item_alloy_ingot:1>, <techreborn:dust:19> * 2]
	],
	<nuclearcraft:alloy:9> : [
		[<techreborn:ingot:8> * 8, <ore:ingotPlatinum>],
		[<techreborn:dust:29> * 8, <ore:ingotPlatinum>],
		[<techreborn:ingot:8> * 8, <ore:dustPlatinum>],
		[<techreborn:dust:29> * 8, <ore:dustPlatinum>]
	]
} as IIngredient[][][IItemStack];

var Time = {
	<techreborn:ingot:2> : [1200, 900, 900, 600],
	<techreborn:nuggets:5> * 3 : [1200, 1350, 1350, 900],
	<techreborn:ingot:1> : [1200, 1350, 1350, 900],
	<techreborn:ingot:6> : [2400, 1200, 1200, 1200],
	<techreborn:ingot:20> : [400],
	<enderio:item_alloy_nugget:4> * 2 : [1200, 1200],
	<contenttweaker:rough_energetic_alloy_ingot> : [1200, 200],
	<enderio:item_alloy_nugget:1> * 2 : [1200],
	<enderio:item_alloy_nugget:7> * 4 : [2400],
	<enderio:item_alloy_nugget:9> * 4 : [1200, 900, 900, 600],
	<enderio:item_alloy_nugget:3> * 3 : [900, 600],
	<enderio:item_alloy_endergy_ingot> : [3600, 2700],
	<enderio:item_alloy_nugget> * 3 : [3600, 2700],
	<enderio:block_fused_quartz> : [600],
	<enderio:item_alloy_nugget:2> * 3 : [2400, 1600],
	<nuclearcraft:alloy:9> : [36000, 27000, 27000, 18000]
} as int[][IItemStack];

val Voltage = {
	<techreborn:ingot:2> : [4, 4, 4, 4],
	<techreborn:nuggets:5> * 3 : [8, 8, 8, 8],
	<techreborn:ingot:1> : [8, 8, 8, 8],
	<techreborn:ingot:6> : [16, 16, 16, 16],
	<techreborn:ingot:20> : [12],
	<enderio:item_alloy_nugget:4> * 2 : [8, 8],
	<contenttweaker:rough_energetic_alloy_ingot> : [4, 4],
	<enderio:item_alloy_nugget:1> * 2 : [12],
	<enderio:item_alloy_nugget:7> * 4 : [8],
	<enderio:item_alloy_nugget:9> * 4 : [4, 4, 4, 4],
	<enderio:item_alloy_nugget:3> * 3 : [20, 20],
	<enderio:item_alloy_endergy_ingot> : [8, 8],
	<enderio:item_alloy_nugget> * 3 : [12, 12],
	<enderio:block_fused_quartz> : [1],
	<enderio:item_alloy_nugget:2> * 3 : [16, 16],
	<nuclearcraft:alloy:9> : [16, 16, 16, 16]
} as int[][IItemStack];

if (pack_mode=="expert") {
	for o, is in Time {
		for n, i in is {
			Time[o][n] = Time[o][n] * 2;
		}
	}
}

for o, is in Recipes {
	for n, i in is {
		alloySmelter.addRecipe(o, i[0], i[1], Time[o][n], Voltage[o][n] * eu_cost_multiplier);
	}
}


furnace.remove(<techreborn:ingot:20>);

