// TR: Sync Scripts #29 | 22/10/2
#priority 1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.techreborn.assemblingMachine;
import scripts.utils.eu_cost_multiplier;

assemblingMachine.removeAll();

val Recipes = {
	<minecraft:ender_eye> : [
		[<waystones:warp_stone>, <minecraft:blaze_powder> * 8]
	],
	<techreborn:part:40> : [
		[<ore:ingotConductiveIron>, <ore:plateCopper>],
		[<techreborn:plates:11> * 2, <techreborn:cable> * 3]
	],
	<techreborn:part:29> : [
		[<techreborn:part:40>, <techreborn:plates:22> * 2],
		[<techreborn:part:40>, <techreborn:plates:36>]
	],
	<techreborn:part:41> : [
		[<techreborn:part:29> * 2, <techreborn:part:11>],
		[<ore:ingotEnergeticAlloy>, <techreborn:part:12>]
	],
	<techreborn:part:42> : [
		[<ore:plateInvar>, <techreborn:cable:6> * 3]
	],
	<techreborn:part:30> : [
		[<techreborn:part:41> * 4, <techreborn:cable:7>],
		[<techreborn:part:41> * 2, <techreborn:plates:20> * 6]
	],
	<techreborn:part:2> : [
		[<techreborn:part:30>, <techreborn:gem:2> * 16],
		[<techreborn:part:30>, <techreborn:dust:36> * 16]
	],
	<techreborn:part:43> : [
		[<techreborn:part:30> * 2, <techreborn:iridiumneutronreflector> * 2]
	],
	<techreborn:part:1> : [
		[<techreborn:part:43>, <techreborn:part:2> * 2]
	],
	<techreborn:part> : [
		[<techreborn:part:43>, <techreborn:lapotroncrystal>]
	],
	<techreborn:part:3> : [
		[<techreborn:part:1>, <techreborn:part:2> * 8]
	]
} as IIngredient[][][IItemStack];

val EU_Costs = {
	<minecraft:ender_eye> : [
		[6000, 12]
	],
	<techreborn:part:40> : [
		[2400, 6],
		[2400, 6]
	],
	<techreborn:part:29> : [
		[2400, 8],
		[2400, 12]
	],
	<techreborn:part:41> : [
		[2400, 12],
		[2400, 16]
	],
	<techreborn:part:42> : [
		[1200, 6]
	],
	<techreborn:part:30> : [
		[3600, 16],
		[2400, 24]
	],
	<techreborn:part:2> : [
		[2400, 16],
		[1800, 16]
	],
	<techreborn:part:43> : [
		[3600, 32]
	],
	<techreborn:part:1> : [
		[2400, 24]
	],
	<techreborn:part> : [
		[2400, 32]
	],
	<techreborn:part:3> : [
		[4800, 64]
	]
} as int[][][IIngredient];

for o, is in Recipes {
	for n, i in is {
		val e = EU_Costs[o][n] as int[];
		assemblingMachine.addRecipe(o, i[0], i[1], e[0], e[1] * eu_cost_multiplier);
	}
}
