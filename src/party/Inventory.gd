extends Reference

class_name Inventory

export (int) var MAX_COINS = 999
var coins: int = 0
var content = {}




func add(item: Item, amount: int = 1) -> void:
	if item in content:
		content[item] += amount
	else:
		content[item] = 1 if item.unique else amount


func remove(item: Item, amount: int = 1):
	assert(item in content)
	assert(amount <= content[item])

	content[item] -= amount
	if content[item] == 0:
		content.erase(item)
		EventBus.emit_signal("item_count_changed", item, 0)
	else:
		EventBus.emit_signal("item_count_changed", item, content[item])


func add_coins(amount: int) -> void:
	coins = min(coins + amount, MAX_COINS)
	EventBus.emit_signal("coins_changed", coins)


func remove_coins(amount: int) -> void:
	coins = max(0, coins - amount)
	EventBus.emit_signal("coins_changed", coins)


func get_consumables() -> Array:
	var consumable: Array
	for item in content.keys():
		if item is ConsumableItem:
			consumable.append(item)
	return consumable


func get_equipment() -> Array:
	var equipment: Array
	for item in content.keys():
		if item is Equipment:
			equipment.append(item)
	return equipment


func get_unique_items() -> Array:
	var unique: Array
	for item in content.keys():
		if item is ConsumableItem:
			unique.append(item)
	return unique
