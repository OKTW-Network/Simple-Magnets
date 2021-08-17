execute store result score #UTNV.item-player_inventory.itemCount Meta run clear @s minecraft:carrot_on_a_stick{expMagnet:1,mk:1} 1

execute if score #UTNV.item-player_inventory.itemCount Meta matches 1.. run function smpmag:tool/give/magnet_exp-mk1

execute if data entity @s Inventory[{tag:{CustomData:{smpmag:{id:"magnet",tag:{type:2b,mark:1}}}}}] run function smpmag:debug/re-give/magnet_exp-mk1
