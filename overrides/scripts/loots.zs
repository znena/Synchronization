// TR: Sync Scripts | 22/9/25

import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.LootFunction;
import loottweaker.vanilla.loot.Functions;

zenClass LootTweakObject {
    zenConstructor() {
    }
	var inited as bool=false;
	var id as string;
	var remove_mode as bool=false;
	var remove_all as bool=false;
	var item as IItemStack;
	var weight as int;
	var quality as int;
	var functions as LootFunction[]=[];
	
	function init () {
		this.inited = true;
	}
	
	function init_add (item as IItemStack, weight as int=15, quality as int=0, id as string="") as LootTweakObject {
		this.item = item;
		this.weight = weight;
		this.quality = quality;
		if (id!="") { this.id = id; }
		this.init();
		return this;
	}
	
	function init_remove (id as string) as LootTweakObject {
		this.id = id;
		this.remove_mode = true;
		this.init();
		return this;
	}
	
	function setAmount (min as int, max as int) as LootTweakObject {
		this.functions += Functions.setCount(min, max);
		return this;
	}
	
	function removeAll () as LootTweakObject {
		remove_all = true;
		return this;
	}
	
	function regist (pool as LootPool) {
		if (this.remove_all) {
			pool.clearEntries();
		}
		if (this.inited) {
			if (this.remove_mode) {
				pool.removeEntry(this.id);
			} else {
				if (isNull(this.id)) {
					pool.addItemEntry(this.item, this.weight, this.quality, this.functions, [], this.id);
				} else {
					pool.addItemEntry(this.item, this.weight, this.quality, this.functions, []);
				}
			}
		}
	}
}

val LootTweaks = {
	"minecraft:chests/abandoned_mineshaft" : {
		"main" : [
			LootTweakObject().init_remove("astralsorcery:constellation_paper"),
			LootTweakObject().init_add(<techreborn:ingot:5>, 4, 1).setAmount(1, 2),
			LootTweakObject().init_add(<tconstruct:materials>, 3).setAmount(1, 2)
		],
		"pool1" : [
			LootTweakObject().init_remove("minecraft:diamond")
		]
	},
    "minecraft:chests/desert_pyramid" : {
		"main" : [
			LootTweakObject().init_remove("minecraft:diamond"),
			LootTweakObject().init_remove("astralsorcery:constellation_paper"),
			LootTweakObject().init_add(<techreborn:ingot:5>, 8).setAmount(1, 2),
			LootTweakObject().init_add(<enderio:item_material:5>, 8).setAmount(1, 5)
		]
	},
    "minecraft:chests/end_city_treasure" : {
		"main" : [
			LootTweakObject().init_add(<techreborn:ingot:5>, 4).setAmount(2, 5),
			LootTweakObject().init_add(<enderio:item_alloy_ingot:1>, 3).setAmount(1, 3)
		]
	},
    "minecraft:chests/igloo_chest" : {
		"main" : [
			LootTweakObject().init_remove("astralsorcery:constellation_paper"),
			LootTweakObject().init_add(<techreborn:ingot:5>, 4).setAmount(1, 2),
			LootTweakObject().init_add(<fluxnetworks:flux>, 7).setAmount(1, 10)
		]
	},
    "minecraft:chests/jungle_temple" : {
		"main" : [
			LootTweakObject().init_remove("astralsorcery:constellation_paper"),
			LootTweakObject().init_add(<techreborn:ingot:5>, 4).setAmount(1, 2),
			LootTweakObject().init_add(<nuclearcraft:cobblestone_generator>, 1, 2)
		]
	},
    "minecraft:chests/jungle_temple_dispenser" : {
		"main" : [
			LootTweakObject().init_add(<techreborn:ingot:8>, 4).setAmount(1, 4)
		]
	},
    "minecraft:chests/nether_bridge" : {
		"main" : [
			LootTweakObject().init_add(<techreborn:ingot:8>, 5).setAmount(2, 6)
		]
	},
    "minecraft:chests/simple_dungeon" : {
		"main" : [
			LootTweakObject().init_add(<enderio:item_alloy_endergy_ingot>, 5).setAmount(1, 3),
			LootTweakObject().init_add(<tconstruct:materials>, 4, 1).setAmount(1, 3),
			LootTweakObject().init_add(<enderio:item_material:5>, 6).setAmount(1, 3)
		]
	},
    "minecraft:chests/spawn_bonus_chest" : {
		"main" : [
			LootTweakObject().removeAll(),
			LootTweakObject().init_add(<minecraft:dirt>, 1).setAmount(1, 4)
		],
		"pool1" : [
			LootTweakObject().removeAll()
		],
		"pool2" : [
			LootTweakObject().removeAll()
		],
		"pool3" : [
			LootTweakObject().removeAll()
		]
	},
    "minecraft:chests/stronghold_corridor" : {
		"main" : [
			LootTweakObject().init_add(<improvedextraction:raw_crystal>, 1, 2).setAmount(1, 3),
			LootTweakObject().init_add(<enderio:item_alloy_ingot:7>, 1, 1),
			LootTweakObject().init_add(<chickenchunks:chunk_loader:1>, 1, 1)
		]
	},
    "minecraft:chests/stronghold_crossing" : {
		"main" : [
			LootTweakObject().init_add(<enderio:item_alloy_ingot:7>, 1, 1).setAmount(1, 3),
			LootTweakObject().init_add(<chickenchunks:chunk_loader:1>, 2, 1)
		]
	},
    "minecraft:chests/stronghold_library" : {
		"main" : [
			LootTweakObject().init_add(<improvedextraction:raw_crystal>, 2, 2).setAmount(1, 2),
			LootTweakObject().init_add(<enderio:item_alloy_ingot>, 2, 2).setAmount(1, 2),
			LootTweakObject().init_add(<enderio:item_alloy_ingot:7>, 2, 1).setAmount(1, 3),
			LootTweakObject().init_add(<chickenchunks:chunk_loader:1>, 2, 2),
			LootTweakObject().init_add(<waystones:waystone>, 1, 1)
		]
	},
    "minecraft:chests/village_blacksmith" : {
		"main" : [
			LootTweakObject().init_remove("minecraft:diamond"),
			LootTweakObject().init_add(<techreborn:plates:35>, 5, 1).setAmount(1, 4),
			LootTweakObject().init_add(<enderio:item_material:5>, 8).setAmount(1, 3)
		]
	},
    "minecraft:chests/woodland_mansion" : {
		"main" : [
			LootTweakObject().init_add(<chickenchunks:chunk_loader:1>, 3, 1),
			LootTweakObject().init_add(<enderio:item_alloy_ingot:1>, 5, 1).setAmount(1, 3),
			LootTweakObject().init_add(<techreborn:ingot>, 3, 1).setAmount(1, 2),
			LootTweakObject().init_add(<tconstruct:materials>, 3).setAmount(1, 3),
			LootTweakObject().init_add(<enderio:item_material:20>, 1, 3).setAmount(1, 2)
		]
	}
} as LootTweakObject[][string][string];

for table_id, pools in LootTweaks {
	val Table = LootTweaker.getTable(table_id) as LootTable;
	for pool_id, entries in pools {
		val Pool = Table.getPool(pool_id) as LootPool;
		for i in entries {
			i.regist(Pool);
		}
	}
}
