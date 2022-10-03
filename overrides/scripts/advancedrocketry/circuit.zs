// TR: Sync Scripts #43 | 22/8/5

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val Recipes = {
	<advancedrocketry:ic:3> :
		[[<advancedrocketry:ic:2>, <techreborn:energycrystal>, <advancedrocketry:ic:2>],
		 [<libvulpes:productdust:10>, <advancedrocketry:satelliteprimaryfunction>, <libvulpes:productdust:10>],
		 [<libvulpes:productdust:10>, <techreborn:part:43>, <libvulpes:productdust:10>]],
	<advancedrocketry:ic:4> :
		[[<advancedrocketry:ic:2>, <techreborn:energycrystal>, <advancedrocketry:ic:2>],
		 [<advancedrocketry:productdust>, <advancedrocketry:ic:3>, <advancedrocketry:productdust>],
		 [<advancedrocketry:productdust>, <techreborn:part:43>, <advancedrocketry:productdust>]],
	<advancedrocketry:ic:5> :
		[[<advancedrocketry:ic:2>, <techreborn:energycrystal>, <advancedrocketry:ic:2>],
		 [<advancedrocketry:productdust:1>, <advancedrocketry:ic:4>, <advancedrocketry:productdust:1>],
		 [<advancedrocketry:productdust:1>, <techreborn:part:2>, <advancedrocketry:productdust:1>]]
} as IIngredient[][][IItemStack];


for o, r in Recipes {
	recipes.remove(o);
	recipes.addShaped("machine/lv." ~ o.name, o, r);
}
