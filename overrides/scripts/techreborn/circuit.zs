// TR: Sync Scripts #13 | 22/1/27

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val Recipes = {
	<techreborn:part:40> :
		[[<techreborn:cable:1>, <techreborn:cable:1>, <techreborn:cable:1>],
		 [<nuclearcraft:part:6>, <enderio:item_alloy_ingot:4>, <nuclearcraft:part:6>],
		 [<techreborn:cable:1>, <techreborn:cable:1>, <techreborn:cable:1>]],
	<techreborn:part:29> :
		[[<techreborn:plates:35>, <techreborn:plates:22>, <techreborn:plates:35>],
		 [<techreborn:plates:19>, <techreborn:part:40>, <techreborn:plates:19>],
		 [<techreborn:plates:35>, <techreborn:plates:22>, <techreborn:plates:35>]],
	<techreborn:part:41> :
		[[<techreborn:cable:5>, <techreborn:part:10>, <techreborn:cable:5>],
		 [<techreborn:part:29>, <enderio:item_alloy_ingot:1>, <techreborn:part:29>],
		 [<techreborn:cable:5>, <techreborn:part:10>, <techreborn:cable:5>]],
	<techreborn:part:30> :
		[[<techreborn:part:42>, <techreborn:cable:7>, <techreborn:part:42>],
		 [<techreborn:part:41>, <techreborn:part:28>, <techreborn:part:41>],
		 [<techreborn:part:42>, <techreborn:cable:7>, <techreborn:part:42>]]
} as IIngredient[][][IItemStack];

for o, r in Recipes {
	recipes.remove(o);
	recipes.addShaped("machine/circuit." ~ o.name, o, r);
}


// Others

recipes.remove(<techreborn:part:30>);
