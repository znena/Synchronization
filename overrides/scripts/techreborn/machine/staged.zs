// TR: Sync Scripts | 22/10/30

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
		<techreborn:solar_panel> * 3 : [
			[[<ore:fusedQuartz>, <ore:fusedGlass>, <ore:fusedQuartz>],
			 [<ore:plateCrudeSteel>, <enderio:item_material:3>, <ore:plateCrudeSteel>],
			 [<enderio:item_material:9>, <techreborn:solid_fuel_generator>, <techreborn:part:29>]]
		],
		<techreborn:assembling_machine> : [
			[[<ore:plateCrudeSteel>, <ore:plateCrudeSteel>, <ore:plateCrudeSteel>],
			 [<ore:plateCrudeSteel>, <techreborn:machine_casing>, <ore:plateCrudeSteel>],
			 [<ore:circuitT3>, <ore:craftingPiston>, <ore:circuitT3>]]
		],
		<chickenchunks:chunk_loader:1> : [
			[[null, <contenttweaker:amethyst_gem>, null],
			 [<ore:ingotCrudeSteel>, <techreborn:machine_casing>, <ore:ingotCrudeSteel>],
			 [<ore:plateObsidian>, <ore:plateObsidian>, <ore:plateObsidian>]]
		],
		<enderio:block_simple_stirling_generator> : [
			[[<ore:plateCrudeSteel>, <ore:plateBrass>, <ore:plateCrudeSteel>],
			 [<ore:plateCrudeSteel>, <tconstruct:seared_glass>, <ore:plateCrudeSteel>],
			 [<enderio:item_material:9>, <techreborn:solid_fuel_generator>, <techreborn:part:29>]]
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

