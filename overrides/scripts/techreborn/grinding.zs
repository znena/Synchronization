// TR: Sync Scripts | 22/10/22

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import mods.techreborn.grinder;
import scripts.utils.mode as pack_mode;
import scripts.utils.eu_cost_multiplier;

for i in 0 to 6 {
	grinder.removeInputRecipe(<improvedextraction:ore_cluster>.definition.makeStack(i));
}
grinder.removeInputRecipe(<techreborn:ore:8>);

var Recipes = {
	<contenttweaker:calcite> : <techreborn:dust:8>,
	<ore:cobblestoneBasalt> : <techreborn:dust:4>,
	<techreborn:ingot:19> : <contenttweaker:refined_iron_dust>,
	<ore:ingotLithium> : <nuclearcraft:dust:6>,
	<enderio:item_alloy_ingot:7> : <enderio:item_material:74>,
	<improvedextraction:ore_cluster> : <techreborn:smalldust:27> * 6,
	<improvedextraction:ore_cluster:1> : <techreborn:smalldust:24> * 6,
	<improvedextraction:ore_cluster:2> : <techreborn:smalldust:14> * 2,
	<improvedextraction:ore_cluster:3> : <techreborn:smalldust:53> * 2,
	<improvedextraction:ore_cluster:4> : <techreborn:smalldust:47> * 2,
	<improvedextraction:ore_cluster:5> : <techreborn:smalldust:29> * 2,
	<nuclearcraft:ore:3> : <techreborn:smalldust:67>,
	<nuclearcraft:ore:4> : <techreborn:smalldust:68>,
	<contenttweaker:cassiterite_ore> : <techreborn:smalldust:53>
} as IItemStack[IIngredient];

val EU_Costs = {
	<contenttweaker:calcite> : [600, 3],
	<ore:cobblestoneBasalt> : [600, 3],
	<techreborn:ingot:19> : [300, 2],
	<ore:ingotLithium> : [300, 2],
	<enderio:item_alloy_ingot:7> : [600, 8],
	<improvedextraction:ore_cluster> : [300, 4],
	<improvedextraction:ore_cluster:1> : [300, 4],
	<improvedextraction:ore_cluster:2> : [300, 8],
	<improvedextraction:ore_cluster:3> : [300, 8],
	<improvedextraction:ore_cluster:4> : [300, 8],
	<improvedextraction:ore_cluster:5> : [300, 8],
	<nuclearcraft:ore:3> : [600, 8],
	<nuclearcraft:ore:4> : [600, 8],
	<contenttweaker:cassiterite_ore> : [300, 8]
} as int[][IIngredient];

val Moded_Items = {
	"easy" : {
		<improvedextraction:ore_cluster:2> : <techreborn:smalldust:14> * 3,
		<improvedextraction:ore_cluster:3> : <techreborn:smalldust:53> * 3,
		<improvedextraction:ore_cluster:4> : <techreborn:smalldust:47> * 3,
		<improvedextraction:ore_cluster:5> : <techreborn:smalldust:29> * 3
	},
	"expert" : {
		<improvedextraction:ore_cluster:2> : <techreborn:smalldust:14>,
		<improvedextraction:ore_cluster:3> : <techreborn:smalldust:53>,
		<improvedextraction:ore_cluster:4> : <techreborn:smalldust:47>,
		<improvedextraction:ore_cluster:5> : <techreborn:smalldust:29>
	}
} as IItemStack[IIngredient][string];

if (Moded_Items has pack_mode) {
	for i, o in Moded_Items[pack_mode] {
		Recipes[i] = o;
	}
}

for i, o in Recipes {
	grinder.addRecipe(o, i, EU_Costs[i][0], EU_Costs[i][1] * eu_cost_multiplier);
}

