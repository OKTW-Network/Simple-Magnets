execute if predicate smpmag:tool/magnet/posture-hand_main run data modify storage smpmag:temp +tool.magnet.replaceitem.item set from entity @s SelectedItem
execute if predicate smpmag:tool/magnet/posture-hand_off run data modify storage smpmag:temp +tool.magnet.replaceitem.item set from entity @s Inventory[{Slot:-106b}]

data modify storage smpmag:temp +tool.magnet.replaceitem.item.tag.CustomData.smpmag.tag.status set value 0b
execute store result score #1 calcu_temp store result score #2 calcu_temp run data get storage smpmag:temp +tool.magnet.replaceitem.item.tag.CustomModelData
scoreboard players operation #2 calcu_temp %= #100 num
execute if score #2 calcu_temp matches 10.. store result storage smpmag:temp +tool.magnet.replaceitem.item.tag.CustomModelData int 1 run scoreboard players remove #1 calcu_temp 10
data remove storage smpmag:temp +tool.magnet.replaceitem.item.tag.Enchantments[{id:"minecraft:looting",lvl:0s}]
data modify storage cu:item input set from storage smpmag:temp +tool.magnet.replaceitem.item
execute if predicate smpmag:tool/magnet/posture-hand_main run function cu:item/replaceitem/hand_main
execute if predicate smpmag:tool/magnet/posture-hand_off run function cu:item/replaceitem/hand_off
