// TR: Sync Scripts #33 | 22/10/16

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.tconstruct.Melting;

val S_Recipes = {
	<contenttweaker:tetrahedrite_ore> : <liquid:copper> * 48,
	<nuclearcraft:roasted_cocoa_beans> : <liquid:unsweetened_chocolate> * 48,
	<minecraft:porkchop> : <liquid:gelatin> * 576,
	<nuclearcraft:ore:5> : <liquid:boron> * 32,
	<nuclearcraft:ore:6> : <liquid:lithium> * 32,
	<nuclearcraft:ore:7> : <liquid:magnesium> * 32
} as ILiquidStack[IItemStack];

var S_Temp = {
} as int[IItemStack];

for i, o in S_Recipes {
	if (S_Temp has i) {
		Melting.addRecipe(o, i, S_Temp[i]);
	} else {
		Melting.addRecipe(o, i);
	}
}

