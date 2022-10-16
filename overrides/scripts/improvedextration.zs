// TR: Sync Scripts #19 | 22/10/16

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val ShapedRecipes = {
	<minecraft:netherrack> : [
		[[<improvedextraction:rock:4>, <improvedextraction:rock:4>],
		 [<improvedextraction:rock:4>, <improvedextraction:rock:4>]]
	],
	<minecraft:end_stone> : [
		[[<improvedextraction:rock:5>, <improvedextraction:rock:5>],
		 [<improvedextraction:rock:5>, <improvedextraction:rock:5>]]
	],
	<improvedextraction:cutting_table> : [
		[[<ore:plateRefinedIron>, <ore:fusedQuartz>, <ore:plateRefinedIron>],
		 [<ore:ingotBronze>, <enderio:item_material:9>, <ore:ingotBronze>],
		 [<ore:ingotBronze>, <ore:plateRefinedIron>, <ore:ingotBronze>]]
	]
} as IIngredient[][][][IItemStack];

for o, rs in ShapedRecipes {
	recipes.remove(o);
	var t = 0 as int;
	for r in rs {
		t += 1;
		if (!isNull(r)) {
			recipes.addShaped("main/" ~ o.name ~ "." ~ (t as string), o, r);
		}
	}
}

