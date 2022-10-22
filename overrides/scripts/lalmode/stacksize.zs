// TR: Sync Scripts | 22/10/16

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val Stacksizes = {
	8 : [
		<ore:plankWood>,
		<ore:slabWood>,
		<ore:stairWood>,
		<improvedextraction:ore_cluster:*>,
		<ore:blockGlass>,
		<ore:treeLeaves>,
		<tconstruct:soil>,
		
		<ore:fusedQuartz>,
		<ore:fusedGlass>,
		<ore:enlightenedFusedQuartz>,
		<ore:enlightenedFusedGlass>,
		<ore:darkFusedQuartz>,
		<ore:darkFusedGlass>,
		<ore:holyFusedQuartz>,
		<ore:holyFusedGlass>,
		<ore:holyEnlightenedFusedQuartz>,
		<ore:holyEnlightenedFusedGlass>,
		<ore:holyDarkFusedQuartz>,
		<ore:holyDarkFusedGlass>,
		<ore:unholyFusedQuartz>,
		<ore:unholyFusedGlass>,
		<ore:unholyEnlightenedFusedQuartz>,
		<ore:unholyEnlightenedFusedGlass>,
		<ore:unholyDarkFusedQuartz>,
		<ore:unholyDarkFusedGlass>,
		<ore:pastureFusedQuartz>,
		<ore:pastureFusedGlass>,
		<ore:pastureEnlightenedFusedQuartz>,
		<ore:pastureEnlightenedFusedGlass>,
		<ore:pastureDarkFusedQuartz>,
		<ore:pastureDarkFusedGlass>,
		<ore:notHolyFusedQuartz>,
		<ore:notHolyFusedGlass>,
		<ore:notHolyEnlightenedFusedQuartz>,
		<ore:notHolyEnlightenedFusedGlass>,
		<ore:notHolyDarkFusedQuartz>,
		<ore:notHolyDarkFusedGlass>,
		<ore:notUnholyFusedQuartz>,
		<ore:notUnholyFusedGlass>,
		<ore:notUnholyEnlightenedFusedQuartz>,
		<ore:notUnholyEnlightenedFusedGlass>,
		<ore:notUnholyDarkFusedQuartz>,
		<ore:notUnholyDarkFusedGlass>,
		<ore:notPastureFusedQuartz>,
		<ore:notPastureFusedGlass>,
		<ore:notPastureEnlightenedFusedQuartz>,
		<ore:notPastureEnlightenedFusedGlass>,
		<ore:notPastureDarkFusedQuartz>,
		<ore:notPastureDarkFusedGlass>
	],
	9 : [
		<minecraft:iron_ingot>,
		<minecraft:gold_ingot>,
		<advancedrocketry:productingot:*>,
		<astralsorcery:itemcraftingcomponent:1>,
		<contenttweaker:rough_energetic_alloy_ingot>,
		<enderio:item_alloy_endergy_ingot:*>,
		<improvedextraction:finite_ingot>,
		<nuclearcraft:ingot:*>,
		<nuclearcraft:ingot_oxide:*>,
		<nuclearcraft:alloy:*>,
		<techreborn:ingot:*>,
		<tconstruct:ingots:*>,
		<libvulpes:productingot:*>,
		<enderio:item_alloy_ingot:*>,
		
		<enderio:block_infinity:*>
	],
	16 : [
		<minecraft:iron_bars>,
		<minecraft:redstone_torch>,
		<minecraft:golden_rail>,
		<minecraft:detector_rail>,
		<minecraft:ladder>,
		<minecraft:rail>,
		<minecraft:activator_rail>,
		<tconstruct:wood_rail>,
		<tconstruct:wood_rail_trapdoor>,
		<enderio:block_exit_rail>,
		<enderio:block_dark_iron_bars>,
		<enderio:block_end_iron_bars>,
		<enderio:block_dark_steel_ladder>,
		<ore:paneGlass>,
		<ore:treeSapling>,
		<ore:vine>,
		<minecraft:waterlily>,
		
		<techreborn:cable>,
		<techreborn:cable:1>,
		<techreborn:cable:2>,
		<techreborn:cable:3>,
		<techreborn:cable:4>,
		<techreborn:cable:5>,
		<techreborn:cable:6>,
		<techreborn:cable:7>,
		<techreborn:cable:8>,
		<enderio:item_item_conduit>,
		<enderio:item_liquid_conduit>,
		<enderio:item_liquid_conduit:1>,
		<enderio:item_liquid_conduit:2>,
		<enderio:item_power_conduit>,
		<enderio:item_power_conduit:1>,
		<enderio:item_power_conduit:2>,
		<enderio:item_redstone_conduit>,
		<enderio:item_data_conduit>
	],
	24 : [
		<enderio:item_alloy_ball:*>
	],
	32 : [
		<minecraft:iron_nugget>,
		<minecraft:gold_nugget>,
		<advancedrocketry:productnugget:*>,
		<contenttweaker:boron_nugget>,
		<contenttweaker:lithium_nugget>,
		<contenttweaker:magnesium_nugget>,
		<enderio:item_alloy_nugget:*>,
		<enderio:item_alloy_endergy_nugget:*>,
		<techreborn:nuggets:*>,
		<tconstruct:nuggets:*>,
		<libvulpes:productnugget:*>,
		<techreborn:smalldust:*>,
		<contenttweaker:conductive_iron_smalldust>,
		
		<minecraft:torch>,
		<minecraft:stick>,
		<improvedextraction:rock:*>,
		<improvedextraction:small_rock>,
		<improvedextraction:ore_fragment:*>,
		<minecraft:prismarine_crystals>
	]
} as IIngredient[][int];

if (scripts.utils.lal_mode) {

	for mod in loadedMods {
		for i in mod.items {
			if (i.isItemBlock) {
				i.maxStackSize=4;
			} else if (i.maxStackSize>16) {
				i.maxStackSize=16;
			}
		}
	}
	
	for s, igs in Stacksizes {
		for ig in igs {
			for i in ig.itemArray {
				i.maxStackSize=s;
			}
		}
	}

}
