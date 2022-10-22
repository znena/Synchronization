// TR: Sync Scripts | 22/10/1

import crafttweaker.item.IItemStack;
import mods.techreborn.solidCanningMachine;
import scripts.utils.eu_cost_multiplier;

val water_cell as IItemStack = <techreborn:dynamiccell>.withTag(
		{Fluid: {FluidName: "water", Amount: 1000}});
val sodium_cell as IItemStack = <techreborn:dynamiccell>.withTag(
		{Fluid: {FluidName: "fluidsodium", Amount: 1000}});

solidCanningMachine.addRecipe(sodium_cell, water_cell, <techreborn:dust:8> * 2, 1800, 6 * eu_cost_multiplier);
