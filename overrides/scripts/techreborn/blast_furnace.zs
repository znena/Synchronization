// TR: Sync Scripts | 22/10/2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.techreborn.blastFurnace;
import scripts.utils.eu_cost_multiplier;

zenClass R  {
	zenConstructor (inputA as IIngredient, inputB as IIngredient, outputA as IItemStack,
					outputB as IItemStack, voltage as int, time as int, level as int) {
		this.inputs[0] = inputA;
		this.inputs[1] = inputB;
		this.outputs[0] = outputA;
		this.outputs[1] = outputB;
		this.voltage = (voltage * eu_cost_multiplier) as int;
		this.time = time * 20;
		this.temp = (1000 + 100 * level) as int;
    }
	var inputs as IIngredient[]=[null, null];
	var outputs as IItemStack[]=[null, null];
	var voltage as int;
	var time as int;
	var temp as int;
	
	function regist () {
		blastFurnace.addRecipe(this.outputs[0], this.outputs[1], this.inputs[0], this.inputs[1],
				this.time, this.voltage, this.temp);
	}
}

val vibrant_alloy_cell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "vibrant_alloy", Amount: 1000}}) as IItemStack;
val silicon_cell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidsilicon", Amount: 1000}});

blastFurnace.removeAll();

val Recipes = [
	R(<ore:dustSteel>, null, <techreborn:ingot:12>, null, 8, 60, 0),
	R(<ore:dustTitanium>, null, <techreborn:ingot:14>, null, 128, 600, 5),
	R(<ore:dustAluminum>, null, <techreborn:ingot>, null, 64, 180, 7),
	R(<ore:dustChrome>, null, <techreborn:ingot:3>, null, 32, 120, 7),
	R(<ore:dustIridium>, null, <techreborn:ingot:7>, null, 128, 900, 7),
	R(<ore:dustTungsten>, null, <techreborn:ingot:15>, null, 192, 1200, 15),
	R(<enderio:item_alloy_endergy_ingot>, <enderio:item_material:23> * 2, <techreborn:nuggets:12> * 3, <techreborn:dust:15>, 32, 300, 0),
	R(<ore:ingotTungsten>, <ore:ingotSteel>, <techreborn:nuggets:16> * 3, <techreborn:dust:15> * 2, 256, 600, 20),
	R(silicon_cell * 2, null, <techreborn:plates:11>, <techreborn:dust:15> * 2, 256, 600, 20),
	R(<enderio:item_material:20> * 4, null, <techreborn:ingot:17> * 2, <techreborn:dynamiccell> * 2, 32, 300, 5),
	R(<enderio:item_alloy_ingot:2> * 8, <techreborn:dynamiccell>, vibrant_alloy_cell, null, 64, 300, 3)
] as R[];

for i in Recipes {
	i.regist();
}
