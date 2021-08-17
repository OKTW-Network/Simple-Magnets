execute store result score #debug.re-give.itemCount Meta run clear @s minecraft:carrot_on_a_stick{CustomData:{smpmag:{id:"magnet",tag:{type:3b,mark:2}}}} 1

execute if score #debug.re-give.itemCount Meta matches 1.. run function smpmag:tool/give/magnet_uni-mk2

execute if data entity @s Inventory[{tag:{CustomData:{smpmag:{id:"magnet",tag:{type:3b,mark:2}}}}}] run function smpmag:debug/re-give/magnet_uni-mk2
