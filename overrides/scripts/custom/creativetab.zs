// TR: Sync Scripts | 22/10/22
#loader contenttweaker
#priority 110

import crafttweaker.creativetabs.ICreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.CreativeTab;

val creativeTab = VanillaFactory.createCreativeTab("sync", <item:enderio:item_alloy_ingot:4>);
creativeTab.register();

