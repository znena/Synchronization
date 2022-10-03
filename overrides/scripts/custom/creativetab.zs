// TR: Sync Scripts #48 | 22/9/25
#loader contenttweaker
#priority 101

import crafttweaker.creativetabs.ICreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.CreativeTab;

val creativeTab = VanillaFactory.createCreativeTab("sync", <item:enderio:item_alloy_ingot:4>);
creativeTab.register();

