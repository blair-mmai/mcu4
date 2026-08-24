# One-time manual setup — run with /function virtues:npc/tag_all_skara_brae_npcs
# after placing/naming Skara Brae's NPCs (NBT_Creator/NBT_world2, during
# SkaraBrae.nbt authoring). Tags each named villager npc_<name> for
# trade-completion advancement matching and general re-identification if the
# town has to be rebuilt from scratch.

tag @e[type=minecraft:villager,name="Tyrone",limit=1] add npc_tyrone
tag @e[type=minecraft:villager,name="Sasha",limit=1] add npc_sasha
