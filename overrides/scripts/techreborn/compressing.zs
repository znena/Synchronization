// TR: Sync Scripts | 22/10/22
#priority 1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.techreborn.compressor;
import scripts.utils.eu_cost_multiplier;

val Recipes = {
	<ore:ingotTungstenstel> : <techreborn:plates:33>,
	<minecraft:redstone> : <fluxnetworks:flux>,
	<ore:plateGold> : <contenttweaker:gold_foil>,
	<minecraft:wheat> * 3 : <nuclearcraft:graham_cracker>,
	<minecraft:obsidian> * 2 : <techreborn:plates:9>,
	<contenttweaker:amethyst_flawed> * 3 : <contenttweaker:amethyst_gem>,
	<ore:plateIron> : <libvulpes:productrod:1>
} as IItemStack[IIngredient];

val EU_Costs = {
	<ore:ingotTungstenstel> : [1200, 12]
} as int[][IIngredient];

for i, o in Recipes {
	if (EU_Costs has i) {
		compressor.addRecipe(o, i, EU_Costs[i][0], EU_Costs[i][1] * eu_cost_multiplier);
	} else {
		compressor.addRecipe(o, i, 300, 8 * eu_cost_multiplier);
	}
}

