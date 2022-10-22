// TR: Sync Scripts | 22/10/1

import crafttweaker.block.IBlockDefinition;
import crafttweaker.item.IIngredient;

val AllBlocks = game.blocks as IBlockDefinition[];

val Hardness_Multiplier = {
	"easy": 1.2,
	"default": 1.5,
	"expert": 2.0
} as float[string];
var pack_mode = scripts.utils.mode;
if (!(Hardness_Multiplier has pack_mode)) {
	pack_mode = "default";
}

val Hardness = {
	0.25 : [
		<techreborn:iron_furnace>
	],
	0.35 : [
		<minecraft:obsidian>
	],
	0.75 : [
		<storagedrawers:basicdrawers:*>
	],
	1.5 : [
		<minecraft:dirt>,
		<minecraft:stone>,
		<minecraft:end_stone>
	],
	2.0 : [
		<minecraft:grass>,
		<minecraft:netherrack>
	]
} as IIngredient[][float];


for i in AllBlocks {
	i.hardness *= (Hardness_Multiplier[pack_mode] * (scripts.utils.lal_mode ? 2 : 1)) as float;
}
for s, igs in Hardness {
	for ig in igs {
		for i in ig.itemArray {
			if (i.isItemBlock) {
				i.asBlock().definition.hardness *= s;
			}
		}
	}
}

