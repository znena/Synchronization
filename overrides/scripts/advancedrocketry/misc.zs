// TR: Sync Scripts | 22/10/22

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val hammer = <contenttweaker:refined_iron_hammer>.anyDamage().transformDamage(3) | 
		<contenttweaker:bronze_hammer>.anyDamage().transformDamage(2) | 
		<contenttweaker:lead_hammer>.anyDamage().transformDamage(2) as IIngredient;

val ShapedRecipes = {
	<advancedrocketry:platepress> : [
		[[null, <ore:craftingPiston>, null],
		 [<nuclearcraft:part>, <nuclearcraft:part>, <nuclearcraft:part>]]
	],
	<libvulpes:productrod:1> * 2 : [
		[[null, null, <ore:plateIron>],
		 [null, <ore:plateIron>, null],
		 [<ore:plateIron>, null, hammer]]
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


recipes.removeByRecipeName("libvulpes:coalgenerator");
