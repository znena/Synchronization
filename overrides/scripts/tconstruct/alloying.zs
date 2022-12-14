// TR: Sync Scripts | 22/10/30

import crafttweaker.liquid.ILiquidStack;
import mods.tconstruct.Alloy;

val Recipes = {
	<liquid:stone> * 72 : [
		[<liquid:clay> * 576, <liquid:dirt> * 288, <liquid:soularium> * 32]
	],
	<liquid:bronze> * 144 : [
		[<liquid:copper> * 576, <liquid:tin> * 144]
	]
} as ILiquidStack[][][ILiquidStack];

for o, is in Recipes {
	for i in is {
		Alloy.addRecipe(o, i);
	}
}

