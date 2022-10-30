// TR: Sync Scripts | 22/10/30

import crafttweaker.item.IItemStack;

// Planks

val Planks = [<minecraft:planks>, <minecraft:planks:1>, <minecraft:planks:2>, <minecraft:planks:3>,
		<minecraft:planks:4>, <minecraft:planks:5>, <techreborn:rubber_planks>,
		<advancedrocketry:alienwood>, <astralsorcery:blockinfusedwood:1>, <traverse:fir_planks>] as IItemStack[];
val Logs = [<minecraft:log>, <minecraft:log:1>, <minecraft:log:2>, <minecraft:log:3>,
		<minecraft:log2>, <minecraft:log2:1>, <techreborn:rubber_log>,
		<advancedrocketry:planks>, <astralsorcery:blockinfusedwood>, <traverse:fir_log>] as IItemStack[];
val PlanksCraftingIdPrefix = ["vanilla/planks_", "vanilla/planks_axe_"] as string[];
val PlanksCraftingId = ["minecraft_1", "minecraft_2", "minecraft_3", "minecraft_4",
		"minecraft_5", "minecraft_6", "techreborn_rubber", "alien_wood", "infused_wood", "fir"] as string[];
val PlanksCraftingNum = [[1, 2], [1, 2], [1, 2], [1, 3],
		[1, 2], [1, 3], [2, 4], [5, 7], [4, 5], [3, 5]] as int[][];

val axe = <minecraft:iron_axe>.anyDamage().transformDamage(3) | 
		<techreborn:bronzeaxe>.anyDamage().transformDamage(2) | 
		<nuclearcraft:axe_boron>.anyDamage().transformDamage(1) | 
		<minecraft:golden_axe>.reuse();

for i in 0 to 7 {
	recipes.remove(Planks[i].anyAmount());
	recipes.addShapeless(PlanksCraftingIdPrefix[0] ~ PlanksCraftingId[i], Planks[i] * PlanksCraftingNum[i][0], [Logs[i]]);
	recipes.addShapeless(PlanksCraftingIdPrefix[1] ~ PlanksCraftingId[i], Planks[i] * PlanksCraftingNum[i][1], [Logs[i], axe]);
}

// Sticks

recipes.remove(<minecraft:stick>);
recipes.addShaped("main/sticks", <minecraft:stick> * 2, [[<ore:plankWood>], [<ore:plankWood>]]);
recipes.addShaped("main/sticks_use_axe", <minecraft:stick> * 3, [[axe], [<ore:plankWood>], [<ore:plankWood>]]);

