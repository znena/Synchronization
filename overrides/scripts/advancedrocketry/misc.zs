// TR: Sync Scripts #41 | 22/10/2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val ShapedRecipes = {
	<advancedrocketry:platepress> : [
		[[null, <ore:craftingPiston>, null],
		 [<nuclearcraft:part>, <nuclearcraft:part>, <nuclearcraft:part>]]
	],
	<libvulpes:productrod:1> * 2 : [
		[[null, null, <ore:plateIron>],
		 [null, <ore:plateIron>, null],
		 [<ore:plateIron>, null, null]]
	]
} as IIngredient[][][][IItemStack];

for o, rs in ShapedRecipes {
	recipes.remove(o.anyAmount());
	var t = 0 as int;
	for r in rs {
		t += 1;
		recipes.addShaped("main/advancedrocketry." ~ o.name ~ "." ~ (t as string), o, r);
	}
}

val ShapelessRecipes = {
	<advancedrocketry:satelliteprimaryfunction> : [<techreborn:plates:38>, <techreborn:part:24>,
			<techreborn:plates:33>, <techreborn:plates:33>]
} as IIngredient[][IItemStack];

for o, r in ShapelessRecipes {
	recipes.remove(o);
	recipes.addShapeless("main/advancedrocketry." ~ o.name, o, r);
}

