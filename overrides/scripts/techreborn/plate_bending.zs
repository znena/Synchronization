// TR: Sync Scripts #49 | 22/9/30
#priority 1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.techreborn.plateBendingMachine;
import scripts.utils.eu_cost_multiplier;

plateBendingMachine.removeAll();

val Recipes = {
	<ore:ingotRefinedIron> : <techreborn:plates:35>,
	<ore:ingotGold> : <techreborn:plates:1>,
	<ore:ingotIron> : <techreborn:plates>,
	<ore:ingotCopper> : <techreborn:plates:21>,
	<ore:ingotTin> : <techreborn:plates:30>,
	<ore:ingotSilver> : <techreborn:plates:28>,
	<ore:ingotElectrum> : <techreborn:plates:22>,
	<ore:ingotLead> : <techreborn:plates:25>,
	<ore:ingotAluminum> : <techreborn:plates:17>,
	<ore:ingotNickel> : <techreborn:plates:26>,
	<ore:ingotChrome> : <techreborn:plates:20>,
	<ore:ingotPlatinum> : <techreborn:plates:27>,
	<ore:ingotZinc> : <techreborn:plates:34>,
	<ore:ingotBronze> : <techreborn:plates:19>,
	<ore:ingotSteel> : <techreborn:plates:29>,
	<ore:ingotBrass> : <techreborn:plates:18>,
	<ore:ingotInvar> : <techreborn:plates:23>,
	<ore:plateGold> : <contenttweaker:gold_foil> * 2
} as IItemStack[IIngredient];
// To custom.crafting.manual_crafting

val EU_Costs = {
	<ore:ingotSilver> : [300, 12],
	<ore:ingotElectrum> : [300, 16],
	<ore:ingotLead> : [300, 12],
	<ore:ingotAluminum> : [300, 16],
	<ore:ingotChrome> : [600, 16],
	<ore:ingotPlatinum> : [600, 32],
	<ore:ingotBronze> : [300, 16],
	<ore:ingotSteel> : [600, 16],
	<ore:ingotBrass> : [300, 16],
	<ore:ingotInvar> : [600, 16]
} as int[][IIngredient];

for i, o in Recipes {
	if (EU_Costs has i) {
		plateBendingMachine.addRecipe(o, i, EU_Costs[i][0], EU_Costs[i][1]);
	} else {
		plateBendingMachine.addRecipe(o, i, 300, 3 * eu_cost_multiplier);
	}
}

