// TR: Sync Scripts #27 | 22/9/30

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import scripts.gamestages.ageId as ageId;

// Hammer

val Materials = [<ore:ingotRefinedIron>, <ore:ingotBronze>, <ore:ingotLead>] as IIngredient[];
val Hammers = [<contenttweaker:refined_iron_hammer>, <contenttweaker:bronze_hammer>,
		<contenttweaker:lead_hammer>] as IItemStack[];
val mat_od = ["refined_iron", "bronze", "tough_alloy"] as string[];
		
for i in 0 to 3 {
	mods.recipestages.Recipes.addShaped(ageId(0), Hammers[i],
			[[Materials[i], Materials[i], null],
			[Materials[i], Materials[i], <contenttweaker:plastic_rode>],
			[Materials[i], Materials[i], null]]);
}


// Mortar

val Recipes = {
	<contenttweaker:boron_mortar> : [
		[[null, <ore:ingotBoron>, null],
		 [<ore:stoneBasalt>, <ore:ingotBoron>, <ore:stoneBasalt>],
		 [<ore:stoneBasalt>, <ore:stoneBasalt>, <ore:stoneBasalt>]]
	]
//	<contenttweaker:copper_sword>.withTag({AttributeModifiers:[
//		{AttributeName:"generic.attackDamage",Name:"attackDamage",Amount:5.5,Operation:0,UUIDLeast:1,UUIDMost:1,Slot:"mainhand"},
//		{AttributeName:"generic.attackSpeed",Name:"attackSpeed",Amount:-2.4,Operation:0,UUIDLeast:1,UUIDMost:2,Slot:"mainhand"}
//	]}) : [
//		[[<ore:ingotCopper>],
//		 [<ore:ingotCopper>],
//		 [<ore:stickWood>]]
//	],
//	<contenttweaker:copper_shovel> : [
//		[[<ore:ingotCopper>],
//		 [<ore:stickWood>],
//		 [<ore:stickWood>]]
//	],
//	<contenttweaker:copper_pickaxe> : [
//		[[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
//		 [null, <ore:stickWood>, null],
//		 [null, <ore:stickWood>, null]]
//	],
//	<contenttweaker:copper_axe> : [
//		[[<ore:ingotCopper>, <ore:ingotCopper>],
//		 [<ore:ingotCopper>, <ore:stickWood>],
//		 [null, <ore:stickWood>]],
//		[[<ore:ingotCopper>, <ore:ingotCopper>],
//		 [<ore:stickWood>, <ore:ingotCopper>],
//		 [<ore:stickWood>, null]]
//	]
} as IIngredient[][][][IItemStack];

for o, rs in Recipes {
	var t = 0 as int;
	for r in rs {
		t += 1;
		recipes.addShaped("main/tool." ~ o.name ~ "." ~ (t as string), o, r);
	}
}

