// TR: Sync Scripts | 22/10/30

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;


val Removes = {
	<ore:dustCoal> : [<enderio:item_material:23>]
} as IItemStack[][IOreDictEntry];

for od, is in Removes {
	od.removeItems(is);
}


val Adds = {
	<ore:stone> : [<contenttweaker:weathered_stone>],
	<ore:stoneBasalt> : [<contenttweaker:basalt>],
	<ore:stoneCalcite> : [<contenttweaker:calcite>],
	<ore:nuggetBoron> : [<contenttweaker:boron_nugget>],
	<ore:nuggetLithium> : [<contenttweaker:lithium_nugget>],
	<ore:nuggetMagnesium> : [<contenttweaker:magnesium_nugget>],
	<ore:dustRefinedIron> : [<contenttweaker:refined_iron_dust>],
	<ore:oreMagnetite> : [<contenttweaker:iron_ore_dust>],
	<ore:oreTetrahedrite> : [<contenttweaker:tetrahedrite_ore>],
	<ore:oreCassiterite> : [<contenttweaker:cassiterite_ore>],
	<ore:oreGold> : [<contenttweaker:gold_ore>],
	<ore:oreDiamond> : [<contenttweaker:diamond_ore>],
	<ore:oreRedstone> : [<contenttweaker:redstone_ore>],
	<ore:oreLapis> : [<contenttweaker:lapis_ore>],
	
	<ore:plateCrudeSteel> : [<contenttweaker:crude_steel_plate>],
	<ore:dustPurifiedCarbon> : [<enderio:item_material:23>],
	<ore:gemAmethyst> : [<contenttweaker:amethyst_gem>],
	<ore:circuitT1> : [<techreborn:part:40>],
	<ore:circuitT2> : [<techreborn:part:29>],
	<ore:circuitT3> : [<techreborn:part:41>],
	<ore:circuitT4> : [<techreborn:part:30>],
	<ore:circuitT5> : [<techreborn:part:43>]
} as IItemStack[][IOreDictEntry];

for od, is in Adds {
	od.addItems(is);
}
