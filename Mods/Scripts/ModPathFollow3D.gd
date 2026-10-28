extends PathFollow3D

@onready var mod_globals: Node = %ModGlobals

@export var startProgress: float = 0;
@export var progressByFrame: float = 15;

# Called when the node enters the scene tree for the first time.
func _ready():
	print("ModTrackGlobal", mod_globals)
	progress = startProgress


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print("Intro ended:", mod_globals.intro_ended)
	if (mod_globals.intro_ended):
		progress += progressByFrame * delta
