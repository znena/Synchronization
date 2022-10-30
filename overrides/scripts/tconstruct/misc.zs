// TR: Sync Scripts | 22/10/30

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.recipestages.Recipes as StagedRecipes;
import scripts.gamestages.ageId;

val tcon_stage = ageId(0, 3) as string;

// Remove and Shaped

val Recipes = {
	<tconstruct:smeltery_controller> : [
		[[<tconstruct:seared:3>, <tconstruct:seared_tank>, <tconstruct:seared:3>],
		 [<techreborn:alloy_smelter>, null, <techreborn:alloy_smelter>],
		 [<tconstruct:seared:3>, <tconstruct:seared_furnace_controller>, <tconstruct:seared:3>]]
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
	],
	<tconstruct:seared_glass> : [
		[[null, <tconstruct:materials>, null],
		 [<tconstruct:materials>, <ore:fusedGlass>, <tconstruct:materials>],
		 [null, <tconstruct:materials>, null]]
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
mods.techreborn.alloySmelter.addRecipe(<tconstruct:materials> * 3, <tconstruct:soil> * 8, <ore:dustSoularium>, 2400, 32);

recipes.remove(<ore:pattern>);
recipes.addShapeless("tcon/pattern", <tconstruct:pattern>, [<ore:pattern>]);

recipes.remove(<tconstruct:slimesling:*>, <tconstruct:slime_boots:*>);

recipes.removeByRecipeName("tconstruct:smeltery/seared/bricks/paver_bricks_default");

