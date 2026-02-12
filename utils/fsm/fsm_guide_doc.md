# FSM
Guide to use this FSM.

- Create a Node called [Object]StateManager.
- Attach a script to StateManager, extending from StateManager class. Called [ObjectName]StateManager.
- Attach a timer to the [Object]StateManager Node, named LockTimer.
- Create all states Nodes inside [Object]StateManager, each one with his own state name, like [Object][YourState]State.
- Attach a script for each Node, extending from State class. Call them [Object][YourState]State.
- Attach a [Object][YourState]State Node to the initial state field into [Object]StateManager Node.
- Optional: Make them UniqueNames so you can easily reference them later.

ps: Important to follow the names because of script names,
if there are more than 1 FSM on the game it will cause conflicts


On [Object]StateManager script you can do:
```
func _ready():
	super._ready()

```

On [Object][YourState]State you can do:
```
func _on_state_enter():
	print("On Enter this state")
```


Anywhere you can do:
```
	# import
	@onready var object_state_manager: ObjectStateManager = %ObjectStateManager
	@onready var object_tutorial_state: ObjectTutorialState = %ObjectTutorialState

	# anywhere else
	object_state_manager.transition_to_state(object_tutorial_state)
```
