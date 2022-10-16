// TR: Sync Scripts #9 | 22/10/16

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.techreborn.alloySmelter;
import scripts.utils.eu_cost_multiplier;

// Furnace

val Recipes = [
	[<improvedextraction:ore_cluster:2>, <nuclearcraft:ingot:0>, <techreborn:nuggets:4>],
	[<improvedextraction:ore_cluster:3>, <nuclearcraft:ingot:1>, <techreborn:nuggets:13>],
	[<improvedextraction:ore_cluster:5>, <nuclearcraft:ingot:2>, <techreborn:nuggets:8>],
	[<improvedextraction:ore_cluster:4>, <nuclearcraft:ingot:13>, <techreborn:nuggets:11>],
	[<improvedextraction:ore_cluster:6>, <nuclearcraft:ingot:12>, null],
	[<improvedextraction:ore_cluster:13>, <libvulpes:productingot:10>, null],
	[<improvedextraction:ore_cluster:14>, <libvulpes:productingot:7>, null],
	[<nuclearcraft:ore:3>, <techreborn:ingot:23>, null],
	[<nuclearcraft:ore:4>, <techreborn:ingot:24>, null],
	[<nuclearcraft:ore:5>, <nuclearcraft:ingot:5>, <contenttweaker:boron_nugget>],
	[<nuclearcraft:ore:6>, <nuclearcraft:ingot:6>, <contenttweaker:lithium_nugget>],
	[<nuclearcraft:ore:7>, <nuclearcraft:ingot:7>, <contenttweaker:magnesium_nugget>],
	[<techreborn:ore:9>, <techreborn:ingot:10>, <techreborn:nuggets:10>]
] as IItemStack[][];

val Output_Num = {
	"easy" : [6, 6, 6, 6, 0, 0, 0, 2, 2, 2, 2, 2, 4],
	"normal" : [3, 3, 3, 3, 0, 0, 0, 1, 1, 1, 1, 1, 3],
	"expert" : [2, 2, 2, 2, 0, 0, 0, 1, 1, 1, 1, 1, 2]
} as int[][string];

for n, i in Recipes {
	if (i[1] instanceof IItemStack) {
		furnace.remove(i[1], i[0]);
	}
	if (i[2] instanceof IItemStack) {
		var pack_mode = scripts.utils.mode;
		if (!(Output_Num has pack_mode)) {
			pack_mode = "normal";
		}
		furnace.addRecipe(i[2] * Output_Num[pack_mode][n], i[0], 5);
	}
}


// Alloy Smelter

val AS_Recipes_in = [
	[<techreborn:dust:39>, <techreborn:dust:39>],
	[<techreborn:dust:50> * 2, <techreborn:dust:50> * 2],
	[<contenttweaker:iron_ore_dust> * 4, <techreborn:smalldust:13>]
] as IIngredient[][];

val AS_Recipes_out = [
	{
		"easy" : <minecraft:iron_ingot> * 2,
		"default" : <techreborn:nuggets:23> * 12,
		"expert" : <techreborn:nuggets:19> * 2
	},
	{
		"easy" : <techreborn:nuggets:18> * 2,
		"default" : <techreborn:nuggets:18>
	},
	{
		"default" : <techreborn:ingot:19>
	}
] as IItemStack[string][];

val EUCost = [
	[300, 2],
	[600, 2],
	[300, 2]
] as int[][];

for n, is in AS_Recipes_in {
	var pack_mode = scripts.utils.mode;
	if (!(AS_Recipes_out[n] has pack_mode)) {
		pack_mode = "default";
	}
	alloySmelter.addRecipe(AS_Recipes_out[n][pack_mode], is[0], is[1], EUCost[n][0], EUCost[n][1] * eu_cost_multiplier);
}

