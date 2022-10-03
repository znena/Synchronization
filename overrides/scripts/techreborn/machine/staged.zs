// TR: Sync Scripts #17 | 22/10/2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.recipestages.Recipes as StagedRecipes;
import scripts.gamestages.ageId;

val Recipes = {
	ageId() : {
		<techreborn:compressor> : [
			[[<contenttweaker:basalt>, <techreborn:part:41>, <contenttweaker:basalt>],
			 [<techreborn:plate_bending_machine>, <techreborn:machine_casing>, <techreborn:plate_bending_machine>],
			 [<contenttweaker:basalt>, <techreborn:part:41>, <contenttweaker:basalt>]]
		],
		<techreborn:solar_panel> : [],
		<techreborn:solar_panel> * 2 : [
			[[<ore:fusedQuartz>, <ore:fusedQuartz>, <ore:fusedQuartz>],
			 [<ore:fusedQuartz>, <enderio:item_material:38>, <ore:fusedQuartz>],
			 [<techreborn:part:29>, <techreborn:solid_fuel_generator>, <techreborn:part:29>]]
		],
		<techreborn:assembling_machine> : [
			[[<ore:ingotCrudeSteel>, <ore:ingotCrudeSteel>, <ore:ingotCrudeSteel>],
			 [<ore:ingotCrudeSteel>, <techreborn:machine_casing>, <ore:ingotCrudeSteel>],
			 [<ore:circuitT3>, <ore:craftingPiston>, <ore:circuitT3>]]
		]
	},
	ageId(2) : {
		<techreborn:lsu_storage> * 3 : [
			[[<ore:plateLazurite> | <ore:plateSapphire>, <ore:plateInvar> | <ore:plateSteel>, <ore:plateLazurite> | <ore:plateSapphire>],
			 [<ore:plateLazurite> | <ore:plateSapphire>, <techreborn:lapotroncrystal>, <ore:plateLazurite> | <ore:plateSapphire>],
			 [<ore:plateLazurite> | <ore:plateSapphire>, <ore:plateInvar> | <ore:plateSteel>, <ore:plateLazurite> | <ore:plateSapphire>]]
		]
	}
} as IIngredient[][][][IItemStack][string];

for s, a in Recipes {
	for o, rs in a {
		recipes.remove(o);
		for r in rs {
			StagedRecipes.addShaped(s, o, r);
		}
	}
}

