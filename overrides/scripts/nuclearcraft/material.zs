// TR: Sync Scripts #21 | 22/1/9

import crafttweaker.item.IItemStack;

val Ingots = [<nuclearcraft:ingot:5>, <nuclearcraft:ingot:6>, <nuclearcraft:ingot:7>] as IItemStack[];
val Nuggets = [<contenttweaker:boron_nugget>, <contenttweaker:lithium_nugget>,
		<contenttweaker:magnesium_nugget>] as IItemStack[];
val recipe_ids = ["boron", "lithium", "magnesium"] as string[];

for i in 0 to 3 {
	recipes.addShapeless("main/" ~ recipe_ids[i] ~ "_ingot", Nuggets[i] * 9, [Ingots[i]]);
	recipes.addShapeless("main/" ~ recipe_ids[i] ~ "_nugget", Ingots[i],
			[Nuggets[i], Nuggets[i], Nuggets[i], Nuggets[i], Nuggets[i], Nuggets[i],
			Nuggets[i], Nuggets[i], Nuggets[i]]);
}
