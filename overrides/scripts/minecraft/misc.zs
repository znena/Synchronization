// TR: Sync Scripts #31 | 22/10/2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import scripts.gamestages.ageId;

val ShapedRecipes = {
	<minecraft:chest> : [
		[[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
		 [<ore:plankWood>, <minecraft:flint>, <ore:plankWood>],
		 [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]
	],
	<minecraft:torch> * 4 : [],
	<minecraft:torch> * 2 : [
		[[<minecraft:coal:*>], [<ore:stickWood>]]
	],
	<minecraft:torch> * 3 : [
		null,
		[[<minecraft:coal:*>], [<minecraft:string>.reuse()], [<ore:stickWood>]]
	],
	<sonarcore:reinforcedstoneblock> : [
		[[<ore:stone>, <ore:ingotIron>]]
	],
	<minecraft:piston> : [
		[[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
		 [<ore:cobblestone>, <ore:plateRefinedIron>, <ore:cobblestone>],
		 [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]]
	]
} as IIngredient[][][][IItemStack];

for o, rs in ShapedRecipes {
	recipes.remove(o);
	var t = 0 as int;
	for r in rs {
		t += 1;
		if (!isNull(r)) {
			recipes.addShaped("main/misc." ~ o.name ~ "." ~ (t as string), o, r);
		}
	}
}


// Bed

val wool_def = <item:minecraft:wool>.definition as IItemDefinition;
val bed_def = <item:minecraft:bed>.definition as IItemDefinition;

for d in 0 to 15 {
	recipes.remove(bed_def.makeStack(d));
	recipes.addShaped("main/misc.bed." ~ d, bed_def.makeStack(d),
			[[wool_def.makeStack(d), wool_def.makeStack(d), wool_def.makeStack(d)],
			 [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
			 [<sonarcore:reinforcedstonebrickfence>, null, <sonarcore:reinforcedstonebrickfence>]]
	);
}


// Misc

recipes.remove(<minecraft:ender_eye>);

furnace.setFuel(<minecraft:coal:*>, 1200);
furnace.setFuel(<minecraft:coal_block>, 12000);
furnace.setFuel(<minecraft:lava_bucket>.transformReplace(<minecraft:bucket>), 12000);
