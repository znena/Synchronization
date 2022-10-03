// TR: Sync Scripts #51 | 22/9/20

import mods.jei.JEI;

val HidedCategories = [
	"Painter",
	"jeresources.worldgen",
	"flux",
	"infinityPowder",
	"ftbquests.quests"
] as string[];

for i in HidedCategories {
	JEI.hideCategory(i);
}
