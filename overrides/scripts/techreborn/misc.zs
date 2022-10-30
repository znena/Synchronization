// TR: Sync Scripts | 22/10/30

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import mods.techreborn.industrialElectrolyzer;
import mods.techreborn.centrifuge;

// Remove and Shaped

val sodium_cell as IIngredient = <techreborn:dynamiccell>.withTag(
		{Fluid: {FluidName: "fluidsodium", Amount: 1000}});
val redstone_alloy_plate as IIngredient = <tconstruct:large_plate>.withTag({Material: "redstone_alloy"});

val Recipes_shaped = {
	<techreborn:dynamiccell> * 4 :
		[[null, <ore:ingotTin>, null],
		 [<ore:ingotTin>, null, <ore:ingotTin>],
		 [null, <ore:ingotTin>, null]],
	<techreborn:part:10> :
		[[<ore:plateTin>, sodium_cell, <ore:plateTin>],
		 [sodium_cell, <techreborn:part:36>, sodium_cell],
		 [<ore:plateTin>, sodium_cell, <ore:plateTin>]],
	<techreborn:rebattery> :
		[[<techreborn:cable:1>, <techreborn:cable:1>, <techreborn:cable:1>],
		 [<ore:ingotTin>, <fluxnetworks:flux>, <ore:ingotTin>],
		 [<ore:ingotTin>, <fluxnetworks:flux>, <ore:ingotTin>]],
	<contenttweaker:rough_plastic_plate> :
		[[<techreborn:part:32>, <techreborn:part:32>, <techreborn:part:32>],
		 [<techreborn:part:32>, <minecraft:reeds>, <techreborn:part:32>],
		 [<techreborn:part:32>, <techreborn:part:32>, <techreborn:part:32>]],
	<techreborn:lithiumbattery> :
		[[null, <techreborn:cable:5>, null],
		 [<techreborn:plates:28>, <contenttweaker:lithium_nugget>, <techreborn:plates:28>],
		 [<techreborn:plates:28>, <contenttweaker:lithium_nugget>, <techreborn:plates:28>]],
	<techreborn:energycrystal> :
		[[<ore:dustManganese>, <ore:dustPlatinum>, <ore:dustManganese>],
		 [<ore:dustPlatinum>, <ore:itemVibrantCrystal>, <ore:dustPlatinum>],
		 [<ore:dustManganese>, <ore:dustPlatinum>, <ore:dustManganese>]],
	<techreborn:lapotroncrystal> :
		[[<techreborn:energycrystal>, <ore:circuitT4>, <techreborn:energycrystal>],
		 [<ore:itemVibrantCrystal>, <libvulpes:productgem>, <ore:itemVibrantCrystal>],
		 [<techreborn:energycrystal>, <ore:itemVibrantCrystal>, <techreborn:energycrystal>]],
	<minecraft:golden_apple> :
		[[<contenttweaker:gold_foil>, <contenttweaker:gold_foil>, <contenttweaker:gold_foil>],
		 [<contenttweaker:gold_foil>, <minecraft:apple>, <contenttweaker:gold_foil>],
		 [<contenttweaker:gold_foil>, <contenttweaker:gold_foil>, <contenttweaker:gold_foil>]],
	<chickenchunks:chunk_loader> :
		[[<chickenchunks:chunk_loader:1>, <tconstruct:materials:10>, <chickenchunks:chunk_loader:1>],
		 [<chickenchunks:chunk_loader:1>, <techreborn:machine_frame:1>, <chickenchunks:chunk_loader:1>],
		 [<chickenchunks:chunk_loader:1>, redstone_alloy_plate, <chickenchunks:chunk_loader:1>]],
	<techreborn:irondrill> : 
		[[null, <enderio:item_alloy_endergy_ingot>, null],
		 [<enderio:item_alloy_endergy_ingot>, <techreborn:part:40>, <enderio:item_alloy_endergy_ingot>],
		 [<enderio:item_alloy_endergy_ingot>, <libvulpes:battery:1>, <enderio:item_alloy_endergy_ingot>]],
	<techreborn:ironchainsaw> : 
		[[null, <enderio:item_alloy_endergy_ingot>, <enderio:item_alloy_endergy_ingot>],
		 [<enderio:item_alloy_endergy_ingot>, <techreborn:part:40>, <enderio:item_alloy_endergy_ingot>],
		 [<libvulpes:battery:1>, <enderio:item_alloy_endergy_ingot>, null]],
	<techreborn:steeljackhammer> : 
		[[<enderio:item_alloy_endergy_ingot>, <libvulpes:battery:1>, <enderio:item_alloy_endergy_ingot>],
		 [<enderio:item_alloy_endergy_ingot>, <techreborn:part:40>, <enderio:item_alloy_endergy_ingot>],
		 [null, <enderio:item_alloy_endergy_ingot>, null]],
	<techreborn:bronzesword> : 
		[[<ore:ingotCopper>], [<ore:ingotCopper>], [<ore:stickWood>]],
	<techreborn:bronzepickaxe> : 
		[[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
		 [null, <ore:stickWood>, null],
		 [null, <ore:stickWood>, null]],
	<techreborn:bronzespade> : 
		[[<ore:ingotCopper>], [<ore:stickWood>], [<ore:stickWood>]],
	<techreborn:bronzeaxe> : 
		[[<ore:ingotCopper>, <ore:ingotCopper>],
		 [<ore:ingotCopper>, <ore:stickWood>],
		 [null, <ore:stickWood>]],
	<techreborn:bronzehoe> : 
		[[<ore:ingotCopper>, <ore:ingotCopper>],
		 [null, <ore:stickWood>],
		 [null, <ore:stickWood>]],
	<techreborn:bronzehelmet> : 
		[[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
		 [<ore:ingotCopper>, null, <ore:ingotCopper>]],
	<techreborn:bronzechestplate> : 
		[[<ore:ingotCopper>, null, <ore:ingotCopper>],
		 [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
		 [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]],
	<techreborn:bronzeleggings> : 
		[[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
		 [<ore:ingotCopper>, null, <ore:ingotCopper>],
		 [<ore:ingotCopper>, null, <ore:ingotCopper>]],
	<techreborn:bronzeboots> : 
		[[<ore:ingotCopper>, null, <ore:ingotCopper>],
		 [<ore:ingotCopper>, null, <ore:ingotCopper>]]
} as IIngredient[][][IItemStack];

val Recipe_name_fix = {
	<chickenchunks:chunk_loader> : "chunk_loader"
} as string[IItemStack];

for o, r in Recipes_shaped {
	recipes.remove(o.anyAmount());
	if (Recipe_name_fix has o) {
		recipes.addShaped("main/misc." ~ Recipe_name_fix[o], o, r);
	} else {
		recipes.addShaped("main/misc." ~ o.name, o, r);
	}
}


// Shapeless

val Recipes_shapeless = {
	<techreborn:part:42> : [
		<ore:circuitBasic>, <techreborn:cable:6>, <ore:dustLapis>, <ore:plateInvar>
	],
	<techreborn:part:34> : [
		<techreborn:part:35>, <techreborn:part:35>, <techreborn:part:35>, <techreborn:part:35>, <techreborn:part:35>,
		<techreborn:part:35>, <techreborn:part:35>, <techreborn:part:35>, <techreborn:part:35>
	]
} as IIngredient[][IItemStack];

for o, r in Recipes_shapeless {
	recipes.remove(o);
	recipes.addShapeless("main/misc." ~ o.name, o, r);
}



// Only Removes

val Removes = [
	"techreborn:machine_casing_3",
	"techreborn:machine_casing_5",
	"techreborn:assembling_machine",
	"techreborn:upgrades_1",
	"chickenchunks:spot_loader",
	"techreborn:lsu_storage",
	"techreborn:part",
	"techreborn:part_1",
	"techreborn:part_2",
	"techreborn:part_3",
	"techreborn:diesel_generator"
] as string[];

for i in Removes {
	recipes.removeByRecipeName(i);
}

val removed_cable_craftings as int[] = [5, 6, 7, 9, 11];
for i in removed_cable_craftings {
	recipes.removeByRecipeName("techreborn:cable_" ~ i);
}


// Others

furnace.addRecipe(<nuclearcraft:part:6>, <contenttweaker:rough_plastic_plate>, 10);

furnace.remove(<techreborn:ingot:3>);
furnace.remove(<techreborn:ingot:15>);

industrialElectrolyzer.removeInputRecipe(<techreborn:dust:12>);
centrifuge.removeInputRecipe(<minecraft:golden_carrot>, <techreborn:dynamiccell>);

