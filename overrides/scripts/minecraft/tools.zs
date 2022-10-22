// TR: Sync Scripts | 22/10/22

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val hammer = <contenttweaker:refined_iron_hammer>.anyDamage().transformDamage(3) | 
		<contenttweaker:bronze_hammer>.anyDamage().transformDamage(2) | 
		<contenttweaker:lead_hammer>.anyDamage().transformDamage(2) as IIngredient;

// Recipes

val Recipes = {
	<minecraft:wooden_sword> : [],
	<minecraft:wooden_hoe> : [],
	<minecraft:stone_hoe> : [],
	<minecraft:boat> : [
		[[<minecraft:planks>, <techreborn:plates:35>, <minecraft:planks>],
		 [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]]
	],
	<minecraft:spruce_boat> : [
		[[<minecraft:planks:1>, <techreborn:plates:35>, <minecraft:planks:1>],
		 [<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]]
	],
	<minecraft:birch_boat> : [
		[[<minecraft:planks:2>, <techreborn:plates:35>, <minecraft:planks:2>],
		 [<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]]
	],
	<minecraft:jungle_boat> : [
		[[<minecraft:planks:3>, <techreborn:plates:35>, <minecraft:planks:3>],
		 [<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]]
	],
	<minecraft:acacia_boat> : [
		[[<minecraft:planks:4>, <techreborn:plates:35>, <minecraft:planks:4>],
		 [<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]]
	],
	<minecraft:dark_oak_boat> : [
		[[<minecraft:planks:5>, <techreborn:plates:35>, <minecraft:planks:5>],
		 [<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]]
	],
	<minecraft:shield> : [
		[[<ore:plankWood>, <techreborn:plates:35>, <ore:plankWood>],
		 [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
		 [null, <ore:plankWood>, null]]
	],
	<minecraft:iron_sword> : [
		[[<ore:ingotIron>],
		 [<ore:ingotIron>],
		 [<ore:stickWood>]],
		[[hammer],
		 [<ore:plateIron>],
		 [<ore:stickWood>]]
	],
	<minecraft:iron_pickaxe> : [
		[[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
		 [null, <ore:stickWood>, null],
		 [null, <ore:stickWood>, null]],
		[[<ore:plateIron>, <ore:ingotIron>, hammer],
		 [null, <ore:stickWood>, null],
		 [null, <ore:stickWood>, null]]
	],
	<minecraft:iron_axe> : [
		[[<ore:ingotIron>, <ore:ingotIron>],
		 [<ore:ingotIron>, <ore:stickWood>],
		 [null, <ore:stickWood>]],
		[[<ore:plateIron>, <ore:ingotIron>],
		 [hammer, <ore:stickWood>],
		 [null, <ore:stickWood>]]
	]
} as IIngredient[][][][IItemStack];

for i, rs in Recipes {
	recipes.remove(i);
	var t as int = 0;
	for r in rs {
		t += 1;
		recipes.addShapedMirrored("vanilla/" ~ i.name ~ "." ~ (t as string), i, r);
	}
}


// Max Damage

val Damage = {
	<minecraft:wooden_pickaxe> : 10,
	<minecraft:stone_pickaxe> : 48
} as int[IItemStack];

for i, s in Damage {
	i.maxDamage = s;
}
