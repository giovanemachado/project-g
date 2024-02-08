extends Node

# THIS SCRIPT IS NOT RUNNING AND SHOULD NOT RUN

# Useful to keep stuff in their place
class_name codeTricks

# This will be shared for all instances of this class, as a single value. Pretty good for counting stuff.
static var staticValue

# Get the whole tree, good!
var tree = get_tree()

# drag an drop something from the tree after = and it will get the name correctly
@onready var something = $Something

# right click on node in the tree and there is an option to this become unique
@onready var somethingUniqueInThisTree = %SomethingUniqueInThisTree

func _init():
	# Groups can be set via code or UI
	add_to_group("guards")
	
	var all_guards_in_group = tree.get_nodes_in_group("guards")
	
	# A command to all members in that group
	tree.call_group("guards", "enter_alert_mode")
