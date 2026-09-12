# virtues:npc/gimble_l5_check
# Only called from tick.mcfunction while Gimble is confirmed at VillagerData
# level 5. Grants the (real, visible) Sacrifice tab root "Nimble Gimble" to
# every player who hasn't gotten it yet -- one-shot per player via
# virtues.gimble_l5_granted, so late joiners still get it once they exist.

execute as @a[scores={virtues.gimble_l5_granted=0}] run advancement grant @s only virtues:sacrifice/nimble_gimble
execute as @a[scores={virtues.gimble_l5_granted=0}] run scoreboard players set @s virtues.gimble_l5_granted 1
