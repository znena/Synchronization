// TR: Sync Scripts #45 | 22/10/1
#loader crafttweaker reloadableevents

import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.entity.IEntity;
import crafttweaker.player.IPlayer;
import scripts.utils.mode as pack_mode;

val Global_Damage_Buff = 1.0 as float;
val Dimension_Damage_Debuff = {
	-5 : [0.75, 1.0, 1.0],
	0 : [1.0, 1.0, 1.5],
	-6 : [1.5, 1.25, 2.0],
	-1 : [3.0, 1.5, 3.0],
	1 : [4.0, 2.5, 5.0]
} as float[][int];
val AdvR_Dimension_Debuff = [10.0, 5.0] as float[];

events.onEntityLivingHurt(function(event as EntityLivingHurtEvent) {
	val entity as IEntity = event.entity;
	if (!(entity instanceof IPlayer)) {
		event.amount *= Global_Damage_Buff;
		if (pack_mode=="expert") {
			event.amount /= 1.5;
		}
		if (Dimension_Damage_Debuff has entity.dimension) {
			event.amount /= Dimension_Damage_Debuff[entity.dimension][0];
			if (entity.isBoss) {
				event.amount /= Dimension_Damage_Debuff[entity.dimension][1];
			}
		} else {
			event.amount = (event.amount / AdvR_Dimension_Debuff[0]) as float;
		}
		if (event.damageSource.getTrueSource() instanceof IPlayer) {
			val player as IPlayer = event.damageSource.getTrueSource();
			var damage_buff as double = (player.xp as double) * 0.04 + 0.4;
			if (damage_buff > 16 as double) {
				damage_buff = 16 as double;
			}
			event.amount *= damage_buff;
		}
	} else {
		if (pack_mode!="easy") {
			event.amount *= 1.5;
		}
		if (Dimension_Damage_Debuff has entity.dimension) {
			event.amount *= Dimension_Damage_Debuff[entity.dimension][2];
		} else {
			event.amount *= AdvR_Dimension_Debuff[1];
		}
	}
});

