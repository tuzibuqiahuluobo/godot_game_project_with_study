class_name State_Manager
extends Node

var states_array:Array=[]
@onready var current:Base_State = $Run


func _ready():
	states_array = get_children()
	current.enter()

func _physics_process(delta):
	current.do()

func change_state(id:int)->void:
	current.exit()
	current=states_array[id]
	current.enter()
