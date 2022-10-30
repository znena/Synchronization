// TR: Sync Scripts | 22/10/30
#loader contenttweaker
#priority 101

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.Color;

val creative_tab = <creativetab:sync>;

val Item_tools = {
	"refined_iron_hammer" : 40,
	"bronze_hammer" : 120,
	"lead_hammer" : 80,
	"boron_mortar" : 100
} as int[string];

for i, s in Item_tools {
	var item = VanillaFactory.createItem(i);
	item.creativeTab = creative_tab;
	item.maxDamage = s;
	item.setMaxStackSize(1);
	item.register();
}


function createColoredItem (id as string, texture as string, color as int) {
	var itemm = VanillaFactory.createItem(id);
	itemm.creativeTab = <creativetab:sync>;
	itemm.textureLocation = ResourceLocation.create(texture);
	if (color>=0) {
		itemm.itemColorSupplier = function(item, tintIndex) {
			return Color.fromInt(color);
		};
	}
	itemm.register();
}

val Mat_colors = {
	"gold" : 0xfff000,
	"redstone" : 0xdf3000,
	"boron" : 0x808080,
	"lithium" : 0xf0f0f0,
	"magnesium" : 0xffc8dd,
	"refined_iron" : 0xe8f0f0,
	"conductive_iron" : 0xffc0c0,
	"rough_energetic_alloy" : 0xffc000,
	"rough_plastic" : 0x40384a,
	"amethyst" : 0x8000f0,
	"crude_steel" : 0xcccccc
} as int[string];

val Item_mats = {
	"ingot" : [
		"rough_energetic_alloy"
	],
	"gem" : [
		"amethyst"
	],
	"plate" : [
		"rough_plastic",
		"crude_steel"
	],
	"dust" : [
		"conductive_iron",
		"refined_iron"
	],
	"nugget" : [
		"boron",
		"lithium",
		"magnesium"
	],
	"rod" : [
		"rough_plastic"
	],
	"smalldust" : [
		"conductive_iron"
	],
	"foil" : [
		"gold"
	],
	"coal" : [
		"redstone"
	],
	"flawed" : [
		"amethyst"
	]
} as string[][string];

val Item_textures_fix = {
} as string[string];

val Item_id_fix = {
	"ingot" : {},
	"gem" : {},
	"plate" : {},
	"dust" : {},
	"nugget" : {},
	"rod" : {},
	"smalldust" : {},
	"foil" : {},
	"coal" : {
		"redstone" : "flux_fuel"
	},
	"flawed" : {}
} as string[string][string];

for t, ms in Item_mats {
	var texture as string = "sync:items/" ~ t;
	if (Item_textures_fix has t) {
		texture = Item_textures_fix[t];
	}
	for m in ms {
		var id as string = m ~ "_" ~ t;
		if (Item_id_fix[t] has m) {
			id = Item_id_fix[t][m];
		}
		createColoredItem(id, texture, Mat_colors[m]);
	}
}

