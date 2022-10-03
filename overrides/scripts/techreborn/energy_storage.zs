// TR: Sync Scripts #42 | 22/10/2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val Recipes = {
	<techreborn:energycrystal> :
		[[<ore:dustManganese>, <ore:dustPlatinum>, <ore:dustManganese>],
		 [<ore:dustPlatinum>, <ore:itemVibrantCrystal>, <ore:dustPlatinum>],
		 [<ore:dustManganese>, <ore:dustPlatinum>, <ore:dustManganese>]],
	<techreborn:lapotroncrystal> :
		[[<techreborn:energycrystal>, <ore:circuitT4>, <techreborn:energycrystal>],
		 [<ore:itemVibrantCrystal>, <libvulpes:productgem>, <ore:itemVibrantCrystal>],
		 [<techreborn:energycrystal>, <ore:itemVibrantCrystal>, <techreborn:energycrystal>]]
} as IIngredient[][][IItemStack];


for o, r in Recipes {
	recipes.remove(o);
	recipes.addShaped("machine/storage." ~ o.name, o, r);
}
