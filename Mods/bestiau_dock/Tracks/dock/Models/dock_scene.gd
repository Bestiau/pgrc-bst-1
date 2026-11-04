extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready():
	var root = getHighestParent(self)
	var main = root.get_node("Main")
	var game_root = root.get_node("Main/GameRoot")
	var track = root.get_node("Main/MainViewport/ModTrackScene/Dock")
	var context = root.get_node("Context")
	var race_events = root.get_node("RaceEvents")
	var game_content = root.get_node("Main/GameRoot/Layout_Default/GameContent")
	var startup = root.get_node("Startup")
	var settings = root.get_node("Settings")
	
	#root.print_tree_pretty()
	#print_properties(main)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func print_properties(node: Node):
	print("")
	print(node.name, " PROPS:")
	var props = node.get_property_list()

	for prop in props:
		print(prop.name, " ", type_string(prop.type), " ", node.get(prop.name))


func print_methods(node: Node):
	print("")
	print(node.name, " METHODS:")
	var methods = node.get_method_list()

	for method in methods:
		var args = method.args
		print("METHOD: ", method.name)
		print(method.default_args)
		for arg in args.filter(func(a): return a.name.length() > 0):
			print(arg.name, " ", type_string(arg.type))


func getHighestParent(node: Node):
	var parent = node.get_parent()
	if(parent != null):
		return getHighestParent(parent)
	else:
		return node
