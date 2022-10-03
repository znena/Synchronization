// TR: Sync Scripts #12 | 22/9/16
#priority 99

import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import crafttweaker.text.ITextComponent;
import mods.zenutils.command.ZenCommand;
import mods.zenutils.command.CommandUtils;
import mods.zenutils.command.IGetTabCompletion;
import mods.zenutils.StringList;


val tabCompletion as IGetTabCompletion = function(server, sender, pos) {
    return StringList.create([
        "ability",
        "gozec"
    ]);
};


val command as ZenCommand = ZenCommand.create("ts");
command.getCommandUsage = function(sender) {
	return "commands.ts.usage";
};
command.requiredPermissionLevel = 0;
command.tabCompletionGetters = [tabCompletion];
command.execute = function(command, server, sender, args) {
	val player as IPlayer = CommandUtils.getCommandSenderAsPlayer(sender);
	if (args.length == 1) {
		if (args[0]=="ability") {
			var damage_buff as double = (player.xp as double) * 0.04 + 0.4;
			if (damage_buff > 16 as double) {
				damage_buff = 16 as double;
			}
			player.sendRichTextMessage(format.green(ITextComponent.fromTranslation(
					"commands.ts.ability.damage_buff", (damage_buff * 100) as string).formattedText));
		} else if (args[0]=="gozec") {
			player.sendRichTextMessage(format.red(ITextComponent.fromTranslation(
					"commands.ts.connect_failed").formattedText));
		} else {
			player.sendRichTextMessage(format.red(ITextComponent.fromTranslation(
					"commands.ts.invalid_args", args[0]).formattedText));
		}
	} else {
		player.sendRichTextMessage(format.red(ITextComponent.fromTranslation(
				"commands.ts.invalid_args", "").formattedText));
	}
};
command.register();

