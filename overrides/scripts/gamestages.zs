// TR: Sync Scripts | 22/10/30
#priority 997

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import scripts.utils.mode as pack_mode;

// Difinition

function ageId (age as int=0, type as int=0) as string {
	var ages = ["age_amina", "age_balta", "age_ciksa", "age_dunch", "age_erra"] as string[];
	if (type==1) {
		ages = ["map_a", "map_b", "map_c", "map_d"];
	} else if (type==2) {
		return "age_creative";
	} else if (type==3) {
		ages = ["tcon", "psi"] as string[];
	}
	return ages[age];
}


// Change with Definition

val aged_items = {
	ageId(0) : [
		<minecraft:diamond>,
		<improvedextraction:cutting_table>, <improvedextraction:auto_cutting_table>,
		<waystones:waystone>,
		<nuclearcraft:sword_boron>, <nuclearcraft:pickaxe_boron>, <nuclearcraft:shovel_boron>,
		<nuclearcraft:axe_boron>, <nuclearcraft:hoe_boron>, <nuclearcraft:helm_boron>,
		<nuclearcraft:chest_boron>, <nuclearcraft:legs_boron>, <nuclearcraft:boots_boron>,
		<enderio:item_xp_transfer>,
		<enderio:block_tank>,
		<enderio:block_fused_quartz:*>, <enderio:block_fused_glass:*>,
		<enderio:item_material:5>,
		<enderio:item_material:38>, <enderio:item_material:3>,
		<enderio:item_material:4>, <enderio:item_material:22>,
		<enderio:item_material:9>, <enderio:item_material:10>,
		<enderio:item_item_conduit>,
		<enderio:item_liquid_conduit>,
		<enderio:item_extract_speed_upgrade>,
		<nuclearcraft:cobblestone_generator>,
		<enderio:item_alloy_ingot:1>, <enderio:item_alloy_nugget:1>,
		<enderio:item_alloy_ingot:7>, <enderio:item_alloy_nugget:7>, <enderio:item_material:74>,
		<enderio:item_alloy_ingot:9>, <enderio:item_alloy_nugget:9>,
		<enderio:item_alloy_nugget:3>, <enderio:item_alloy_ingot:3>,
		<enderio:item_alloy_nugget>, <enderio:item_alloy_ingot>,
		<enderio:item_alloy_endergy_nugget>, <enderio:item_alloy_endergy_ingot>,
		<enderio:block_simple_stirling_generator>
	],
	ageId(1) : [
		<techreborn:industrial_blast_furnace>,
		<techreborn:assembling_machine>,
		<techreborn:energycrystal>, <techreborn:lapotroncrystal>,
		<enderio:item_alloy_ingot:2>, <enderio:item_alloy_nugget:2>,
		<enderio:item_material:15>,
		<enderio:item_material:23>,
		<libvulpes:productgem>,
		<minecraft:ender_eye>
	],
	ageId(0, 3) : [
		<tconstruct:toolforge>
	],
	ageId(1, 2) : [
		<techreborn:iron_alloy_furnace>
	]
} as IIngredient[][string];

val aged_ores = {
	ageId(0) : {
		<minecraft:stone> : [
			<nuclearcraft:ore:5>
		],
		<minecraft:netherrack> : [
			<techreborn:ore:5>, <techreborn:ore:7>
		]
	},
	ageId(1) : {
		<minecraft:stone> : [
			<nuclearcraft:ore:6>, <techreborn:ore:0>, <techreborn:ore:4>, 
			<minecraft:emerald_ore>
		],
		<minecraft:netherrack> : [
			<tconstruct:ore:*>, <techreborn:ore:6>
		],
		<minecraft:end_stone> : [
			<techreborn:ore:8>, <techreborn:ore:9>, <techreborn:ore:10>, <techreborn:ore:11>
		]
	},
	ageId(2) : {
		<minecraft:stone> : [
			<nuclearcraft:ore:3>, <nuclearcraft:ore:4>, <nuclearcraft:ore:7>,
			<techreborn:ore:1>,
			<libvulpes:ore0:0>, <libvulpes:ore0:8>,
			<astralsorcery:blockcustomore>
		]
	}, 
	ageId(1, 2) : {
		<minecraft:stone> : [
			<minecraft:gold_ore>, <minecraft:diamond_ore>, <minecraft:redstone_ore>, <minecraft:lapis_ore>, 
			<libvulpes:ore0:4>, <libvulpes:ore0:5>, <libvulpes:ore0:9>, <libvulpes:ore0:10>
		],
		<minecraft:end_stone> : [
			<improvedextraction:finite_ore>
		]
	}
} as IIngredient[][IItemStack][string];

val Mod_item_stages = {
	ageId(1) : ["nuclearcraft", "conarm", "fluxnetworks", "quantumstorage"],
	ageId(2) : ["advancedrocketry", "enderio", "astralsorcery"],
	ageId(0, 3) : ["tconstruct"],
	ageId(1, 3) : ["psi"]
} as string[][string];

val remove_age_items = [
	<tconstruct:rack>, <tconstruct:rack:1>, <fluxnetworks:flux>,
	<enderio:item_alloy_nugget:4>, <enderio:item_alloy_ingot:4>, <nuclearcraft:part:6>, <nuclearcraft:ingot:5>,
	<advancedrocketry:satelliteprimaryfunction>
] as IItemStack[];


// Mod Item Stages

for i, j in Mod_item_stages {
	for m in j {
		mods.ItemStages.stageModItems(i, m);
	}
}


// Item Stages & Ore Stages

for s, is in aged_items {
	for i in is {
		mods.ItemStages.removeItemStage(i);
		mods.ItemStages.addItemStage(s, i);
	}
}

for s, d in aged_ores {
	for b, is in d {
		for i in is {
			mods.ItemStages.removeItemStage(i);
			mods.ItemStages.addItemStage(s, i);
			mods.orestages.OreStages.addReplacement(s, i, b);
		}
	}
}


// Item Stage Removes

for i in remove_age_items {
	mods.ItemStages.removeItemStage(i);
}


// Map Stages

if (pack_mode!="easy") {
	mods.jmapstages.JMapStages.setMinimapStage(ageId(0, 1));
}
mods.jmapstages.JMapStages.setFullscreenStage(ageId(1, 1));
mods.jmapstages.JMapStages.setWaypointStage(ageId(2, 1));
mods.jmapstages.JMapStages.setDeathpointStage(ageId(3, 1));

