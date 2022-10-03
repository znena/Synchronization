// TR: Sync Scripts #36 | 22/10/2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.enderio.SagMill;
import mods.techreborn.centrifuge;
import scripts.utils.eu_cost_multiplier;

// Shaped

val Recipes = {
	<enderio:block_tank:0> :
		[[<enderio:item_alloy_ingot:9>, <techreborn:dynamiccell>, <enderio:item_alloy_ingot:9>],
		 [<techreborn:dynamiccell>, <enderio:block_fused_quartz>, <techreborn:dynamiccell>],
		 [<enderio:item_alloy_ingot:9>, <techreborn:dynamiccell>, <enderio:item_alloy_ingot:9>]],
	<enderio:block_tank:1> :
		[[<enderio:item_alloy_ingot:9>, <techreborn:dynamiccell>, <enderio:item_alloy_ingot:9>],
		 [<techreborn:dynamiccell>, <enderio:block_tank>, <techreborn:dynamiccell>],
		 [<enderio:item_alloy_ingot:9>, <techreborn:dynamiccell>, <enderio:item_alloy_ingot:9>]],
	<enderio:item_material:38> :
		[[<ore:dustLazurite>, <fluxnetworks:flux>, <ore:dustLazurite>],
		 [<fluxnetworks:flux>, <enderio:item_material:5>, <fluxnetworks:flux>],
		 [<ore:dustLazurite>, <fluxnetworks:flux>, <ore:dustLazurite>]],
	<enderio:item_material:9> : 
		[[<ore:plateLead>, <ore:stickIron>, <ore:plateLead>],
		 [<ore:stickIron>, null, <ore:stickIron>],
		 [<ore:plateLead>, <ore:stickIron>, <ore:plateLead>]],
	<enderio:item_material:10> : 
		[[null, <ore:ingotCrudeSteel>, null],
		 [<ore:ingotCrudeSteel>, <enderio:item_material:9>, <ore:ingotCrudeSteel>],
		 [null, <ore:ingotCrudeSteel>, null]]
} as IIngredient[][][IItemStack];

for o, i in Recipes {
	recipes.remove(o);
	recipes.addShaped("main/misc." ~ o.name, o, i);
}


// Conductive Alloy

recipes.addShapeless("main/conductive_iron_dust", <contenttweaker:conductive_iron_dust>,
		[<contenttweaker:conductive_iron_small_dust>, <contenttweaker:conductive_iron_small_dust>,
		<contenttweaker:conductive_iron_small_dust>, <contenttweaker:conductive_iron_small_dust>,
		<contenttweaker:conductive_iron_small_dust>, <contenttweaker:conductive_iron_small_dust>,
		<contenttweaker:conductive_iron_small_dust>, <contenttweaker:conductive_iron_small_dust>,
		<contenttweaker:conductive_iron_small_dust>]);
recipes.addShapeless("main/conductive_iron_small_dust",
		<contenttweaker:conductive_iron_small_dust> * 9, [<contenttweaker:conductive_iron_dust>]);
		
furnace.addRecipe(<enderio:item_alloy_nugget:4>, <contenttweaker:conductive_iron_small_dust>);
furnace.addRecipe(<enderio:item_alloy_ingot:4>, <contenttweaker:conductive_iron_dust>);

recipes.addShapeless("main/conductive_iron_dust_alloy", <contenttweaker:conductive_iron_small_dust>,
		[<ore:dustRefinedIron>, <ore:dustRefinedIron>, <fluxnetworks:flux>, <fluxnetworks:flux>]);


// Other

recipes.remove(<enderio:item_alloy_ball:*>);

recipes.removeByRecipeName("enderio:infinity_dust_block_2_uncrafting");
recipes.removeByRecipeName("enderio:infinity_dust_block_3_uncrafting");
SagMill.removeRecipe(<enderio:block_infinity:1>);
SagMill.removeRecipe(<enderio:block_infinity:2>);

centrifuge.addRecipe(<enderio:item_material:23> * 2, null, null, null, <techreborn:dust:13> * 8, null, 3000, 4);
