// TR: Sync Scripts #8 | 22/10/2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.recipestages.Recipes as StagedRecipes;
import scripts.gamestages.ageId;

val tcon_stage = ageId(0, 3) as string;

// Remove and Shaped

val Recipes = {
	<tconstruct:smeltery_controller> : [
		[[<tconstruct:seared>, <tconstruct:seared_tank>, <tconstruct:seared>],
		 [<techreborn:alloy_smelter>, null, <techreborn:alloy_smelter>],
		 [<tconstruct:seared>, <tconstruct:seared_furnace_controller>, <tconstruct:seared>]]
	],
	<tconstruct:tooltables> : [
		[[null, <tconstruct:pattern>, null],
		 [<tconstruct:pattern>, <minecraft:crafting_table>, <tconstruct:pattern>],
		 [null, <tconstruct:pattern>, null]]
	],
	<conarm:armorstation> : [
		[[null, <ore:pattern>, null],
		 [<ore:pattern>, <tconstruct:tooltables>, null],
		 [null, <ore:pattern>, null]]
	]
} as IIngredient[][][][IItemStack];


for o, is in Recipes {
	recipes.remove(o);
	for i in is {
		StagedRecipes.addShaped(tcon_stage, o, i);
	}
}


// Other

<ore:pattern>.add(<techreborn:plates:22>);
furnace.remove(<tconstruct:materials>);
mods.techreborn.alloySmelter.addRecipe(<tconstruct:materials> * 2, <tconstruct:soil> * 6, <ore:dustSoularium>, 1200, 32);

recipes.remove(<ore:pattern>);
recipes.addShapeless("tcon/pattern", <tconstruct:pattern>, [<ore:pattern>]);

recipes.remove(<tconstruct:slimesling:*>, <tconstruct:slime_boots:*>);


