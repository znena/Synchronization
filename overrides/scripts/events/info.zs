// TR: Sync Scripts #4 | 22/9/12
#loader crafttweaker reloadableevents
#priority 998

import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerLoggedInEvent;
import scripts.utils.pack_version as pack_version;
import scripts.utils.mode as pack_mode;

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
    event.player.sendRichTextMessage(format.green("欢迎来到 TechReborn: Sync ( Version: " ~
			pack_version ~ " )."));
	event.player.sendRichTextMessage(format.green("整合包模式已设置为： " ~ 
			pack_mode ~ "."));
	if (pack_mode=="cheat") {
		event.player.sendRichTextMessage(format.red("你将无法在作弊模式中获得任何Goze成就与记录！"));
	}
});
