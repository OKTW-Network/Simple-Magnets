execute store result score #UTNV.item-player_inventory.itemCount Meta run clear @s minecraft:carrot_on_a_stick{itemMagnet:1,expMagnet:1,mk:1} 1

execute if score #UTNV.item-player_inventory.itemCount Meta matches 1.. run function smpmag:tool/give/magnet_uni-mk1

execute if data entity @s Inventory[{tag:{itemMagnet:1,expMagnet:1,mk:1}}] run function smpmag:update_to_new_version/v2/item-player_inventory/magnet_uni-mk1
