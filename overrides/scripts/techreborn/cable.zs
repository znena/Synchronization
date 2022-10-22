// TR: Sync Scripts | 22/9/30

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import mods.techreborn.wireMill;
import scripts.utils.eu_cost_multiplier;

val cable_def = <techreborn:cable>.definition as IItemDefinition;
val Recipes_cables = {
	1 : <ore:ingotCopper>,
	0 : <ore:ingotBronze>,
	2 : <ore:ingotEnergeticAlloy>,
	3 : <ore:ingotLeadPlatinum>,
	4 : <ore:ingotTitaniumIridium>
} as IIngredient[int];
val Time = {
	1 : 150,
	0 : 900,
	2 : 7200,
	3 : 14400,
	4 : 43200
} as int[int];

wireMill.removeAll();

for i, j in Recipes_cables {
	recipes.remove(cable_def.makeStack(i));
	recipes.addShaped("main/cable_" ~ i, cable_def.makeStack(i) * 3,
			[[j, j, j]]);
	wireMill.addRecipe(cable_def.makeStack(i) * 2,
			j, Time[i], 8 * eu_cost_multiplier);
}
