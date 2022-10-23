// TR: Sync Scripts | 22/10/22
#loader crafttweaker reloadableevents

import crafttweaker.events.IEventManager;
import crafttweaker.event.CommandEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.command.ICommand;
import crafttweaker.data.IData;
import scripts.utils.mode as pack_mode;

val allow_commands = ["?", "backup", "ct", "ctgui", "cheatingmode", "forge", "gamestage", "help",
		"me", "msg", "my_settings", "reload", "team", "tell", "tofe", "together", "togetherforever",
		"sync", "w", "reloadShaders", "reloadChunks"] as string[];

events.onCommand(function(event as CommandEvent) {
	if (event.commandSender instanceof IPlayer) {
        val player as IPlayer = event.commandSender;
        if (!event.commandSender.world.remote) {
			if (pack_mode!="cheat") {
				if (allow_commands has event.command.name) {
					return;
				}
				event.cancel();
				player.sendRichTextMessage(format.red("此指令已经被 Technology Synchnorization 禁用！"));
			}
		}
    }
});
