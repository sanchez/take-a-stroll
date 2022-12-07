extends Area2D
class_name Door

func get_world_manager(node: Node) -> WorldManager:
	if node is WorldManager:
		return node
	
	var parent = node.get_parent()
	if is_instance_valid(parent):
		return get_world_manager(parent)
		
	return null


func _on_entered(area):
	var world_manager = get_world_manager(self)
	world_manager.get_next_level()
