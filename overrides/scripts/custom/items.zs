// TR: Sync Scripts #18 | 22/10/1
#loader contenttweaker
#priority 100

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

val creative_tab = <creativetab:sync>;

val Item_ids = [
	"boron_nugget",
	"lithium_nugget",
	"magnesium_nugget",
	"rough_plastic_plate",
	"rough_energetic_alloy_ingot",
	"plastic_rode",
	"refined_iron_dust",
	"conductive_iron_dust",
	"conductive_iron_small_dust",
	"gold_foil"
] as string[];

val Item_tools = {
	"refined_iron_hammer" : 40,
	"bronze_hammer" : 120,
	"lead_hammer" : 80,
	"boron_mortar" : 100
} as int[string];

for i in Item_ids {
	var item = VanillaFactory.createItem(i);
	item.creativeTab = creative_tab;
	item.register();
}

for i, s in Item_tools {
	var item = VanillaFactory.createItem(i);
	item.creativeTab = creative_tab;
	item.maxDamage = s;
	item.setMaxStackSize(1);
	item.register();
}
