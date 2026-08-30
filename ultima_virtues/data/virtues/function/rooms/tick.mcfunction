# virtues:rooms/tick
# Independent dispatcher for physical room mechanics (doors, plates, buttons)
# across towns — deliberately separate from the NPC/conversation and
# puzzles/fixtures tick chains. Called once per tick from the main
# tick.mcfunction via a single hook line.

# Skara Brae — haunted room / ghost encounter
function virtues:rooms/skara_ghost_arm_check
function virtues:rooms/skara_ghost_active_check
function virtues:rooms/skara_ghost_ambience
function virtues:rooms/skara_ghost_daybreak_check
function virtues:rooms/skara_room_button_check

# Trinsic — Zajac's trade scripts the door open (see zajac_l1_reveal.mcfunction);
# closing/reopening it is handled by a real vanilla pressure plate wired directly
# to the door, no script needed (unlike Skara Brae, there's no other state to
# coordinate here, so genuine redstone is simpler and more reliable than a
# scripted toggle).
