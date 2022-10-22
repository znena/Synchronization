// TR: Sync Scripts | 22/10/2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val water_cell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "water", Amount: 1000}}) as IItemStack;
val lava_cell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "lava", Amount: 1000}}) as IItemStack;

val Recipes = {
	<nuclearcraft:cobblestone_generator> :
		[[<ore:ingotCrudeSteel>, <ore:ingotCrudeSteel>, <ore:ingotCrudeSteel>],
		 [water_cell, null, lava_cell],
		 [<ore:ingotCrudeSteel>, <techreborn:machine_casing>, <ore:ingotCrudeSteel>]],
	<nuclearcraft:manufactory_idle> :
		[[<ore:ingotInvar>, <ore:dustLapis>, <ore:ingotInvar>],
		 [<ore:circuitT4>, <techreborn:machine_casing:1>, <ore:circuitT4>],
		 [<ore:ingotInvar>, <nuclearcraft:part:4>, <ore:ingotInvar>]]
} as IIngredient[][][IItemStack];

for o, r in Recipes {
	recipes.remove(o);
	recipes.addShaped("machine/nuclearcraft." ~ o.name, o, r);
}
