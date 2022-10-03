// TR: Sync Scripts #53 | 22/10/2

import crafttweaker.item.IItemStack;

val Displayname_set = {
	<improvedextraction:ore_cluster:12> : "方铅矿碎矿",
	<improvedextraction:ore_fragment:12> : "方铅矿碎块",
	<techreborn:part:40> : "极低压电路基板",
	<techreborn:part:41> : "中级电路板",
	<techreborn:cable:1> : "I 阶导线",
	<techreborn:cable> : "II 阶导线",
	<techreborn:cable:2> : "III 阶导线",
	<techreborn:cable:3> : "IV 阶导线",
	<techreborn:cable:5> : "绝缘 II 阶导线",
	<techreborn:cable:6> : "绝缘 III 阶导线",
	<techreborn:cable:7> : "绝缘 IV 阶导线",
	<techreborn:bronzesword> : "铜剑",
	<techreborn:bronzepickaxe> : "铜镐",
	<techreborn:bronzespade> : "铜锹",
	<techreborn:bronzeaxe> : "铜斧",
	<techreborn:bronzehoe> : "铜锄",
	<techreborn:bronzehelmet> : "铜头盔",
	<techreborn:bronzechestplate> : "铜胸甲",
	<techreborn:bronzeleggings> : "铜护腿",
	<techreborn:bronzeboots> : "铜靴子",
	<enderio:item_material:9> : "基础齿轮",
	<enderio:item_material:10> : "强化齿轮",
	<enderio:item_material:23> : "高纯度碳粉"
} as string[IItemStack];

for i, s in Displayname_set {
	i.displayName = s;
}

