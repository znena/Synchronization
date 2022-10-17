// TR: Sync Scripts #25 | 22/10/17

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import scripts.utils.mode as pack_mode;

// From techreborn.plate_bending
val PlateBendingRecipes = {
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
	<ore:plateGold> : <contenttweaker:gold_foil> * 2,
	<ore:plateTin> : <techreborn:dynamiccell> * 2
} as IItemStack[IIngredient];

val mortar = <contenttweaker:boron_mortar>.anyDamage().transformDamage(2) as IIngredient;
val hammer = <contenttweaker:refined_iron_hammer>.anyDamage().transformDamage(3) | 
		<contenttweaker:bronze_hammer>.anyDamage().transformDamage(2) | 
		<contenttweaker:lead_hammer>.anyDamage().transformDamage(2) as IIngredient;

val DustRecipes = {
	<ore:ingotCopper> : <techreborn:dust:14>,
	<ore:ingotTin> : <techreborn:dust:53>,
	<ore:ingotLead> : <techreborn:dust:29>,
	<ore:ingotSilver> : <techreborn:dust:47>,
	<ore:ingotRefinedIron> : <contenttweaker:refined_iron_dust>,
	<ore:ingotBronze> : <techreborn:dust:7>,
	<ore:ingotElectrum> : <techreborn:dust:17>,
	<ore:ingotConductiveIron> : <contenttweaker:conductive_iron_dust>
} as IItemStack[IIngredient];

for i, o in PlateBendingRecipes {
	if (pack_mode=="expert") {
		recipes.addShapeless("mat/plate." ~ o.name, o, [hammer, i, i, i]);
	} else {
		recipes.addShapeless("mat/plate." ~ o.name, o, [hammer, i, i]);
	}
}

for i, o in DustRecipes {
	recipes.addShapeless("mat/dust." ~ o.name, o, [mortar, i]);
}

