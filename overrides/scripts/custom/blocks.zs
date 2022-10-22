// TR: Sync Scripts | 22/10/22
#loader contenttweaker
#priority 100

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.DropHandler;

val creative_tab = <creativetab:sync>;

val Ore_block_property as float[][string] = {
	"calcite" : [1.5, 8.0, 1],
	"basalt" : [6.0, 15.0, 2],
	"weathered_stone" : [1.5, 5.0, 0],
	"tetrahedrite_ore" : [4.0, 15.0, 2],
	"cassiterite_ore" : [4.0, 15.0, 2],
	"gold_ore" : [3.0, 15.0, 2],
	"diamond_ore" : [4.5, 15.0, 2],
	"redstone_ore" : [3.0, 15.0, 2],
	"lapis_ore" : [4.0, 15.0, 2],
	"quartz_ore" : [3.5, 15.0, 2]
};

val Ore_block_drops as DropHandler[string] = {
	"diamond_ore" : function(drops, world, position, state, fortune) {
		drops.clear();
		drops.add(<item:improvedextraction:raw_crystal>);
		for i in 1 to (fortune) {
			drops.add(<item:improvedextraction:raw_crystal> % 50);
		}
		return;
	},
	"redstone_ore" : function(drops, world, position, state, fortune) {
		drops.clear();
		drops.add(<item:minecraft:redstone> * 3);
		drops.add(<item:enderio:item_material:5> % 10);
		for i in 1 to (fortune + 2) {
			drops.add(<item:minecraft:redstone> % 50);
			drops.add(<item:enderio:item_material:5> % 10);
		}
		return;
	},
	"lapis_ore" : function(drops, world, position, state, fortune) {
		drops.clear();
		drops.add(<item:minecraft:dye:4> * 3);
		drops.add(<item:minecraft:dye:4> % 50);
		for i in 1 to (fortune * 3) {
			drops.add((<item:minecraft:dye:4> * 2) % 25);
		}
		return;
	},
	"quartz_ore" : function(drops, world, position, state, fortune) {
		drops.clear();
		drops.add(<item:minecraft:quartz>);
		drops.add(<item:contenttweaker:amethyst_gem> % 10);
		for i in 1 to (fortune) {
			drops.add((<item:minecraft:quartz> * 2) % 25);
			drops.add(<item:contenttweaker:amethyst_gem> % 5);
		}
		if (fortune>=3) {
			drops.add((<item:contenttweaker:amethyst_gem> * 2) % 3);
		}
		return;
	}
};

for i, p in Ore_block_property {
	var block = VanillaFactory.createBlock(i, <blockmaterial:rock>) as Block;
	block.setBlockHardness(p[0]);
	block.setBlockResistance(p[1]);
	block.setToolClass("pickaxe");
	block.setToolLevel(p[2]);
	block.setBlockSoundType(<soundtype:stone>);
	block.creativeTab = creative_tab;
	if (Ore_block_drops has i) {
		block.setDropHandler(Ore_block_drops[i]);
	}
	block.witherProof = true;
	block.register();
}


//

var block = VanillaFactory.createBlock("iron_ore_dust", <blockmaterial:sand>) as Block;
block.setBlockHardness(3.0);
block.setBlockResistance(9.0);
block.setToolClass("shovel");
block.setToolLevel(2);
block.setBlockSoundType(<soundtype:sand>);
block.creativeTab = creative_tab;
block.gravity = true;
block.witherProof = true;
block.register();

