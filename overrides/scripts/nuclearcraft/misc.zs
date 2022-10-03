// TR: Sync Scripts #46 | 22/10/2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.techreborn.rollingMachine;

val Recipes = {
	<nuclearcraft:part:4> :
		[[<techreborn:ingot:1>, <techreborn:ingot:1>, <techreborn:ingot:1>],
		 [<techreborn:ingot>, <techreborn:ingot>, <techreborn:ingot>],
		 [<techreborn:ingot:1>, <techreborn:ingot:1>, <techreborn:ingot:1>]],
	<nuclearcraft:part> :
		[[<ore:ingotTungstensteel>, <ore:circuitT5>, <ore:ingotTungstensteel>],
		 [<techreborn:part:17>, <techreborn:plates:38>, <techreborn:part:17>],
		 [<ore:ingotTungstensteel>, <ore:ingotTungstensteel>, <ore:ingotTungstensteel>]]
} as IIngredient[][][IItemStack];

for o, r in Recipes {
	recipes.remove(o);
	rollingMachine.addShaped(o, r);
}
