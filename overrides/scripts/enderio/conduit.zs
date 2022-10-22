// TR: Sync Scripts | 22/9/30

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.techreborn.alloySmelter;
import mods.recipestages.Recipes as StagedRecipes;
import scripts.gamestages.ageId;
import scripts.utils.eu_cost_multiplier;

// Conduit Crafting

val Staged_Recipes = {
	<enderio:item_item_conduit> * 8 : {
		ageId(0) : [
			[[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
			 [<ore:hopper>, <techreborn:part:40>, <ore:hopper>],
			 [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]
		],
		ageId(2) : [
			[[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
			 [<enderio:item_alloy_nugget:5>, <enderio:item_alloy_nugget:5>, <enderio:item_alloy_nugget:5>],
			 [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]
		]
	},
	<enderio:item_liquid_conduit> * 8 : {
		ageId(0) : [
			[[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
			 [<minecraft:bucket>, <techreborn:part:40>, <minecraft:bucket>],
			 [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]
		],
		ageId(2) : [
			[[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
			 [<ore:fusedGlass>, <ore:fusedGlass>, <ore:fusedGlass>],
			 [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]
		]
	}
} as IIngredient[][][][string][IItemStack];

for o, srs in Staged_Recipes {
	recipes.remove(o);
	for s, rs in srs {
		for r in rs {
			StagedRecipes.addShaped(s, o, r);
		}
	}
}


// Other

furnace.remove(<enderio:item_material:4>);
alloySmelter.addRecipe(<enderio:item_material:4>, <enderio:item_material:22> * 2, <tconstruct:soil> * 2, 300, 4 * eu_cost_multiplier);

recipes.remove(<enderio:item_extract_speed_upgrade>);
recipes.addShaped(<enderio:item_extract_speed_upgrade>,
		[[<ore:ingotContructionAlloy>, <ore:ingotContructionAlloy>, <ore:ingotContructionAlloy>],
		 [<ore:nuggetElectricalSteel>, <minecraft:piston>, <ore:nuggetElectricalSteel>],
		 [<ore:nuggetElectricalSteel>, <minecraft:redstone_torch>, <ore:nuggetElectricalSteel>]]
);
