// TR: Sync Scripts #24 | 22/10/16
#priority 1

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;
import mods.tconstruct.Alloy;


// Casting

val C_Items = [
	<tconstruct:seared>,
	<tconstruct:seared:1>,
	<tconstruct:seared_furnace_controller>,
	<tconstruct:seared_glass>
] as IItemStack[];

for i in C_Items {
	Casting.removeTableRecipe(i);
	Casting.removeBasinRecipe(i);
}


// Melting

val M_Items = [
	<liquid:stone>
] as ILiquidStack[];

val M_Items_WI = {
	<liquid:gold> : [<improvedextraction:ore_cluster:1>],
	<liquid:copper> : [<improvedextraction:ore_cluster:2>],
	<liquid:tin> : [<improvedextraction:ore_cluster:3>],
	<liquid:silver> : [<improvedextraction:ore_cluster:4>],
	<liquid:lead> : [<improvedextraction:ore_cluster:5>],
	<liquid:aluminum> : [<improvedextraction:ore_cluster:6>],
	<liquid:uranium> : [<improvedextraction:ore_cluster:15>],
	<liquid:boron> : [<nuclearcraft:ore:5>],
	<liquid:lithium> : [<nuclearcraft:ore:6>],
	<liquid:magnesium> : [<nuclearcraft:ore:7>],
	<liquid:thorium> : [<nuclearcraft:ore:3>],
} as IItemStack[][ILiquidStack];

for o in M_Items {
	Melting.removeRecipe(o);
}

for o, is in M_Items_WI {
	for i in is {
		Melting.removeRecipe(o, i);
	}
}


// Alloying

val A_Liquids = [
	<liquid:steel>,
	<liquid:ferroboron>,
	<liquid:tough>,
	<liquid:hard_carbon>,
	<liquid:bronze>,
	<liquid:electrum>,
	<liquid:brass>,
	<liquid:energetic_alloy>,
	<liquid:vibrant_alloy>,
	<liquid:conductive_iron>,
	<liquid:pulsating_iron>,
	<liquid:dark_steel>,
	
	<liquid:clay>
] as ILiquidStack[];

for o in A_Liquids {
	Alloy.removeRecipe(o);
}

