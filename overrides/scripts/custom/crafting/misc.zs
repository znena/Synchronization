// TR: Sync Scripts | 22/10/22

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import scripts.gamestages.ageId as ageId;


val Recipes = {
	<contenttweaker:rough_plastic_rod> : [
		[[<minecraft:shears>.anyDamage().transformDamage(3), <nuclearcraft:part:6>]]
	],
	<contenttweaker:refined_iron_hammer> : [
		[[<ore:ingotRefinedIron>, <ore:ingotRefinedIron>, null],
		 [<ore:ingotRefinedIron>, <ore:ingotRefinedIron>, <contenttweaker:rough_plastic_rod>],
		 [<ore:ingotRefinedIron>, <ore:ingotRefinedIron>, null]]
	],
	<contenttweaker:lead_hammer> : [
		[[<ore:ingotLead>, <ore:ingotLead>, null],
		 [<ore:ingotLead>, <ore:ingotLead>, <contenttweaker:rough_plastic_rod>],
		 [<ore:ingotLead>, <ore:ingotLead>, null]]
	],
	<contenttweaker:bronze_hammer> : [
		[[<ore:ingotBronze>, <ore:ingotBronze>, null],
		 [<ore:ingotBronze>, <ore:ingotBronze>, <contenttweaker:rough_plastic_rod>],
		 [<ore:ingotBronze>, <ore:ingotBronze>, null]]
	],
	<contenttweaker:boron_mortar> : [
		[[null, <ore:ingotBoron>, null],
		 [<ore:stoneBasalt>, <ore:ingotBoron>, <ore:stoneBasalt>],
		 [<ore:stoneBasalt>, <ore:stoneBasalt>, <ore:stoneBasalt>]]
	]
} as IIngredient[][][][IItemStack];

for o, rs in Recipes {
	var t = 0 as int;
	for r in rs {
		t += 1;
		recipes.addShapedMirrored("main/tool." ~ o.name ~ "." ~ (t as string), o, r);
	}
}


val lava_cell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "lava", Amount: 1000}}) as IIngredient;

recipes.addShapeless("main/flux_fuel", <contenttweaker:flux_fuel>, 
		[lava_cell.giveBack(), <ore:coal>, <ore:dustSmallRedstone>]);
furnace.setFuel(<contenttweaker:flux_fuel>, 18000);

