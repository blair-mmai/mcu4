# One-time manual setup — run with /function virtues:npc/tag_all_jhelom_npcs
# after placing/naming Jhelom's NPCs (NBT_Creator world, during Jhelom.nbt authoring).
# Tags each named villager npc_<name> for trade-completion advancement matching
# and general re-identification if the town has to be rebuilt from scratch.

tag @e[type=minecraft:villager,name="Swen",limit=1] add npc_swen
tag @e[type=minecraft:villager,name="Hero",limit=1] add npc_hero
tag @e[type=minecraft:horse,name="Smith",limit=1] add npc_smith
