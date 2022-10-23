// TR: Sync Scripts | 22/10/22

import mods.inworldcrafting.ExplosionCrafting;
import mods.inworldcrafting.FluidToItem;

ExplosionCrafting.explodeItemRecipe(<fluxnetworks:flux>, <minecraft:redstone>, 40);

FluidToItem.transform(<libvulpes:productgem> * 3, <liquid:vibrant_alloy>, [<nuclearcraft:dust:6> * 16], true);
FluidToItem.transform(<astralsorcery:itemcraftingcomponent:5>, <liquid:water>, [<techreborn:dust:46> * 16], true);
FluidToItem.transform(<improvedextraction:rock:8> * 16, <liquid:naoh>, [<techreborn:dust:4> * 16], true);
FluidToItem.transform(<improvedextraction:raw_crystal:7>, <liquid:sulfuric_acid>, [<contenttweaker:amethyst_gem>], true);
