// TR: Sync Scripts | 22/10/16
#priority 1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.techreborn.compressor;
import scripts.utils.eu_cost_multiplier;

val Recipes = {
	<ore:ingotTungstenstel> : <techreborn:plates:33>,
	<minecraft:redstone> : <fluxnetworks:flux>,
	<ore:plateGold> : <contenttweaker:gold_foil>,
	<minecraft:wheat> * 3 : <nuclearcraft:graham_cracker>
} as IItemStack[IIngredient];

val EU_Costs = {
	<ore:ingotTungstenstel> : [1200, 8]
} as int[][IIngredient];

for i, o in Recipes {
	if (EU_Costs has i) {
		compressor.addRecipe(o, i, EU_Costs[i][0], EU_Costs[i][1] * eu_cost_multiplier);
	} else {
		compressor.addRecipe(o, i, 300, 4 * eu_cost_multiplier);
	}
}

