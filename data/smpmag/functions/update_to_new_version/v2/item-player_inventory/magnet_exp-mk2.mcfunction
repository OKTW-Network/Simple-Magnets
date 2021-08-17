execute store result score #UTNV.item-player_inventory.itemCount Meta run clear @s minecraft:carrot_on_a_stick{expMagnet:1,mk:2} 1

execute if score #UTNV.item-player_inventory.itemCount Meta matches 1.. run function smpmag:tool/give/magnet_exp-mk2

execute if data entity @s Inventory[{tag:{expMagnet:1,mk:2}}] run function smpmag:update_to_new_version/v2/item-player_inventory/magnet_exp-mk2
