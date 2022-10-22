// TR: Sync Scripts | 22/1/27

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val Recipes = {
	<techreborn:electric_furnace> : [<techreborn:iron_furnace>, <minecraft:redstone>,
			<minecraft:redstone>, <ore:bioplastic>],
	<techreborn:alloy_smelter> : [<techreborn:machine_frame>,
			<techreborn:electric_furnace>, <techreborn:part:40>]
} as IIngredient[][IItemStack];

for o, r in Recipes {
	recipes.remove(o);
	recipes.addShapeless("machine/lv." ~ o.name, o, r);
}


// Only Removes

recipes.removeByRecipeName("techreborn:iron_alloy_furnace");
