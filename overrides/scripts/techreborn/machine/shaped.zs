// TR: Sync Scripts | 22/10/15

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val Recipes = {
	<techreborn:iron_furnace> : [
		[[null, <techreborn:ingot:19>, null],
		 [<techreborn:ingot:19>, <minecraft:furnace>, <techreborn:ingot:19>],
		 [null, <techreborn:ingot:19>, null]]
	],
	<techreborn:grinder> : [
		[[<minecraft:flint>, <minecraft:diamond>, <minecraft:flint>],
		 [<enderio:item_material:9>, <techreborn:machine_frame>, <enderio:item_material:9>],
		 [null, <ore:circuitT1>, null]]
	],
	<techreborn:extractor> : [
		[[<techreborn:treetap>, <techreborn:machine_frame>, <techreborn:treetap>],
		 [<techreborn:treetap>, <ore:circuitT1>, <techreborn:treetap>]]
	],
	<techreborn:plate_bending_machine> : [
		[[<ore:craftingPiston>, <ore:circuitT2>, <ore:craftingPiston>],
		 [<enderio:item_material:9>, <techreborn:machine_frame>, <enderio:item_material:9>],
		 [<ore:craftingPiston>, <ore:circuitT2>, <ore:craftingPiston>]]
	],
	<techreborn:machine_casing> : [
		[[<techreborn:plates:35>, <techreborn:plates:35>, <techreborn:plates:35>],
		 [<ore:circuitT2>, <techreborn:machine_frame>, <ore:circuitT2>],
		 [<techreborn:plates:35>, <techreborn:plates:35>, <techreborn:plates:35>]]
	],
	<techreborn:low_voltage_su> : [
		[[<ore:plankWood>, <techreborn:cable:5>, <ore:plankWood>],
		 [<techreborn:rebattery>, <techreborn:rebattery>, <techreborn:rebattery>],
		 [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]],
		[[<ore:plankWood>, <ore:ingotSilver>, <ore:plankWood>],
		 [<techreborn:rebattery>, <techreborn:rebattery>, <techreborn:rebattery>],
		 [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]
	]
} as IIngredient[][][][IItemStack];


for o, rs in Recipes {
	recipes.remove(o);
	var t as int = 0;
	for r in rs {
		t += 1;
		recipes.addShaped("machine/" ~ o.name ~ "." ~ t, o, r);
	}
}


// Only Removes

recipes.removeByRecipeName("techreborn:semi_fluid_generator");
