extends Label


func _process(_delta):
	text = ""
	add_key(KEY_CONTROL, "CONTROL")
	add_key(KEY_ALT, "ALT")
	add_key(KEY_TAB, "TAB")
	add_key(KEY_T, "T")
	
func add_key(key, name):
	if (not text.empty()):
		text += "\n"
	text += "%s is " % name
	if not Input.is_key_pressed(key):
		text += "not "
	text += "pressed"
