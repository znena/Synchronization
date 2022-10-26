// TR: Sync Scripts | 22/10/26

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.inworldcrafting.ExplosionCrafting;
import mods.inworldcrafting.FluidToItem;

val Recipes_Fluid = {
	<libvulpes:productgem> * 3 : {
		<liquid:vibrant_alloy> : {
			true : [<nuclearcraft:dust:6> * 16]
		}
	},
	<astralsorcery:itemcraftingcomponent:5> : {
		<liquid:water> : {
			true : [<techreborn:dust:46> * 16]
		}
	},
	<improvedextraction:rock:8> * 16 : {
		<liquid:naoh> : {
			true : [<techreborn:dust:4> * 16]
		}
	},
	<improvedextraction:raw_crystal:7> : {
		<liquid:sulfuric_acid> : {
			true : [<contenttweaker:amethyst_gem>]
		}
	},
	<contenttweaker:flux_fuel> : {
		<liquid:lava> : {
			true : [<minecraft:coal>, <techreborn:smalldust:61>]
		}
	}
} as IIngredient[][bool][ILiquidStack][IItemStack];

for i, fs in Recipes_Fluid {
	for f, bs in fs {
		for b, r in bs {
			FluidToItem.transform(i, f, r, b);
		}
	}
}

ExplosionCrafting.explodeItemRecipe(<fluxnetworks:flux>, <minecraft:redstone>, 40);

